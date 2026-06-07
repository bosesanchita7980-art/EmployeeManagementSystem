package com.ems.controller;

import com.ems.dao.EmployeeDAO;
import com.ems.model.Employee;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;

@WebServlet("/editEmployee")
public class EditEmployeeServlet extends HttpServlet {

    protected void doGet(
            HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        int id = Integer.parseInt(
                request.getParameter("id"));

        EmployeeDAO dao = new EmployeeDAO();

        Employee employee = dao.getEmployeeById(id);

        request.setAttribute(
                "employee",
                employee);

        request.getRequestDispatcher(
                "update-employee.jsp")
                .forward(
                        request,
                        response);
    }
}