package com.example.logistics.service;
 
import java.util.List;

import com.example.logistics.model.Logistics;

public interface LogisticsService {
    List<Logistics> getAllLogistics();
    Logistics getLogisticsById(int id);
    List<Logistics> getLogisticsByOrderId(int orderId);  // 新增方法
    Logistics createLogistics(Logistics logistics);
    void updateLogistics(int id, Logistics logistics);
    void deleteLogistics(int id);
}