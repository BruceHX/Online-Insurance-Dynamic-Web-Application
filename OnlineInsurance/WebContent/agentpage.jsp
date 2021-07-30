<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="pack.DbConnector"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<style type="text/css">
#menu {
	font-size: 160%;
	font-weight: bolder;
}

#menu li {
	list-style-image: none;
	list-style-type: none;
	background-color: #999999;
	border-right-width: 1px;
	border-right-style: solid;
	border-right-color: #000000;
	float: left;
}
</style>
<title>Online Insurance Management</title>
<script language="javascript" type="text/javascript">
function clearText(field)
{
    if (field.defaultValue == field.value) field.value = '';
    else if (field.value == '') field.value = field.defaultValue;
}
</script>
<script>
    function check(){
        var a = document.ff.user.value;
        var b = document.ff.pass.value;
       
   
         if(a==0){
            alert('Please Enter UserId');
            return false;
            document.getElementById("name").focus();            
        } if(b==0){
            alert('Please Enter Password');
            return false;
            document.getElementById("pass").focus();            
        } 
    }
    
    
</script>
</head>
<body bgcolor=skyblue>

	<marquee style="color: springgreen; font-size: 200%;">Online
		Insurance Management System</marquee>

	<div>
		<h1
			style="color: purple; font-size: 300%; font-family: Times New Roman; text-align: center;">
			ONLINE INSURANCE MANAGEMENT SYSTEM</h1>
	</div>

	<br>

	<div style="color: RED; font-size =4px; font-family: Times New Roman;">

		<ul id="menu">
			<li>&emsp;<a href="agentpage.jsp" class="current">Home</a>&emsp;
			</li>
			<li>&emsp;Life Insurance&emsp;</li>
			<li>&emsp;Home Insurance&emsp;</li>
			<li>&emsp;Motor Insurance&emsp;</li>
			<li>&emsp;Admin&emsp;
			</li>
			<li>&emsp;<a href="agentlog.jsp">Logout</a>&emsp;
			</li>
			<li>&emsp;Policy Holder&emsp;
			</li>
		</ul>
		<br> <br>

	</div>
	
	<div>
	
	<%
                  //  userid, season, str, end, intr, dot, dy, nop, status_, tcost
                String me = session.getAttribute("me").toString();
	
	 String  u1=null,sti=null,getName=null;
     
	 Class.forName("com.mysql.jdbc.Driver");	
	 Connection conn1 = DbConnector.getConnection();
	 Statement st2 = conn1.createStatement();

	 ResultSet rs2 = st2.executeQuery("select * from  agentregispage ");
	 while(rs2.next()){

	 u1=rs2.getString("name");
	 sti=rs2.getString("userid");

	 if(me.equals(sti)) {
		 getName = u1;		 
	 }
	 }
	
                %>
                
            <h1 style="text-align:center;"><font color="yellow">Welcome&nbsp;&nbsp;&nbsp;&nbsp;Agent&nbsp;&nbsp;&nbsp;&nbsp;<%=getName%></font></h1>
            <h2>          
                <ul style="text-align:left;">
            <li><a href="agentmydetail.jsp">View My Details</a></li>
            <li><a href="agentpolicydetail.jsp">View Policy</a></li>
           
        </ul></h2>    
       
           </div>

	<br>
	<br>
	<marquee style="color: orange; font-size: 200%;" direction="right">Online
		Insurance Management System</marquee>
	<br>
	<br>
	<font size=4>
		<center>
			&copy; 2021 www.OnlineInsurance.com<br>All rights reserved.<br>
			&emsp;Corporate information&emsp;|&emsp;Terms of
			service&emsp;|&emsp;Privacy Policy&emsp;
		</center>
	</font>
</body>
</html>