package com.example.crm.client;

import com.example.crm.dto.PaymentDTO;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;

@FeignClient("payment-service")
public interface PaymentServiceClient {

    @PostMapping("/payments")
    ResponseEntity<PaymentDTO> processPayment(@RequestBody PaymentDTO paymentDTO);
    @GetMapping("/payments/order/{orderId}")
    PaymentDTO getPaymentByOrderId(@PathVariable("orderId") Integer orderId);

    @PutMapping("/payments/{paymentId}")
    void updatePayment(@PathVariable("paymentId") Integer paymentId, @RequestBody PaymentDTO paymentDTO);
}
