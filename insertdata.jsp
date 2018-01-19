<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Index</title>
</head>
<body>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%
String name=request.getParameter("yourname").trim();
String email_id=request.getParameter("email").trim(); 
String hear=request.getParameter("hear").trim(); 
String comments=request.getParameter("customerFeedback").trim(); 

Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/authentic_indian_restaurant","root","password"); 
Statement st= con.createStatement(); 
ResultSet rs; 
String queryText = "insert into feedback (name,email_id,hear,comments) values ('"+name+"','"+email_id+"','"+hear+"','"+ comments+"')";
 int i=st.executeUpdate(queryText);

out.println("Registered id is "+i); 


%>
</body>
</html>