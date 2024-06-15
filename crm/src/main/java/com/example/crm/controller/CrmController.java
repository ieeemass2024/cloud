package com.example.crm.controller;

import com.example.crm.client.ItemServiceClient;
import com.example.crm.client.LogisticsServiceClient;
import com.example.crm.client.PaymentServiceClient;
import com.example.crm.entity.Order;
import com.example.crm.exception.OrderNotFoundException;
import com.example.crm.repository.OrderRepository;


import io.github.resilience4j.circuitbreaker.annotation.CircuitBreaker;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;


import java.io.IOException;
import java.time.LocalDateTime;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import org.springframework.transaction.annotation.Transactional;

@RestController
@RequestMapping("/crm")
public class CrmController {

    private static final Logger logger = LoggerFactory.getLogger(CrmController.class);

    @Autowired
    private ItemServiceClient itemServiceClient;

    @Autowired
    private LogisticsServiceClient logisticsServiceClient;

    @Autowired
    private PaymentServiceClient paymentServiceClient;

    @Autowired
    private OrderRepository orderRepository;

    @PostMapping("/order")
    @CircuitBreaker(name = "paymentService", fallbackMethod = "handlePaymentServiceFallback")
    public ResponseEntity<String> createOrder(@RequestBody Order order) {
        logger.info("Creating order");
        try {
            // 先保存订单到数据库，确保订单ID被生成
      // // 添加订单时，先设置一遍createTime和updateTime,如果是更新订单，则只需要设置updateTime
      if (order.getItems() == null || order.getLogistics() == null || order.getPayment() == null) {
        throw new IllegalArgumentException("Order items, logistics, or payment cannot be null");
      }
      // 设置创建时间和更新时间
      LocalDateTime now = LocalDateTime.now();
      order.getItems().setCreateTime(now);
      order.getItems().setUpdateTime(now);

      Order savedOrder = orderRepository.save(order);
      savedOrder.getItems().setOrderId(order.getId());
      savedOrder.getLogistics().setOrderId(order.getId());
      savedOrder.getPayment().setOrderId(order.getId());

      Order updatedOrder = orderRepository.save(savedOrder);

      return ResponseEntity.ok("Order placed successfully");
        } catch (Exception e) {
            logger.error("Failed to create order: ", e);
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("Error placing order");
        }
    }

    private ResponseEntity<String> handlePaymentServiceFallback(Order order, Throwable t) {
        return ResponseEntity.status(HttpStatus.SERVICE_UNAVAILABLE).body("Failed to process payment: " + t.getMessage());
    }

    @GetMapping("/order/{id}")
    public ResponseEntity<Order> getOrderById(@PathVariable Integer id) {
        logger.info("Retrieving order with ID: {}", id);
        Order order = orderRepository.findById(id).orElseThrow(() -> new OrderNotFoundException(id));
        logger.info("Order retrieved: {}", order);
        return ResponseEntity.ok(order);
    }

    @PutMapping("/order/{id}/status")
    public ResponseEntity<String> updateOrderStatus(@PathVariable Integer id, @RequestBody String status) {
        logger.info("Updating order status for ID: {}", id);
        Order order = orderRepository.findById(id).orElseThrow(() -> new OrderNotFoundException(id));
        order.setStatus(status);
        orderRepository.save(order);
        logger.info("Order status updated to {}", status);
        return ResponseEntity.ok("Order status updated successfully");
    }

    @PutMapping("/order/{orderId}/item")
    @CircuitBreaker(name = "itemService", fallbackMethod = "handleItemServiceFallback")
    public ResponseEntity<String> updateItemFields(@PathVariable Integer orderId, @RequestBody Map<String, Object> updates) throws IOException {
        logger.info("Updating item fields for order ID: {}", orderId);

        // Simulate an IOException based on a specific condition
        if (updates.containsKey("triggerException") && updates.get("triggerException").equals(true)) {
            logger.error("Simulated IOException for testing purposes");
            throw new IOException("Simulated IOException for testing purposes");
        }

        try {
            Order order = orderRepository.findById(orderId).orElseThrow(() -> new OrderNotFoundException(orderId));
            Integer itemId = order.getItems().getId();
            itemServiceClient.updateItem(itemId, updates);
            logger.info("Item fields updated successfully for item ID: {}", itemId);
            return ResponseEntity.ok("Item fields updated successfully");
        } catch (Exception e) {
            logger.error("Error updating item fields: ", e);
            throw new RuntimeException("Error while updating item fields", e);  // Wrap and rethrow as runtime exception if needed
        }
    }


    private ResponseEntity<String> handleItemServiceFallback(Integer orderId, Map<String, Object> updates, Throwable t) {
        logger.error("Item service is unavailable, fallback triggered", t);
        return ResponseEntity.status(HttpStatus.SERVICE_UNAVAILABLE).body("Item service is temporarily unavailable. Please try again later.");
    }

}