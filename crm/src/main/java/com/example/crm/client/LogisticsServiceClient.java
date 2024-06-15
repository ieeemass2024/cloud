package com.example.crm.client;

import com.example.crm.dto.LogisticsDTO;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;

@FeignClient("logistics-service")
public interface LogisticsServiceClient {

    @PostMapping("/logistics")
    ResponseEntity<LogisticsDTO> arrangeLogistics(@RequestBody LogisticsDTO logisticsDTO);
    @GetMapping("/logistics/order/{orderId}")
    LogisticsDTO getLogisticsByOrderId(@PathVariable("orderId") Integer orderId);

    @PutMapping("/logistics/{id}")
    void updateLogistics(@PathVariable("id") Integer id, @RequestBody LogisticsDTO logisticsDTO);
}
