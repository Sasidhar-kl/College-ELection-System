<%@page import="java.util.*,java.sql.*"%>
<%
String id= request.getParameter("id");
String password= request.getParameter("password");




try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/liberty","root","sasidhar!@2002");
	Statement st= con.createStatement();
	ResultSet rs =st.executeQuery("select password from admin where id='"+id+"';");
	while(rs.next()){
		if(password.equals(rs.getString(1))){
			response.sendRedirect("vote1.html");
		}
		else{
			out.println("Wrong id or Password");
		}
		
	}
	
}
catch(Exception e){
	out.println(e);
}

%>