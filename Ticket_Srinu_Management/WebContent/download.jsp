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



String filename = "jsppayslip.jsp"; 
String filepath = "D:\\Users\\cubic\\git\\Nandakishore\\Ticket_Test_Management\\WebContent/"; 
response.setContentType("APPLICATION/OCTET-STREAM"); 
 response.setHeader("Content-Disposition","attachment; filename=\"" + filename + ".pdf\""); 
 
 

java.io.FileInputStream fileInputStream = new java.io.FileInputStream(filepath + filename);

int i; 
while ((i=fileInputStream.read()) != -1) {
  out.write(i); 
} 
fileInputStream.close(); 
out.close(); 


%>
</body>
</html>