package com.ems.controller;

import com.ems.dao.EmployeeDAO;
import com.ems.model.Employee;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;

@WebServlet("/employeeDashboard")
public class EmployeeDashboardServlet
        extends HttpServlet {

    protected void doGet(
            HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException,
            IOException {

        HttpSession session = request.getSession(false);

        if (session == null) {

            response.sendRedirect(
                    "login.jsp");

            return;
        }

        String email = (String) session.getAttribute(
                "employeeEmail");

        EmployeeDAO dao = new EmployeeDAO();

        Employee emp = dao.getEmployeeByEmail(
                email);

        request.setAttribute(
                "employee",
                emp);

        request.getRequestDispatcher(
                "employee-dashboard.jsp")
                .forward(
                        request,
                        response);
    }
}
