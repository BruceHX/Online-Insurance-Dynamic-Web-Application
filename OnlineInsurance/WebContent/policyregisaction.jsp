<%@page import="pack.DbConnector"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="sun.rmi.log.LogInputStream"%>
<%@page import="java.util.Random"%>
<%
            String pname = request.getParameter("pname");
            String pid = request.getParameter("pid");
            Random r = new Random();
            int ii = r.nextInt(100000-5000)+5000;
            String k = ii+"";
           Connection con =  DbConnector.getConnection();
            Statement st = con.createStatement();
            int i = st.executeUpdate("insert into policyregispage values('"+pname+"','"+pid+"','"+k+"')");
            if (i != 0) {
            	

               response.sendRedirect("adminpage.jsp?msg=Register success");

                
            } else {
               response.sendRedirect("policyregispage.jsp?msgr=Register fails");
            }
            %>