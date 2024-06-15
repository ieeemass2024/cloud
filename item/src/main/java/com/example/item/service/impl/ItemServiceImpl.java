package com.example.item.service.impl;

import com.example.item.mapper.ItemMapper;
import com.example.item.model.Item;
import com.example.item.service.ItemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;
import java.util.List;

@Service
public class ItemServiceImpl implements ItemService {

    @Autowired
    private ItemMapper itemMapper;


    @Override
    public Item getItemById(Integer id) {
        return itemMapper.selectItemById(id);
    }

    @Override
    public List<Item> getItemsByOrderId(Integer orderId) {
        return itemMapper.selectItemsByOrderId(orderId);
    }
    
    @Override
    public List<Item> getAllItems() {
        return itemMapper.selectAllItems();
    }

    @Override
    public Item addItem(Item item) {
        item.setCreateTime(LocalDateTime.now());
        item.setUpdateTime(LocalDateTime.now());
        
        itemMapper.insertItem(item);
        return item;
    }

    @Override
    public void updateItem(Item item) {
        item.setUpdateTime(LocalDateTime.now());
        itemMapper.updateItem(item);
    }

    @Override
    public void deleteItem(Integer id) {
        itemMapper.deleteItem(id);
    }
}
