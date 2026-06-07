package com.ems.controller;

import com.ems.dao.EmployeeDAO;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import jakarta.servlet.*;

import java.io.IOException;

@WebServlet("/dashboard")
public class DashboardServlet extends HttpServlet {

    protected void doGet(
            HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        EmployeeDAO dao = new EmployeeDAO();

        request.setAttribute(
                "employeeCount",
                dao.getEmployeeCount());

        request.setAttribute(
                "totalSalary",
                dao.getTotalSalary());

        request.setAttribute(
                "employeeList",
                dao.getAllEmployees());

        request.getRequestDispatcher(
                "admin-dashboard.jsp")
                .forward(
                        request,
                        response);
    }
}
