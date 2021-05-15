<%@page import="java.util.*,java.sql.*"%>
<%
String id= request.getParameter("id");
String mobile= request.getParameter("mobile");
String pres= request.getParameter("pres");
String vpres= request.getParameter("vpres");
String sc=request.getParameter("sc");
try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/liberty","root","sasidhar!@2002");
	Statement st= con.createStatement();
	st.executeUpdate("insert into voting values('"+id+"','"+mobile+"','"+pres+"','"+vpres+"','"+sc+"')");
	response.sendRedirect("thank.html");
}
catch(Exception e){
	if(e.getMessage().equals("Duplicate entry '"+id+"' for key 'voting.PRIMARY'")){
	out.println("Dear "+id+" You Have Already Voted");
	out.println("\n");
	out.println("You Cannot Vote Again");
	}
	else{
		out.println(e);
	}
}
%>