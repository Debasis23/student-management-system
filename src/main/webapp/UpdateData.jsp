<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
    String id = request.getParameter("id");
    String name = request.getParameter("name");
    String email = request.getParameter("email");
    String phone = request.getParameter("phone");
    String course = request.getParameter("course");


    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/student-management", "root", "root");

    PreparedStatement ps = con.prepareStatement("update student set name=?, email=?, phone=?, course=? where id=?");
    
    ps.setString(1, name);
    ps.setString(2, email);
    ps.setLong(3, Long.parseLong(phone));
    ps.setString(4, course);
    ps.setInt(5, Integer.parseInt(id));


        
    ps.executeUpdate();
	out.println("data updated successfully");

    
    RequestDispatcher rd = request.getRequestDispatcher("FetchStudentData.jsp");
    rd.forward(request, response);
%>

</body>
</html>