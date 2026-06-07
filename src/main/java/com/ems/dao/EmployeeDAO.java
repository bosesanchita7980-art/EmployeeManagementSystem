package com.ems.dao;

import com.ems.model.Employee;
import com.ems.util.DBConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import java.util.ArrayList;
import java.util.List;

public class EmployeeDAO {

    public boolean addEmployee(Employee employee) {

        boolean status = false;

        try {

            Connection con = DBConnection.getConnection();

            String sql = "INSERT INTO employees(full_name,email,department,salary,phone,address,joining_date) VALUES(?,?,?,?,?,?,?)";

            PreparedStatement ps = con.prepareStatement(sql);

            ps.setString(1, employee.getFullName());
            ps.setString(2, employee.getEmail());
            ps.setString(3, employee.getDepartment());
            ps.setDouble(4, employee.getSalary());
            ps.setString(5, employee.getPhone());
            ps.setString(6, employee.getAddress());
            ps.setString(7, employee.getJoiningDate());

            int row = ps.executeUpdate();

            if (row > 0) {

                status = true;

            }

        } catch (Exception e) {

            e.printStackTrace();

        }

        return status;
    }

    public List<Employee> getAllEmployees() {

        List<Employee> employeeList = new ArrayList<>();

        try {

            Connection con = DBConnection.getConnection();

            String sql = "SELECT * FROM employees";

            PreparedStatement ps = con.prepareStatement(sql);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {

                Employee employee = new Employee();

                employee.setEmployeeId(
                        rs.getInt("employee_id"));

                employee.setFullName(
                        rs.getString("full_name"));

                employee.setEmail(
                        rs.getString("email"));

                employee.setDepartment(
                        rs.getString("department"));

                employee.setSalary(
                        rs.getDouble("salary"));

                employee.setPhone(
                        rs.getString("phone"));

                employee.setAddress(
                        rs.getString("address"));

                employee.setJoiningDate(
                        rs.getString("joining_date"));

                employeeList.add(employee);
            }

        } catch (Exception e) {

            e.printStackTrace();
        }

        return employeeList;
    }

    public Employee getEmployeeById(int id) {

        Employee employee = null;

        try {

            Connection con = DBConnection.getConnection();

            String sql = "SELECT * FROM employees WHERE employee_id=?";

            PreparedStatement ps = con.prepareStatement(sql);

            ps.setInt(1, id);

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {

                employee = new Employee();

                employee.setEmployeeId(
                        rs.getInt("employee_id"));

                employee.setFullName(
                        rs.getString("full_name"));

                employee.setEmail(
                        rs.getString("email"));

                employee.setDepartment(
                        rs.getString("department"));

                employee.setSalary(
                        rs.getDouble("salary"));

                employee.setPhone(
                        rs.getString("phone"));

                employee.setAddress(
                        rs.getString("address"));

                employee.setJoiningDate(
                        rs.getString("joining_date"));
            }

        } catch (Exception e) {

            e.printStackTrace();
        }

        return employee;
    }

    public boolean updateEmployee(Employee employee) {

        boolean status = false;

        try {

            Connection con = DBConnection.getConnection();

            String sql = "UPDATE employees SET full_name=?,email=?,department=?,salary=?,phone=?,address=?,joining_date=? WHERE employee_id=?";

            PreparedStatement ps = con.prepareStatement(sql);

            ps.setString(1, employee.getFullName());
            ps.setString(2, employee.getEmail());
            ps.setString(3, employee.getDepartment());
            ps.setDouble(4, employee.getSalary());
            ps.setString(5, employee.getPhone());
            ps.setString(6, employee.getAddress());
            ps.setString(7, employee.getJoiningDate());

            ps.setInt(8,
                    employee.getEmployeeId());

            int row = ps.executeUpdate();

            status = row > 0;

        } catch (Exception e) {

            e.printStackTrace();
        }

        return status;
    }

    public boolean deleteEmployee(int id) {

        boolean status = false;

        try {

            Connection con = DBConnection.getConnection();

            String sql = "DELETE FROM employees WHERE employee_id=?";

            PreparedStatement ps = con.prepareStatement(sql);

            ps.setInt(1, id);

            int row = ps.executeUpdate();

            status = row > 0;

        } catch (Exception e) {

            e.printStackTrace();
        }

        return status;
    }

    public int getEmployeeCount() {

        int count = 0;

        try {

            Connection con = DBConnection.getConnection();

            PreparedStatement ps = con.prepareStatement(
                    "SELECT COUNT(*) FROM employees");

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {

                count = rs.getInt(1);

            }

        } catch (Exception e) {

            e.printStackTrace();
        }

        return count;
    }

    public double getTotalSalary() {

        double total = 0;

        try {

            Connection con = DBConnection.getConnection();

            PreparedStatement ps = con.prepareStatement(
                    "SELECT SUM(salary) FROM employees");

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {

                total = rs.getDouble(1);

            }

        } catch (Exception e) {

            e.printStackTrace();
        }

        return total;
    }

    public List<Employee> getEmployeesByPage(
            int start,
            int total) {

        List<Employee> list = new ArrayList<>();

        try {

            Connection con = DBConnection.getConnection();

            String sql = "SELECT * FROM employees LIMIT ?,?";

            PreparedStatement ps = con.prepareStatement(sql);

            ps.setInt(1, start);
            ps.setInt(2, total);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {

                Employee emp = new Employee();

                emp.setEmployeeId(
                        rs.getInt("employee_id"));

                emp.setFullName(
                        rs.getString("full_name"));

                emp.setEmail(
                        rs.getString("email"));

                emp.setDepartment(
                        rs.getString("department"));

                emp.setSalary(
                        rs.getDouble("salary"));

                list.add(emp);
            }

        } catch (Exception e) {

            e.printStackTrace();

        }

        return list;
    }

    public List<Employee> getEmployeesSorted(
            String column,
            String order) {

        List<Employee> list = new ArrayList<>();

        try {

            Connection con = DBConnection.getConnection();

            String sql = "SELECT * FROM employees ORDER BY "
                    + column
                    + " "
                    + order;

            PreparedStatement ps = con.prepareStatement(sql);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {

                Employee emp = new Employee();

                emp.setEmployeeId(
                        rs.getInt("employee_id"));

                emp.setFullName(
                        rs.getString("full_name"));

                emp.setEmail(
                        rs.getString("email"));

                emp.setDepartment(
                        rs.getString("department"));

                emp.setSalary(
                        rs.getDouble("salary"));

                list.add(emp);
            }

        } catch (Exception e) {

            e.printStackTrace();
        }

        return list;
    }

    public int getTotalEmployeeRecords() {

        int count = 0;

        try {

            Connection con = DBConnection.getConnection();

            String sql = "SELECT COUNT(*) FROM employees";

            PreparedStatement ps = con.prepareStatement(sql);

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {

                count = rs.getInt(1);

            }

        } catch (Exception e) {

            e.printStackTrace();

        }

        return count;
    }

    public Employee getEmployeeByEmail(
            String email) {

        Employee emp = null;

        try {

            Connection con = DBConnection.getConnection();

            String sql = "SELECT * FROM employees WHERE email=?";

            PreparedStatement ps = con.prepareStatement(sql);

            ps.setString(1, email);

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {

                emp = new Employee();

                emp.setEmployeeId(
                        rs.getInt("employee_id"));

                emp.setFullName(
                        rs.getString("full_name"));

                emp.setEmail(
                        rs.getString("email"));

                emp.setDepartment(
                        rs.getString("department"));

                emp.setSalary(
                        rs.getDouble("salary"));

                emp.setPhone(
                        rs.getString("phone"));

                emp.setAddress(
                        rs.getString("address"));

                emp.setJoiningDate(
                        rs.getString("joining_date"));
            }

        } catch (Exception e) {

            e.printStackTrace();
        }

        return emp;
    }

    public void createEmployeeLogin(

            String username,
            String password,
            String email) {

        try {

            Connection con = DBConnection.getConnection();

            String sql =

                    "INSERT INTO users(username,password,role,employee_email) VALUES(?,?,?,?)";

            PreparedStatement ps =

                    con.prepareStatement(sql);

            ps.setString(1, username);

            ps.setString(2, password);

            ps.setString(3, "EMPLOYEE");

            ps.setString(4, email);

            ps.executeUpdate();

        } catch (Exception e) {

            e.printStackTrace();
        }
    }

}
