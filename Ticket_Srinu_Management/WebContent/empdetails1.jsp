<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>



<%

try{
String u=request.getParameter("joindate");
int p=Integer.parseInt(request.getParameter("package1"));
String ua=request.getParameter("uannumber");
String ac=request.getParameter("accountnumber");
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection cn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","srinu","srinu");
PreparedStatement pst=cn.prepareStatement("insert into empdetail(joindate,package1,uannumber,accountnumber)values(?,?,?,?)");
pst.setString(1, u);

pst.setInt(2, p);
pst.setString(3, ua);
pst.setString(4, ac);
int i=pst.executeUpdate();
if(i==1){
	%>
	
	<script type="text/javascript">
	
	

	
	window.alert("Success");
	
	
	/* response.sendRedirect("empdetails.jsp"); */
	</script>
	
	<%
	RequestDispatcher rd=request.getRequestDispatcher("empdetails.jsp");  
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