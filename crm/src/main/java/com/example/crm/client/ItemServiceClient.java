package com.example.crm.client;

import com.example.crm.dto.ItemDTO;
import com.example.crm.entity.Item;

import java.util.Map;

import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;

@FeignClient(name = "warehouse-service")
public interface ItemServiceClient {

    @PostMapping("/items")
    ResponseEntity<ItemDTO> createItem(@RequestBody ItemDTO itemDTO);
    @GetMapping("/items/order/{orderId}")
    ItemDTO getItemByOrderId(@PathVariable("orderId") Integer orderId);

    @PutMapping("/items/{id}")
    void updateItem(@PathVariable("id") Integer id, @RequestBody Map<String, Object> updates);
    // ResponseEntity<ItemDTO> createItem(@RequestBody Item item);
}
