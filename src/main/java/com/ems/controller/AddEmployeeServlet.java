package com.ems.controller;

import com.ems.dao.EmployeeDAO;
import com.ems.model.Employee;
import com.ems.util.EmailUtil;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;

@WebServlet("/addEmployee")
public class AddEmployeeServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        Employee employee = new Employee();

        employee.setFullName(
                request.getParameter("fullName"));

        employee.setEmail(
                request.getParameter("email"));

        employee.setDepartment(
                request.getParameter("department"));

        employee.setSalary(
                Double.parseDouble(
                        request.getParameter("salary")));

        employee.setPhone(
                request.getParameter("phone"));

        employee.setAddress(
                request.getParameter("address"));

        employee.setJoiningDate(
                request.getParameter("joiningDate"));

        EmployeeDAO dao = new EmployeeDAO();

        boolean status = dao.addEmployee(employee);
        if (status) {

            String username = employee.getEmail();

            String password = employee.getFullName()
                    .substring(0, 3)
                    .toLowerCase()

                    +

                    employee.getPhone()
                            .substring(0, 2);

            dao.createEmployeeLogin(

                    username,
                    password,
                    employee.getEmail());
        }

        if (status) {

            EmailUtil.sendEmail(

                    employee.getEmail(),

                    "Employee Registration",

                    "Hello "
                            + employee.getFullName()
                            + ",\n\nYour employee record has been created successfully.");

            response.sendRedirect(
                    "add-employee.jsp?success=Employee Added Successfully");

        } else {

            response.sendRedirect(
                    "add-employee.jsp?error=Failed To Add Employee");

        }
    }
}
