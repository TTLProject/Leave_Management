<%@page import="java.util.HashSet"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="dao.ConnectionSteps"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Applying Leave</title>
</head>
<body>

<%
try{
String startdate=request.getParameter("startdate");

String enddate=request.getParameter("enddate");

String leavetype=request.getParameter("leavetype");

String reason=request.getParameter("reason");

/*
HttpSession session2=request.getSession(true);

session.setAttribute("startdate",startdate);
session.setAttribute("enddate",enddate); 

*/
ConnectionSteps steps = new ConnectionSteps();
Connection con=steps.connection();
PreparedStatement pst=con.prepareStatement("insert into leavestable(startdate,enddate,leavetype,reason)values(?,?,?,?)");

pst.setString(1, startdate);
pst.setString(2, enddate);
pst.setString(3,leavetype);
pst.setString(4, reason);

int i=pst.executeUpdate();
if(i==1){
	%>
	
	<script type="text/javascript">
	
	window.alert("Leave Applied Successfully....!!");
	
	</script>
	
	<%
	RequestDispatcher rd=request.getRequestDispatcher("apply.jsp");  
	rd.include(request, response);
	
}else{
	response.sendRedirect("500.jsp");
	
}
}catch(Exception e){
	
	System.out.println(e);
}

%>



</body>
</html>