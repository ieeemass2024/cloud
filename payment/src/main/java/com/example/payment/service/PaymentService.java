package com.example.payment.service;

import com.example.payment.model.Payment;

import java.util.List;

public interface PaymentService {
    Payment processPayment(Payment payment);
    void updatePaymentStatus(Payment payment);
    List<Payment> getPaymentStatus(Integer orderId);
}
