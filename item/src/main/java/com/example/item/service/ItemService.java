package com.example.item.service;

import com.example.item.model.Item;

import java.util.List;

public interface ItemService {
    Item getItemById(Integer id);
    List<Item> getAllItems();
    List<Item> getItemsByOrderId(Integer orderId);
    Item addItem(Item item);
    void updateItem(Item item);
    void deleteItem(Integer id);
}
