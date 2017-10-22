package com.fly.service;
import org.junit.Test;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.List;

import static org.junit.Assert.*;

public class DepartmentServiceImplTest {
    @Test
    public void getAllEntity() throws Exception {
        A<String> a = new A();
        Type type = a.getClass().getGenericSuperclass();
        Type[] arguments = ((ParameterizedType) type).getActualTypeArguments();
        System.out.println(type);
        System.out.println(arguments[0]);
    }

}

class A<T> {

}