package com.example.payment.service.impl;

import com.example.payment.mapper.PaymentMapper;
import com.example.payment.model.Payment;
import com.example.payment.service.PaymentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PaymentServiceImpl implements PaymentService {

    @Autowired
    private PaymentMapper paymentMapper;

    @Override
    public Payment processPayment(Payment payment) {
        // 模拟支付处理
        payment.setStatus("Completed");
        paymentMapper.insertPayment(payment);
        return payment;
    }

    @Override
    public void updatePaymentStatus(Payment payment) {
        paymentMapper.updatePaymentStatus(payment);
    }

    @Override
    public List<Payment> getPaymentStatus(Integer orderId) {
        return paymentMapper.selectPaymentsByOrderId(orderId);
    }
}
