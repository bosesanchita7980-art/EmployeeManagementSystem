package com.ems.controller;

import com.ems.dao.EmployeeDAO;
import com.ems.model.Employee;
import com.ems.util.EmailUtil;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;

@WebServlet("/updateEmployee")
public class UpdateEmployeeServlet
        extends HttpServlet {

    protected void doPost(
            HttpServletRequest request,
            HttpServletResponse response)
            throws IOException {

        Employee employee = new Employee();

        employee.setEmployeeId(
                Integer.parseInt(
                        request.getParameter(
                                "employeeId")));

        employee.setFullName(
                request.getParameter(
                        "fullName"));

        employee.setEmail(
                request.getParameter(
                        "email"));

        employee.setDepartment(
                request.getParameter(
                        "department"));

        employee.setSalary(
                Double.parseDouble(
                        request.getParameter(
                                "salary")));

        employee.setPhone(
                request.getParameter(
                        "phone"));

        employee.setAddress(
                request.getParameter(
                        "address"));

        employee.setJoiningDate(
                request.getParameter(
                        "joiningDate"));

        EmployeeDAO dao = new EmployeeDAO();

        dao.updateEmployee(employee);

        EmailUtil.sendEmail(

                employee.getEmail(),

                "Employee Record Updated",

                "Hello "
                        + employee.getFullName()
                        + ",\n\nYour employee profile has been updated successfully.");

        response.sendRedirect(
                "viewEmployees");
    }
}