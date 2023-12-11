<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
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
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/student-management","root","root");
	Statement st = con.createStatement();
	ResultSet rs = st.executeQuery("select * from student");
%>
	<h2 align="center">Student Table</h2>

	<table cellpadding="20px" border="1" align="center">
		
		<th>Id</th>
		<th>Name</th>
		<th>Email</th>
		<th>Phone No</th>
		<th>Course</th>
		<th>Delete</th>
		<th>Update</th>
		
		<%
		while(rs.next()) { 
		%>
	
		<tr>
			<td><%= rs.getInt(1) %></td>
			<td><%= rs.getString(2) %></td>
			<td><%= rs.getString(3) %></td>
			<td><%= rs.getLong(4) %></td>
			<td><%= rs.getString(5) %></td>
			<td><a href="DeleteData.jsp?id=<%= rs.getInt(1) %>">Delete</a></td>
			<td><a href="UpdateRequest.jsp?id=<%= rs.getInt(1) %>">Update</a></td>
			
		</tr>
		
		<% } %>
	</table>


</body>
</html>