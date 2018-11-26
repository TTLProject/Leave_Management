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

String  January,Febraury,March,April,May,june,July,August,September,October,November;
String a=request.getParameter("holiday");


if(a!=null)
{
	if(a.equals("January")){
		   response.sendRedirect("january.jsp");	
	}
	
	if (a.equals("Febraury")){
		
		 response.sendRedirect("febraury.jsp");	
			
		
		
	}
	if (a.equals("March")){
		 response.sendRedirect("march.jsp");	
			
		
	}
	if (a.equals("April")){
		 response.sendRedirect("april.jsp");	
			
		
	}
	if (a.equals("May")){
		
		 response.sendRedirect("may.jsp");	
			
		
		
	}
	if (a.equals("june")){
		
		 response.sendRedirect("june.jsp");	
			
		
		
	}
	if (a.equals("July")){
		
		 response.sendRedirect("july.jsp");	
			
		
		
	}
	if (a.equals("August")){
		
		 response.sendRedirect("august.jsp");	
			
		
		
	}
	if (a.equals("September")){
		
		 response.sendRedirect("september.jsp");	
			
		
		
	}
	if (a.equals("October")){
		
		 response.sendRedirect("october.jsp");	
			
		
		
	}
	if (a.equals("November")){
		
		 response.sendRedirect("november.jsp");	
			
		
		
	}
	if (a.equals("December")){
		
		 response.sendRedirect("december.jsp");	
			
		
		
	}
	if (a.equals("All")){
		
		 response.sendRedirect("all.jsp");	
			
		
		
	}
}
 
	else {
	    out.println("Not Success-");
	}

	





%>









</body>
</html>