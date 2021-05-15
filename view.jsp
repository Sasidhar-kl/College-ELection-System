Manikanta, [01.04.21 14:34]
<%@ page import ="java.sql.*"%>

<div class="header">
  <span style="font-size:30px;cursor:pointer" onclick="openNav()" style="margin-left: 0">&#9776;</span>
   <img src="images/learn.png">
   <a href="home.html">Learning Management System</a>
 <div class="header-right">
  <a class="active" href="home.html">Home</a>
  <a href="courses.jsp">Courses</a>
  <a href="Faculty.jsp">Faculty</a>
  <a href="exam.html">Examination</a>
  <a href="fee.jsp">FeeDetails</a>
  <a href="contac.html">Contact</a>
  <a href="about.jsp">About Us</a>
  </div>
</div>
<div id="mySidenav" class="sidenav">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
  <img src="https://newerp.kluniversity.in/images/default_user.jpg" class="icon" width="35" height="35">
  <a href="profile.jsp"><i class="fa fa-fw fa-user"></i>My Profile</a>
  <a href="#"><i class="fa fa-fw fa-bell"></i>Notifications</a>
  <a href="#"><i class="fa fa-fw fa-book"></i>Grades</a>
  <a href="Welcome.html"><i class="fa fa-fw fa-sign-out"></i>Logout</a>
</div>
        <%
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbc","root","root");
            Statement st=conn.createStatement();
            ResultSet rs=st.executeQuery("select * from courses");
         while(rs.next()){
        %>
        <div class="main">
  <ul class="cards">
    <li class="cards_item">
      <div class="card">
        <div class="card_image"><img src="images/ep.png"></div>
        <div class="card_content">
          <h2 class="card_title"><%=rs.getString(1) %></h2>
          <p style="color: white"></p>
          <button class="btn card_btn">View Course</button>
        </div>
      </div>
       </div>
      </li>
     </ul>
      </div> <br>
          <%
         }
        }
        catch(Exception e){
            out.println("please register to proceed");
        }
          %>
      <style>
      @import url("https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css");
body{
    margin-top: 0;
  margin-left: 0;
  margin-right: 0;
  /*color: #272727;
  font-family: 'Quicksand', serif;
  font-style: normal;
  font-weight: 400;
  letter-spacing: 0;
  padding: 1rem;*/
}
.header {
  overflow: hidden;
  background-image: url("images/header.jpg");
  padding: 10px 10px;
}
.header img{
  float: left;
}
.header a {
  float: left;
  color: black;
  text-align: center;
  padding: 20px;
  text-decoration: none;
  font-size: 18px;
  line-height: 25px;
  border-radius: 2px;
  font-weight: bolder;
  letter-spacing: 2px;
}
.header a.logo {
  font-size: 25px;
  font-weight: bold;
}
.header a:hover {
  background-color: transparent;
  color: orange;
}
.header-right {
  float: right;
}
@media screen and (max-width: 500px) {
  .header a {
    float: none;
    display: block;
    text-align: left;
  }
  .header-right {
    float: none;
  }
}
@import url('https://fonts.googleapis.com/css?family=Quicksand:400,700');
/* Design */
*,
*::before,
*::after {
  box-sizing: border-box;
}
html {
  background-color: #ecf9ff;
}
.main{
  max-width: 1200px;
  margin: 0 auto;
}
h1 {
    font-size: 24px;
    font-weight: 400;
    text-align: center;
}
img {
  height: auto;
  max-width: 100%;
  vertical-align: middle;
}
.btn {
  color: black;
  padding: 0.8rem;
  font-size: 14px;
  text-transform: uppercase;
  border-radius: 4px;
  font-weight: 400;
  display: block;
  width: 100%;
  cursor: pointer;
  border: 1px solid /*rgba(255, 255, 255, 0.2)*/;
  background: orange;
}
.btn:hover {
  background-color: orange /*rgba(255, 255, 255, 0.12)*/;
}
.cards {
  display: flex;
  flex-wrap: wrap;
  list-style: none;
  margin: 0;
  padding: 0;
}
.cards_item {
  display: flex;
  padding: 1rem;
  float:left;
}
.cards_item:after {
 content:"";
 display:table;
 clear:both;
 padding-bottom:20px;
 float:left;
}
@media (min-width: 40rem) {
  .cards_item {
    width: 50%;
  }
}
@media (min-width: 56rem) {
  .cards_item {
    width: 33.3333%;
  }
}
.card {
  background-color: white;
  border-radius:

Manikanta, [01.04.21 14:34]
0.25rem;
  box-shadow: 0 20px 40px -14px rgba(0, 0, 0, 0.25);
  display: flex;
  flex-direction: column;
  overflow: hidden;
  float:left;
  margin:left
}
.card_content {
  padding: 1rem;
  /*background: linear-gradient(to bottom left, #EF8D9C 40%,  100%);*/
  float:left;
}
.card_title {
  color: black;
  font-size: 1.4rem;
  font-weight: 700;
  letter-spacing: 1px;
  text-transform: capitalize;
  margin: 0px;
  text-align: center;
}
.sidenav {
  height: 100%;
  width: 0;
  position: fixed;
  z-index: 1;
  top: 0;
  right: 0;
  background-color: #394263;
  overflow-x: hidden;
  transition: 0.5s;
  padding-top: 60px;
}
.sidenav a {
  padding: 8px 8px 8px 32px;
  text-decoration: none;
  font-size: 20px;
  color: #fff;
  display: block;
  transition: 0.3s;
}
/*.sidenav a:hover {
  color: #f1f1f1;
}*/
.sidenav .closebtn {
  position: absolute;
  top: 0;
  right: 25px;
  font-size: 36px;
  margin-left: 50px;
}
span{
  float: right;
  margin-top: 10px;
}
.icon{
  margin-left: 48%;
}
.sidenav a:hover {
  background-color: transparent;
  color: orange;
}
      </style>