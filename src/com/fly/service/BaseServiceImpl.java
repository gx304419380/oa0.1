package com.fly.service;

import com.fly.dao.BaseDao;
import org.springframework.transaction.annotation.Transactional;

import java.io.Serializable;
import java.util.List;
import java.util.Set;

public abstract class BaseServiceImpl<T> implements BaseService<T> {

    public abstract BaseDao<T> getBaseDao();

    @Override
    public List<T> getAllEntity() {
        return getBaseDao().getAllEntity();
    }

    @Override
    public T getEntityById(Serializable id) {
        return getBaseDao().getEntityById(id);
    }

    @Override
    @Transactional
    public void updateEntity(T t) {
        getBaseDao().updateEntity(t);
    }

    @Override
    @Transactional
    public void deleteEntity(Serializable id) {
        getBaseDao().deleteEntity(id);
    }

    @Override
    @Transactional
    public void saveEntity(T t) {
        getBaseDao().saveEntity(t);
    }

    @Override
    public Set<T> getEntityByIds(Serializable[] serializables) {
        return getBaseDao().getEntityByIds(serializables);
    }
}
