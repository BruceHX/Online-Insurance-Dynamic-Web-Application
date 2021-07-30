<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
			<li>&emsp;<a href="adminpage.jsp" class="current">Home</a>&emsp;
			</li>
			<li>&emsp;Life Insurance&emsp;</li>
			<li>&emsp;Home Insurance&emsp;</li>
			<li>&emsp;Motor Insurance&emsp;</li>
			<li>&emsp;<a href="adminlog.jsp">Logout</a>&emsp;
			</li>
			<li>&emsp;Agent&emsp;
			</li>
			<li>&emsp;Policy Holder&emsp;
			</li>
		</ul>
		<br> <br>

	</div>
	
	<div>
                
            <h1 style="text-align:center;"><font color="yellow">Welcome&nbsp;&nbsp;&nbsp;&nbsp;Admin</font></h1>
            <h2>          
                <ul style="text-align:left;">
            <li><a href="agentdetail.jsp">View Agent Details</a></li>
            <li><a href="policyholderdetail.jsp">View Policy Holder Details</a></li>
            <li><a href="adminpolicydetail.jsp">View Policy</a></li>
            <li><a href="policyregispage.jsp">Add Policy</a></li>
            
           
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