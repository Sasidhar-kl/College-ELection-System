<%@ page import ="java.sql.*"%>
<header>
    <div class="wrapper">
    <div class="topnav">
    <img src="https://img.collegedekhocdn.com/media/img/institute/logo/KL_Logo_Final_New-pdf_1.jpg?tr=h-55,w-50" alt="">
     <a href="register.html">Register</a>
     <a href="adminlogin.html">Admin</a>
     <a href="contact.html">Contact us</a>
     <a class="active" href="candidate.html">View Candidates</a>
     <a href="https://www.kluniversity.in/">About</a>
     <a href="welcome.html">Home</a>
    </div>
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
  border-radius:0.25rem;
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