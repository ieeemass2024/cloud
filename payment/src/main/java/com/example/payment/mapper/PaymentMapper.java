package com.example.payment.mapper;

import com.example.payment.model.Payment;
import org.apache.ibatis.annotations.*;

import java.util.List;

@Mapper
public interface PaymentMapper {
    
    @Select("SELECT * FROM Payment WHERE order_id = #{orderId}")
    List<Payment> selectPaymentsByOrderId(Integer orderId);
    
    @Insert("INSERT INTO Payment(order_id, amount, status, transaction_id) " +
            "VALUES(#{orderId}, #{amount}, #{status}, #{transactionId})")
    @Options(useGeneratedKeys = true, keyProperty = "paymentId")
    int insertPayment(Payment payment);
    
    @Update("UPDATE Payment SET status=#{status} WHERE payment_id=#{paymentId}")
    void updatePaymentStatus(Payment payment);
}
