package com.example.logistics.service.impl;

import com.example.logistics.mapper.LogisticsMapper;
import com.example.logistics.model.Logistics;
import com.example.logistics.service.LogisticsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class LogisticsServiceImpl implements LogisticsService {

    @Autowired
    private LogisticsMapper logisticsMapper;

    @Override
    public List<Logistics> getAllLogistics() {
        List<Logistics> logistics = logisticsMapper.getAllLogistics();
        System.out.println("Fetched logistics: " + logistics);
        for (Logistics logistic : logistics) {
            System.out.println(logistic);
        }
        return logistics;
    }

    @Override
    public Logistics getLogisticsById(int id) {
        Logistics logistics = logisticsMapper.getLogisticsById(id);
        System.out.println("Fetched logistics: " + logistics);
        return logistics;
    }

    @Override
    public List<Logistics> getLogisticsByOrderId(int orderId) {
        List<Logistics> logistics = logisticsMapper.getLogisticsByOrderId(orderId);
        System.out.println("Fetched logistics by orderId: " + logistics);
        return logistics;
    }
    
    @Override
    public Logistics createLogistics(Logistics logistics) {
        logisticsMapper.insertLogistics(logistics);
        System.out.println("Logistics created: " + logistics);
        return logistics;
    }

    @Override
    public void updateLogistics(int id, Logistics logistics) {
        logistics.setLogisticsId(id);
        logisticsMapper.updateLogistics(logistics);
        System.out.println("Logistics updated: " + logistics);
    }

    @Override
    public void deleteLogistics(int id) {
        logisticsMapper.deleteLogistics(id);
        System.out.println("Logistics deleted with id: " + id);
    }
}
