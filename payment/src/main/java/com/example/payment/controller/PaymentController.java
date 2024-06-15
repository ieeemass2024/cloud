package com.example.payment.controller;

import com.example.payment.model.Payment;
import com.example.payment.service.PaymentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.client.RestTemplate;


import java.util.List;

@RestController
@RequestMapping("/payments")
public class PaymentController {

    @Autowired
    private PaymentService paymentService;

    // @Autowired
    // private RestTemplate restTemplate;

    @PostMapping
    public ResponseEntity<Payment> processPayment(@RequestBody Payment payment) {
        Payment createdPayment = paymentService.processPayment(payment);
        return ResponseEntity.ok(createdPayment);
    }

    @PutMapping("/{paymentId}")
    public void updatePaymentStatus(@PathVariable Integer paymentId, @RequestBody Payment payment) {
        payment.setPaymentId(paymentId);
        paymentService.updatePaymentStatus(payment);
    }

    @GetMapping("/order/{orderId}")
    public List<Payment> getPaymentStatus(@PathVariable Integer orderId) {  // 修改为 Integer
        return paymentService.getPaymentStatus(orderId);
    }
    // @GetMapping("/makePayment")
    // public String makePayment() {
    //     // 调用CRM服务
    //     String crmResponse = restTemplate.getForObject("http://crm-service/processPayment", String.class);
    //     return "Payment processed: " + crmResponse;
    // }
    
    // @Bean
    // public RestTemplate restTemplate() {
    //     return new RestTemplate();
    // }
}
