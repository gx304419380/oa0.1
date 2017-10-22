package com.fly.service;

import com.fly.dao.BaseDao;
import com.fly.dao.DepartmentDao;
import com.fly.domain.Department;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service("departmentService")
public class DepartmentServiceImpl extends BaseServiceImpl<Department> implements DepartmentService {

    @Resource(name = "departmentDao")
    private DepartmentDao departmentDao;

    @Override
    public BaseDao<Department> getBaseDao() {
        return this.departmentDao;
    }
}
