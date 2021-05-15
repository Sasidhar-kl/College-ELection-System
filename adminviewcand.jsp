   <%@ page import ="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<header>
    <div class="wrapper">
    <div class="topnav">
    &nbsp;&nbsp;&nbsp;
    <img src="https://img.collegedekhocdn.com/media/img/institute/logo/KL_Logo_Final_New-pdf_1.jpg?tr=h-55,w-50" alt="">
     <a href="welcome.html">LogOut</a>
     <a href="results.jsp">View Results</a>
     <a href="adminviewcand.jsp">View Candidates</a>
     <a href="addcandidate.html">Add Candidates</a>
     <a href="https://www.kluniversity.in/">About</a>
     <a href="vote1.html">Home</a>
    </div>
</div>
<%
try {
String connectionURL = "jdbc:mysql://localhost:3306/liberty";
Connection connection = null;
Statement statement = null;
ResultSet rs = null;
Class.forName("com.mysql.jdbc.Driver").newInstance();
connection = DriverManager.getConnection(connectionURL, "root", "sasidhar!@2002");
statement = connection.createStatement();
String QueryString = "SELECT * from addcand";
rs = statement.executeQuery(QueryString);
%>
<center>
<TABLE cellpadding="15" border="1" style="background-color: #ffffcc;">

<TR>
<TD>CANDIDATE ID</TD>
<TD>CANDIDATE NAME</TD>
<TD>CANDIDATE YEAR</TD>
<TD>CANDIDATE MOBILE</TD>
<TD>CANDIDATE EMAIL</TD>
<TD>CANDIDATE ROLE</TD>
</TR>
<%
while (rs.next()) {
%>
<TR>
<TD><%=rs.getInt(1)%></TD>
<TD><%=rs.getString(2)%></TD>
<TD><%=rs.getString(3)%></TD>
<TD><%=rs.getString(4)%></TD>
<TD><%=rs.getString(5)%></TD>
<TD><%=rs.getString(6)%></TD>
</TR>
</center>
<% } %>
<%

} catch (Exception ex) {
%>
</font>
<font size="+3" color="red"></b>
<%
out.println("Unable to connect to database.");
}
%>
</TABLE><TABLE>
<TR>
<br>
<TD><FORM ACTION="vote1.html" method="get" >
<button type="submit">< Back To Home</button></TD>
</TR>
</TABLE>
</font>
</body>
</html>


<style>
      @import url("https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css");

 h1{
        text-align: center;
    }
    .topnav{
        overflow: hidden;
    }
    .topnav a{
        float: right;
        text-align: center;
        padding: 14px 16px;
        text-decoration: none;
        font-size: 17px;
    }
.logo {
    display: inline-block;
    vertical-align: top;
    width: 50px;
    height: 50px;
    margin-right: 20px;
    margin-top: 15px;    
}
.navigation-bar > a {
    display: inline-block;
    vertical-align: top;
    margin-right: 20px;
    height: 80px;        
    line-height: 80px;    
}

* {box-sizing: border-box;}
body {font-family: Verdana, sans-serif;}
.mySlides {display: none;}
img {vertical-align: middle;}

/* Slideshow container */
.slideshow-container {
  max-width: 1000px;
  position: relative;
  margin: auto;
}


/* The dots/bullets/indicators */
.dot {
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 30%;
  display: inline-block;
  transition: background-color 0.6s ease;
}


/* Fading animation */
.fade {
  -webkit-animation-name: fade;
  -webkit-animation-duration: 1.5s;
  animation-name: fade;
  animation-duration: 1.5s;
}

@-webkit-keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
  .text {font-size: 11px}
}
p{
text-align:center;
font-size: 30px;
color:chartreuse;
}
.button {
  text-align:center;
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
  background-color: #4CAF50;
}
h2{
text-align:center;
color:chartreuse;
 margin-top: 0.67em;
  margin-bottom: 0.67em;
  margin-left: 0;
  margin-right: 0;
  display:block;
  font-weight:bold;
}
h3{
color:#8B008B;
font-weight:bold;
text-align:justify;
}
ul{
color:#FF7F50;
text-align:justify;
}
</style>