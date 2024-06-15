package com.example.item.mapper;

import com.example.item.model.Item;
import org.apache.ibatis.annotations.*;

import java.util.List;

@Mapper
public interface ItemMapper {

    @Select("SELECT * FROM items WHERE id = #{id}")
    Item selectItemById(Integer id);

    @Select("SELECT * FROM items WHERE order_id = #{orderId}")
    List<Item> selectItemsByOrderId(Integer orderId);
    
    @Select("SELECT * FROM items")
    List<Item> selectAllItems();

    @Insert("INSERT INTO items(name, category, description, stock, price, create_time, update_time, order_id) " +
            "VALUES(#{name}, #{category}, #{description}, #{stock}, #{price}, #{createTime}, #{updateTime}, #{orderId})")
    @Options(useGeneratedKeys = true, keyProperty = "id")
    int insertItem(Item item);

    @Update("UPDATE items SET name=#{name}, category=#{category}, description=#{description}, stock=#{stock}, price=#{price}, update_time=#{updateTime}, order_id=#{orderId} WHERE id=#{id}")
    void updateItem(Item item);

    @Delete("DELETE FROM items WHERE id=#{id}")
    void deleteItem(Integer id);
}
