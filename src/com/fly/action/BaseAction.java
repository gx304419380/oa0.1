package com.fly.action;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;

public class BaseAction<T> extends ActionSupport implements ModelDriven<T> {
    private Class classT;
    private T t;

    public BaseAction() {
        ParameterizedType type = (ParameterizedType) this.getClass().getGenericSuperclass();
        this.classT = (Class) type.getActualTypeArguments()[0];
        try {
            this.t = (T) classT.newInstance();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    public T getModel() {
        return t;
    }
}
