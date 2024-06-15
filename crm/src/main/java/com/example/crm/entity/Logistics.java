package com.example.crm.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

import java.util.Date;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
@Entity
@JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
public class Logistics {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int logisticsId;
    private int orderId;
    private Date shippingDate;
    private Date deliveryDate;
    private String shippingAddress;
    private String deliveryStatus;
    private String carrier;

    // Getters and Setters

    public int getLogisticsId() {
        return logisticsId;
    }

    public void setLogisticsId(int logisticsId) {
        this.logisticsId = logisticsId;
    }

    public int getOrderId() {
        return orderId;
    }

    public void setOrderId(int orderId) {
        this.orderId = orderId;
    }

    public Date getShippingDate() {
        return shippingDate;
    }

    public void setShippingDate(Date shippingDate) {
        this.shippingDate = shippingDate;
    }

    public Date getDeliveryDate() {
        return deliveryDate;
    }

    public void setDeliveryDate(Date deliveryDate) {
        this.deliveryDate = deliveryDate;
    }

    public String getShippingAddress() {
        return shippingAddress;
    }

    public void setShippingAddress(String shippingAddress) {
        this.shippingAddress = shippingAddress;
    }

    public String getDeliveryStatus() {
        return deliveryStatus;
    }

    public void setDeliveryStatus(String deliveryStatus) {
        this.deliveryStatus = deliveryStatus;
    }

    public String getCarrier() {
        return carrier;
    }

    public void setCarrier(String carrier) {
        this.carrier = carrier;
    }

    @Override
    public String toString() {
        return "Logistics{" +
                "logisticsId=" + logisticsId +
                ", orderId=" + orderId +
                ", shippingDate=" + shippingDate +
                ", deliveryDate=" + deliveryDate +
                ", shippingAddress='" + shippingAddress + '\'' +
                ", deliveryStatus='" + deliveryStatus + '\'' +
                ", carrier='" + carrier + '\'' +
                '}';
    }


}
