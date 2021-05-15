<%@page import="java.util.*,java.sql.*"%>
<%
String id=(String)session.getAttribute("id");

try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/liberty","root","sasidhar!@2002");
	Statement st= con.createStatement();
	ResultSet rs =st.executeQuery("select id from voting where id='"+id+"';");
	while(rs.next()){
		if(id.equals(rs.getString(1))){
			response.sendRedirect("alreadyvoted.html");
		}
		else{
			response.sendRedirect("voting.html");
		}	
	}
}
catch(Exception e){
	out.println(e.getMessage());
}
%>