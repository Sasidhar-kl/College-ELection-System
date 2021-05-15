<%@page import="java.util.*,java.sql.*"%>
<%
String id= request.getParameter("id");
String name= request.getParameter("name");
String mail= request.getParameter("mail");
String issue= request.getParameter("issue");




try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/liberty","root","sasidhar!@2002");
	Statement st= con.createStatement();
	st.executeUpdate("insert into contact values('"+id+"','"+name+"','"+mail+"','"+issue+"') ");
	response.sendRedirect("welcome.html");
}
catch(Exception e){
	out.println(e);
}

%>