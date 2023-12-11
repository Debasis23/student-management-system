<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
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
	String id=request.getParameter("id");
	String name=request.getParameter("name");
	String email=request.getParameter("email");
	String phone=request.getParameter("phone");
	String course=request.getParameter("course");

	
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/student-management","root","root");
	
	PreparedStatement ps= con.prepareStatement("insert into student(id, name, email, phone, course) values(?,?,?,?,?)");
	ps.setInt(1, Integer.parseInt(id));
	ps.setString(2, name);
	ps.setString(3, email);
	ps.setLong(4, Long.parseLong(phone));
	ps.setString(5, course);

	ps.execute();
	out.println("data saved successfully");

%>

</body>
</html>