package com.ems.controller;

import com.ems.dao.EmployeeDAO;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet("/viewEmployees")
public class ViewEmployeesServlet
        extends HttpServlet {

    protected void doGet(
            HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException,
            IOException {

        int page = 1;

        int recordsPerPage = 5;

        if (request.getParameter("page") != null) {

            page = Integer.parseInt(
                    request.getParameter(
                            "page"));
        }

        EmployeeDAO dao = new EmployeeDAO();

        String sort = request.getParameter(
                "sort");
        String order = request.getParameter(
                "order");

        if (sort != null) {

            request.setAttribute(
                    "employeeList",

                    dao.getEmployeesSorted(
                            sort,
                            order == null
                                    ? "ASC"
                                    : order));

        } else {

            request.setAttribute(
                    "employeeList",

                    dao.getEmployeesByPage(

                            (page - 1)
                                    * recordsPerPage,

                            recordsPerPage));

        }
        request.setAttribute(
                "currentPage",
                page);
        int totalRecords = dao.getTotalEmployeeRecords();

        int totalPages = (int) Math.ceil(
                (double) totalRecords
                        / recordsPerPage);

        request.setAttribute(
                "totalPages",
                totalPages);

        request.getRequestDispatcher(
                "view-employees.jsp")
                .forward(
                        request,
                        response);
    }
}