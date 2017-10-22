package com.fly.action;

import com.fly.domain.Department;
import com.fly.service.DepartmentService;
import com.opensymphony.xwork2.ActionContext;
import org.apache.commons.beanutils.BeanUtils;
import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.lang.reflect.InvocationTargetException;
import java.util.List;

@Controller("departmentAction")
@Scope("prototype")
public class DepartmentAction extends BaseAction<Department> {
    @Resource(name = "departmentService")
    private DepartmentService departmentService;

    /**
     * 修改
     */
    public String updateDepartment() throws InvocationTargetException, IllegalAccessException, IOException {
        Department department = new Department();
        BeanUtils.copyProperties(department, getModel());
        departmentService.updateEntity(department);

        HttpServletResponse response = ServletActionContext.getResponse();
        response.setContentType("text/html; charset=utf-8");
        PrintWriter pw = response.getWriter();
        pw.write( "success" );
        pw.flush();
        pw.close();

        return null;
    }


    /**
     * update UI
     * @return
     */
    public String updateDepartmentUI() {

        Department department = departmentService.getEntityById(getModel().getDid());
        ActionContext.getContext().put("department", department);

        return "updateUI";
    }

    public String deleteDepartment() {
        departmentService.deleteEntity(getModel().getDid());
        return "deleteSuccess";
    }

    public String showAllDepartment() {
        List<Department> departments = this.departmentService.getAllEntity();
        ActionContext.getContext().put("departments", departments);

        return "listAction";
    }

    public String addDepartmentUI() {
        return "addUI";
    }

    public String addDepartment() throws IOException, InvocationTargetException, IllegalAccessException {
        System.out.println("add department!");
        HttpServletResponse response = ServletActionContext.getResponse();
        response.setContentType("text/html; charset=utf-8");
        PrintWriter pw = response.getWriter();

        Department department = new Department();
        BeanUtils.copyProperties(department, getModel());
        departmentService.saveEntity(department);

        pw.write( "success" );
        pw.flush();
        pw.close();
        return null;
    }
}
