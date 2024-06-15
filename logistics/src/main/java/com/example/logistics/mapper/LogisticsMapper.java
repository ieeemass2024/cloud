package com.example.logistics.mapper;

import com.example.logistics.model.Logistics;
import org.apache.ibatis.annotations.*;

import java.util.List;

public interface LogisticsMapper {

    @Select("SELECT * FROM logistics")
    List<Logistics> getAllLogistics();

    @Select("SELECT * FROM logistics WHERE logistics_id = #{id}")
    Logistics getLogisticsById(int id);

    @Select("SELECT * FROM logistics WHERE order_id = #{orderId}")
    List<Logistics> getLogisticsByOrderId(int orderId);


    @Insert("INSERT INTO logistics (order_id, shipping_date, delivery_date, shipping_address, delivery_status, carrier) VALUES (#{orderId}, #{shippingDate}, #{deliveryDate}, #{shippingAddress}, #{deliveryStatus}, #{carrier})")
    @Options(useGeneratedKeys = true, keyProperty = "logisticsId")
    int insertLogistics(Logistics logistics);

    @Update("UPDATE logistics SET order_id=#{orderId}, shipping_date=#{shippingDate}, delivery_date=#{deliveryDate}, shipping_address=#{shippingAddress}, delivery_status=#{deliveryStatus}, carrier=#{carrier} WHERE logistics_id=#{logisticsId}")
    void updateLogistics(Logistics logistics);

    @Delete("DELETE FROM logistics WHERE logistics_id = #{id}")
    void deleteLogistics(int id);
}
