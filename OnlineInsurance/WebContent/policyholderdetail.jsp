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
        
          
                    <h1 style="text-align:center; color:yellow;">Policy Holder Details</h1>
				          <table border="2" style="width: 100%; alignment-adjust: central; ">
                <!--name, userid, pass, mail, age, loc, sex, time_-->
                <tr style="color: red; background-color: #ccffff; alignment-adjust:auto; font-family: fantasy; font-size: 18px;">
                   <td style="text-align:center;"><font size="3">NAME</font></td>
                   <td align="center"><font size="3">USER ID</font></td>
                   <!--<td align="center"><font size="3">PASSWORD</font></td>-->
                   <td align="center"><font size="3">MAIL ID</font></td>
                   <td align="center"><font size="3">DATE OF BIRTH</font></td>
                   <td align="center"><font size="3">LOCATION</font></td>
                   <td align="center"><font size="3">GENDER</font></td>
                   <td align="center"><font size="3">REGISTERED TIME</font></td>
                  
                    
                   
               </tr>
<%               
    
    //name, userid, pass, mail, age, loc, sex, time_
        String  u=null,st=null,en=null,intr=null,dot=null,dy=null,nop=null,sta=null,toc=null,key=null;
        
Class.forName("com.mysql.jdbc.Driver");	
Connection conn = DbConnector.getConnection();
Statement st1 = conn.createStatement();

ResultSet rs1 = st1.executeQuery("select * from  policyholderregispage ");
while(rs1.next()){
u=rs1.getString("name");
st=rs1.getString("userid");
en=rs1.getString("pass");
intr=rs1.getString("mail");
dot=rs1.getString("dob");
dy=rs1.getString("loc");
nop=rs1.getString("sex");
sta=rs1.getString("time_");


       %>   
       <tr style="color: #0000cc; background-color: #a1a1a1">
           <form action="update.jsp" method="get" >
              <!--<td><input type="text" name="file" value="<%=u%>" style="height: 40px; background-color: #ffccff; font-family: monospace; font-weight: bold" readonly ></td>-->
             
              <td align="center"><%=u%></td>
              <td align="center"><%=st%></td>  
       <td align="center"> <%=intr%></td>
       <td align="center"> <%=dot%></td>
       <td align="center"> <%=dy%></td>
       <td align="center"> <%=nop%></td>
       <td align="center"> <%=sta%></td>
       
           </form>
     <%

}                                     
%>
</tr>
                                          </table><BR></BR>

                <div class="cleaner"></div>
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