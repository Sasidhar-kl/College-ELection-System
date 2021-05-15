<%@page import="java.util.*,java.sql.*"%>
<%
String id= request.getParameter("id");
String mail= request.getParameter("mail");
String year= request.getParameter("year");
String password= request.getParameter("password");




try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/liberty","root","sasidhar!@2002");
	Statement st= con.createStatement();
	st.executeUpdate("insert into register(id,mail,year,password) values('"+id+"','"+mail+"','"+year+"','"+password+"') ");
	
	response.sendRedirect("login.html");
}
catch(Exception e){
	out.println(e);
}

%>