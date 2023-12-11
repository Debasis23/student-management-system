<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>Student Registration Form</h2>

<pre>
<form action="SaveStudentData.jsp" method="post">
 Enter Id       : <input type="number" name="id" required>
		
 Enter Name     : <input type="text" name="name" required>
		
 Enter Email    : <input type="email" name="email" required>
		
 Enter Phone no : <input type="number" name="phone" required>
		
 Select Course : 
 <input type="radio" name="course" value="java" required>Java
 <input type="radio" name="course" value="python" required>Python
 <input type="radio" name="course" value="c++" required>C++
		
 <input type="submit">
</form>
</pre>
</body>
</html>