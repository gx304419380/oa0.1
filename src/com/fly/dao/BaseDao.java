package com.fly.dao;

import org.springframework.stereotype.Repository;

import java.io.Serializable;
import java.util.List;
import java.util.Set;

public interface BaseDao<T> {
    /**
     * 获取所有对象
     * @return
     */
    public List<T> getAllEntity();

    /**
     * 通过id获取对象
     * @param id
     * @return
     */
    public T getEntityById(Serializable id);

    /**
     * 更新对象
     * @param t
     */
    public void updateEntity(T t);

    /**
     * 删除对象
     * @param id
     */
    public void deleteEntity(Serializable id);

    /**
     * 保存对象
     * @param t
     */
    public void saveEntity(T t);

    /**
     * 获取对象集合
     * @param serializables
     */
    public Set<T> getEntityByIds(Serializable[] serializables);
}
