<%@page import="java.util.*,java.sql.*"%>
<%
String id= request.getParameter("id");
String name= request.getParameter("name");
String year= request.getParameter("year");
String mobile= request.getParameter("mobile");
String email =request.getParameter("email");
String role=request.getParameter("role");




try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/liberty","root","sasidhar!@2002");
	Statement st= con.createStatement();
	st.executeUpdate("insert into addcand values('"+id+"','"+name+"','"+year+"','"+mobile+"','"+email+"','"+role+"') ");
	//out.println("Candidate Added")
	response.sendRedirect("adminviewcand.jsp");
}
catch(Exception e){
	out.println(e);
}
%>