package com.example.item.controller;

import com.example.item.model.Item;
import com.example.item.service.ItemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/items")
public class ItemController {

    @Autowired
    private ItemService itemService;

    @GetMapping("/{id}")
    public Item getItemById(@PathVariable Integer id) {
        return itemService.getItemById(id);
    }

    @GetMapping("/order/{orderId}")
    public List<Item> getItemsByOrderId(@PathVariable Integer orderId) {
        return itemService.getItemsByOrderId(orderId);
    }

    @GetMapping
    public List<Item> getAllItems() {
        return itemService.getAllItems();
    }

    @PostMapping
    public ResponseEntity<Item> addItem(@RequestBody Item item) {
        Item createdItem = itemService.addItem(item);
        return ResponseEntity.ok(createdItem);
    }

    // @PutMapping("/{id}")
    // public void updateItem(@PathVariable Integer id, @RequestBody Item item) {
    // item.setId(id);
    // itemService.updateItem(item);
    // }

    @PutMapping("/{id}")
    public ResponseEntity<String> updateItem(@PathVariable Integer id, @RequestBody Map<String, Object> updates) {
        Item item = itemService.getItemById(id);
        if (item == null) {
            return ResponseEntity.status(HttpStatus.NOT_FOUND).body("Item not found");
        }

        if (updates.containsKey("name")) {
            item.setName((String) updates.get("name"));
        }
        if (updates.containsKey("category")) {
            item.setCategory((String) updates.get("category"));
        }
        if (updates.containsKey("description")) {
            item.setDescription((String) updates.get("description"));
        }
        if (updates.containsKey("stock")) {
            item.setStock((Integer) updates.get("stock"));
        }
        if (updates.containsKey("price")) {
            Object price = updates.get("price");
            if (price instanceof Double) {
                item.setPrice(BigDecimal.valueOf((Double) price));
            } else if (price instanceof BigDecimal) {
                item.setPrice((BigDecimal) price);
            } else if (price instanceof String) {
                item.setPrice(new BigDecimal((String) price));
            }
        }
        if (updates.containsKey("createTime")) {
            item.setCreateTime(LocalDateTime.parse((String) updates.get("createTime")));
        }
        if (updates.containsKey("updateTime")) {
            item.setUpdateTime(LocalDateTime.parse((String) updates.get("updateTime")));
        }
        if (updates.containsKey("orderId")) {
            item.setOrderId((Integer) updates.get("orderId"));
        }

        itemService.updateItem(item);
        return ResponseEntity.ok("Item updated successfully");
    }

    @DeleteMapping("/{id}")
    public void deleteItem(@PathVariable Integer id) {
        itemService.deleteItem(id);
    }
}
