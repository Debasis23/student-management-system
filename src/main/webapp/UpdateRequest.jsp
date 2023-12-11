<%@page import="java.sql.ResultSet"%>
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
    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/student-management", "root", "root");
    PreparedStatement ps = con.prepareStatement("SELECT * FROM student WHERE id = ?");
   
    ps.setInt(1, Integer.parseInt(id));
    ResultSet rs = ps.executeQuery();

    rs.next();
%>
	<pre>
    <form action="UpdateData.jsp" method="post">
    
        <input type="hidden" name="id" value="<%= rs.getInt("id") %>">      
        Enter Name     : <input type="text" name="name" value="<%= rs.getString("name") %>"><br>
        Enter Email    : <input type="text" name="email" value="<%= rs.getString("email") %>"><br>
        Enter Phone No : <input type="number" name="phone" value="<%= rs.getLong("phone") %>"><br>
        Select Course : 
 		<input type="radio" name="course" value="<%= rs.getString("course") %>" required>Java
 		<input type="radio" name="course" value="<%= rs.getString("course") %>" required>Python
 		<input type="radio" name="course" value="<%= rs.getString("course") %>" required>C++
        <input type="submit" value="Update">
        
    </form>
    </pre>

</body>
</html>