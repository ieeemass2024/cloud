package com.example.logistics.controller;

import com.example.logistics.model.Logistics;
import com.example.logistics.service.LogisticsService;

import org.hibernate.cache.spi.support.AbstractReadWriteAccess.Item;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/logistics")
public class LogisticsController {

    @Autowired
    private LogisticsService logisticsService;

    @GetMapping
    public List<Logistics> getAllLogistics() {
        System.out.println("Fetching all logistics entries");
        List<Logistics> logisticsList = logisticsService.getAllLogistics();
        System.out.println("Fetched logistics entries: " + logisticsList);
        return logisticsList;
    }

    @GetMapping("/{id}")
    public Logistics getLogisticsById(@PathVariable int id) {
        System.out.println("Fetching logistics entry with ID: " + id);
        Logistics logistics = logisticsService.getLogisticsById(id);
        System.out.println("Fetched logistics entry: " + logistics);
        return logistics;
    }

    @GetMapping("/order/{orderId}")
    public List<Logistics> getLogisticsByOrderId(@PathVariable int orderId) {
        System.out.println("Fetching logistics entries with Order ID: " + orderId);
        List<Logistics> logisticsList = logisticsService.getLogisticsByOrderId(orderId);
        System.out.println("Fetched logistics entries: " + logisticsList);
        return logisticsList;
    }


    @PostMapping
    public ResponseEntity<Logistics> createLogistics(@RequestBody Logistics logistics) {
        System.out.println("Creating new logistics entry: " + logistics);
        Logistics createdLogistics = logisticsService.createLogistics(logistics);
        System.out.println("Logistics entry created: " + logistics);
        return ResponseEntity.ok(createdLogistics);
    }

    @PutMapping("/{id}")
    public void updateLogistics(@PathVariable int id, @RequestBody Logistics logistics) {
        System.out.println("Updating logistics entry with ID: " + id);
        logisticsService.updateLogistics(id, logistics);
        System.out.println("Logistics entry updated: " + logistics);
    }

    @DeleteMapping("/{id}")
    public void deleteLogistics(@PathVariable int id) {
        System.out.println("Deleting logistics entry with ID: " + id);
        logisticsService.deleteLogistics(id);
        System.out.println("Logistics entry deleted with ID: " + id);
    }
}
