package com.ems.controller;

import com.ems.dao.EmployeeDAO;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;

@WebServlet("/deleteEmployee")
public class DeleteEmployeeServlet
        extends HttpServlet {

    protected void doGet(
            HttpServletRequest request,
            HttpServletResponse response)
            throws IOException {

        int id = Integer.parseInt(
                request.getParameter(
                        "id"));

        EmployeeDAO dao = new EmployeeDAO();

        dao.deleteEmployee(id);

        response.sendRedirect(
                "viewEmployees");
    }
}