<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
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
	function clearText(field) {
		if (field.defaultValue == field.value)
			field.value = '';
		else if (field.value == '')
			field.value = field.defaultValue;
	}
</script>
<script>
function check() {
	var a = document.ff.name.value;
	var b = document.ff.user.value;
	var c = document.ff.pass.value;
	var d = document.ff.email.value;
	var e = document.ff.dob.value;
	var f = document.ff.loc.value;
	var g = document.ff.sex.value;

	if (a == 0) {
		alert('Please Enter Name');
		document.getElementById("name").focus();
		return false;
	}
	if (b == 0) {
		alert('Please Enter Userid');
		document.getElementById("user").focus();
		return false;

	}
	if (c == 0) {
		alert('Please Enter Password');
		document.getElementById("pass").focus();
		return false;

	}
	if (d == 0) {
		alert('Please Enter E-mail Id');
		document.getElementById("email").focus();
		return false;

	}
	if (e == 0) {
		alert('Please Enter Date of Birth');
		document.getElementById("dob").focus();
		return false;

	}
	if (f == 0) {
		alert('Please Enter Your Location');
		document.getElementById("loc").focus();
		return false;

	}
	if (g == 0) {
		alert('Please Enter Gender');
		document.getElementById("sex").focus();
		return false;

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
			<li>&emsp;<a href="index.jsp">Home</a>&emsp;
			</li>
			<li>&emsp;Life Insurance&emsp;</li>
			<li>&emsp;Home Insurance&emsp;</li>
			<li>&emsp;Motor Insurance&emsp;</li>
			<li>&emsp;<a href="adminlog.jsp">Admin</a>&emsp;
			</li>
			<li>&emsp;<a href="agentlog.jsp">Agent</a>&emsp;
			</li>
			<li>&emsp;<a href="policyholderlog.jsp">Policy Holder</a>&emsp;
			</li>
		</ul>
		<br> <br>

	</div>


	<div style="text-align: center;">

		<div>





			<h4>Policy Holder Registration</h4>
			<form action="policyholderregisaction.jsp" name="ff" method="get"
				onsubmit="return check()">
				Name: <br> <input type="text" name="name" id="name"
					style="background: cadetblue; height: 28px; width: 250px;"><br>
				<br> UserId: <br> <input type="text" name="user" id="user"
					style="background: cadetblue; height: 28px; width: 250px;"><br>
				<br> Password: <br> <input type="password" name="pass"
					id="pass"
					style="background: cadetblue; height: 28px; width: 250px;"><br>
				<br> Email Id:<br> <input type="email" name="email"
					id="mail"
					style="background: cadetblue; height: 28px; width: 250px;"><br>
				<br> Date of Birth:<br> <input type="date" name="dob"
					id="dob" style="background: cadetblue; height: 28px; width: 250px;"><br>
				<br> Location:<br> <input type="text" name="loc" id="loc"
					style="background: cadetblue; height: 28px; width: 250px;"><br>
				<br> Gender:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<select name="sex"
					id="sex" style="background: cadetblue; height: 28px; width: 180px;"><option>Male</option>
					<option>Female</option>
				</select><br></br>
				<div style="margin-left: 3px;">
					<input type="submit" value="Register"
						style="background-color: green; width: 80px; height: 30px; border: 4px; font-weight: bold;">&nbsp;&nbsp;&nbsp;

				
			</form>
			<input type="reset" value="Clear"
				style="background-color: red; height: 30px; width: 80px; border: 4px; font-weight: bold;">
		</div>
		<br>

		<%
			if (request.getParameter("msgg") != null) {
				out.println("<script>alert('Error Found..!!')</script>");
			}
		%>



		<div class="cleaner"></div>
	</div>


	<br> <br> <marquee style="color: orange; font-size: 200%;"
				direction="right">Online Insurance Management System</marquee> <br>
				<br> <font size=4>
						<center>
							&copy; 2021 www.OnlineInsurance.com<br>All rights reserved.<br>
									&emsp;Corporate information&emsp;|&emsp;Terms of
									service&emsp;|&emsp;Privacy Policy&emsp; 
						</center>
				</font>
</body>
</html>