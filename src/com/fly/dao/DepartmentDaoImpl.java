package com.fly.dao;

import com.fly.domain.Department;
import org.springframework.stereotype.Repository;

@Repository("departmentDao")
public class DepartmentDaoImpl extends BaseDaoImpl<Department> implements DepartmentDao {

}
