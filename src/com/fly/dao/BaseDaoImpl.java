package com.fly.dao;

import org.hibernate.metadata.ClassMetadata;
import org.springframework.orm.hibernate5.HibernateTemplate;

import javax.annotation.PostConstruct;
import javax.annotation.Resource;
import java.io.Serializable;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Collection;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class BaseDaoImpl<T> implements BaseDao<T> {

    @Resource(name = "hibernateTemplate")
    private HibernateTemplate hibernateTemplate;

    private Class classT;
    private ClassMetadata metadata;

    public BaseDaoImpl() {
        ParameterizedType type = (ParameterizedType)this.getClass().getGenericSuperclass();
        Type[] typeArguments = type.getActualTypeArguments();
        this.classT = (Class) typeArguments[0];
    }

    @PostConstruct
    public void init() {
        /**
         * 获取泛型参数元数据对象
         */
        this.metadata = this.hibernateTemplate
                .getSessionFactory().getClassMetadata(this.classT);
    }

    @Override
    public List<T> getAllEntity() {
        return (List<T>) this.hibernateTemplate.find("from " + classT.getName());
    }

    @Override
    public T getEntityById(Serializable id) {
        return (T) this.hibernateTemplate.get(this.classT, id);
    }

    @Override
    public void updateEntity(T t) {
        this.hibernateTemplate.update(t);
    }

    @Override
    public void deleteEntity(Serializable id) {
        T t = this.getEntityById(id);
        this.hibernateTemplate.delete(t);
    }

    @Override
    public void saveEntity(T t) {
        this.hibernateTemplate.save(t);
    }

    @Override
    public Set<T> getEntityByIds(Serializable[] serializables) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < serializables.length; i++) {
            if (i == serializables.length - 1) {
                sb.append(serializables[i]);
            } else {
                sb.append(serializables[i] + ",");
            }
        }
        return new HashSet(this.hibernateTemplate.find("from "
                + this.classT.getName()
                + " where "
                + this.metadata.getIdentifierPropertyName()
                + " in ("
                + sb
                + ")")) ;
    }


}
