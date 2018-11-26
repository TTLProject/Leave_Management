<%@page import="java.util.HashSet"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
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
 String m=request.getParameter("joindate");
int p=Integer.parseInt(request.getParameter("package1"));
HttpSession session2=request.getSession(true);
session.setAttribute("month", m);
session.setAttribute("pk",p);

  Class.forName("oracle.jdbc.driver.OracleDriver");
Connection cn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","srinu","srinu");
PreparedStatement pst=cn.prepareStatement("select * from empdetail");

ResultSet rs=pst.executeQuery(); 

HashSet hs=new HashSet();
while(rs.next()){
	
	hs.add(rs.getString(1));
	hs.add(rs.getInt(2));
	 
	
 }

if(hs.contains(m)&&hs.contains(p)){
	
	response.sendRedirect("download1.jsp");
	
	
}else{
	response.sendRedirect("error500.jsp");
	
	
}
 
 


}catch(Exception e){
	System.out.println(e);
}






%>




</body>
</html>