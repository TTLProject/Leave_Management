<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1></h1>
     <style> 
.crtf_div{width:900px; height:auto; text-align:center; font-family:Arial, Helvetica, sans-serif; border:1px solid #000; padding:15px 0px;}
.crtf_div p{width:850px; height:auto; margin:20px 25px; text-align:justify; font-size:14px;}
.crtf_head{width:900px; height:auto; text-align:center; font-size:16px; font-weight:bold;}
.crtf_head .head_small{font-size:12px;}

.crtf_table{width:850px; height:auto; margin:10px 25px; border:1px solid #000; text-align:left; font-size:14px;}
.crtf_table tr td input{width:100px; height:20px; border:0px;}
.crtf_table tr td textarea{width:670px; height:50px; border:0px;}


.crtf_list{width:auto; height:auto; margin:10px 25px; text-align:justify; font-size:14px;}
.crtf_list ol li{width:auto; height:auto; margin-bottom:10px;}
</style>

 
 
 <center>
  <div class="crtf_div">
  <table class="crtf_table" style="border:2px; text-align:left;">

<h1  style="color:lightblue"><p>Cubic <br>
                     IT Solution PVT.LtD</p></h1>

</table>
  <table class="crtf_table" border="2" cellspacing="0" >
<Div class="crtf_head">PAY SLIP FOR THE MONTH OF "July-2018"
 <br />

<div class="head_small">(See rule 26(2) under The Minimum Wages (Central Rules), 1950) </div>

</Div>

<br />
<% 
 /* Scanner sc= new Scanner(System.in);
		     System.out.println("Enter  Basic Salary");
		     float u=sc.nextFloat();
		 */
		  

         HttpSession session2=request.getSession(true);
         int usn=(int)session2.getAttribute("pk");
		   
 float u=(float)usn;
		     float h=u*25/100;
		   /*   System.out.println("HR::"+h); */
		
		     float  c=u*10/100;
		    /*  System.out.println("CCA::"+c); */
		     float cn=(u/100)*10;
		    /*  System.out.println("CON::"+cn); */
		
		     float g=u+h+cn+c;
		    /*  System.out.println("Gross::"+g);
		 */
		     float b=u*20/100;
		    /*  System.out.println("Bonus::"+b);
		 */
		
		     if(u>6500) {
			
			
			 /* System.out.println("company PF Contribution::780"); */
		     }else {
			
		    	 float p=(u*12/100);
			
			  /* System.out.println("Pf company Contribution::"+p); */
		      }
	
		     float p=(u*12/100);
		     if(u+h+c>10000) {
			
// 			 System.out.println("company ESI Contribution::0");
		      }else {
		    	  float ee=(int) ((u+h+c)*(4.75/100));
// 			 System.out.println("company ESI Contribution::"+ ee);
		     }
		     float ee=( float) ((u+h+c)*(4.75/100));
		
		
		
		
		     if(u>6500) {
		    	 float ctc=g+b+780+0;
// 		     System.out.println("CTC:::"+ctc);
		     }else {
			
		    	 float ctc1=g+b+ee+p;
// 			 System.out.println("CTC:::"+ctc1);
			
		     }
		
		     float ctc=g+b+780+0;
		     float ctc1=g+b+ee+p;
		
		
		
		
		
		
		     float emppf=(u*12/100);
// 		     System.out.println("Employee PF::"+emppf);

		
		
		
		    if(u>6500) {
			
// 			System.out.println("company PF::780");
		    }else {
			
		    	 float pp=(u*12/100);
// 			System.out.println("Pf company::"+pp);
		    }
		    float pp=(u*12/100);
		
		

		
		
		
		
		
		     if(u+h+c>10000) {
			
// 			 System.out.println("ESI Employee::0");
		     }else {
			
		    	 float p1=(int) ((u+h+c)*1.75/100);
// 			 System.out.println("ESI Employee::"+p1);
		     }
		     float p1=(int) ((u+h+c)*1.75/100);
		

		
		
		
		
		
		     if(u+h+c>10000) {
			
// 			System.out.println("ESI Company::0");
		    }else {
			
		    	 float pp1=( float) ((u+h+c)*4.75/100);
// 			System.out.println("ESI Company::"+pp1);
		    }
		     float pp1=( float) ((u+h+c)*4.75/100);
		
		
		
		     float by=( float) (u*8.33/100);
		
// 		    System.out.println("Bonus Yearly::"+by);
		%>
		
		
		
		
		
		
		     
<table class="crtf_table" style="border:2px; text-align:center;">
<tr>
    <td><b>Emp: xyz</b><br>
<b>Designation: xyz</b><br>
<b>No of Leaves: 0</b></td>
    <td> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; </td>
    <td><b>EmpID.No:CIS000xxx</b><br>
<b>Gender: x</b><br>
<b>Days of LOP: 0</b></td>
</tr>
</table>
<table class="crtf_table" border="2" cellspacing="0" >
<tr>
  <td width="150"><b>EARNINGS</b></td>
  
   <td width="150"><b>RS.</b></td>
  
   <td width="150"><b>DEDUCTIONS</b></td>

   <td width="150"><b>RS.</b> </td>
  
</tr>
<tr>
 <!--  <td>ADDRESS</td>
  <td><textarea name="add" rows="4" cols="20" value=" "></textarea></td> -->
  <td>Basic</td>
   <td><input type="text" name="lstatus" value=<%=u %> /></td>
   <td><input type="text" name="lstatus" /></td>
   <td><input type="text" name="lstatus" /></td>
     
</tr>
<tr>
    <td>House Rent Allowance </td>
    <td><input type="text" name="lstatus" value=<%=h%> /></td>
    
    <td><input type="text" name="" /></td>
     <td><input type="text" name=" " /></td>
      
</tr>
<tr>
    <td>Conveyance Allowance  </td>
   <td><input type="text" name="lstatus"  value=<%=c%> /></td>
    
    <td><input type="text" name="lstatus" /></td>
     <td><input type="text" name="lstatus" /></td>
     
</tr>
<tr>
    <td>Project Performance Allowance </td>
   <td><input type="text" name="lstatus" /></td>
   
    <td><input type="text" name="lstatus" /></td>
     <td><input type="text" name="lstatus" /></td>
      
</tr>

<tr>
  <td width="150">Other/Special Allowance </td>
  <td><input type="text" name="lstatus"  value=<%=cn %> /></td>
  
    <td><input type="text" name="lstatus" /></td>
     <td><input type="text" name="lstatus" /></td>
      
</tr>
<tr>
 <!--  <td>ADDRESS</td>
  <td><textarea name="add" rows="4" cols="20" value=" "></textarea></td> -->
  <td width="150">Over Time Allowance </td>
 <td><input type="text" name="lstatus" /></td>
   <td><input type="text" name="lstatus" /></td>
    <td><input type="text" name="lstatus" /></td>
     
</tr>
<tr>
   
    <td><input type="text" name="lstatus" /></td>
     <td><input type="text" name="lstatus" /></td>
      <td><b>PF Employee </b></td>
      <td><input type="text"  name="lstatus" value=<%=emppf%> /></td>
</tr>
<tr>
   
    <td><input type="text" name="lstatus" /></td>
     <td><input type="text" name="lstatus" /></td>
      <td><input type="text" name="lstatus" /></td>
      <td><input type="text" name="lstatus" /></td>
</tr>
<% if(g!=0)
		  {
			 if(g>1600 && g<2000  )         {
				 float pt=16;
// 		     System.out.println("PT:::16");
		     float td=emppf+p1+pp1+pp+by+16;
				   
// 			 System.out.println("Total Detuction::: "+td);
				   
			 float tk=ctc1-td;
//              System.out.println("Take Home:::"+tk);
		%><tr>
   
     <td><input type="text" name="lstatus" /></td>
				      <td><input type="text" name="lstatus" /></td>
				      <td><b >PT   </b></td>
       <td><input type="text"  name="lstatus" value=<%=pt %> /></td>
				      
				      </tr>
				      <tr>
				        <td><input type="text" name="lstatus" /></td>
				      <td><input type="text" name="lstatus" /></td>
				      <td><b >Total Deductions   </b></td>
       <td><input type="text" name="lstatus" value=<%=td %> /></td>
      
</tr>		    
	<% 			 
			}
			 else if(g>2001 && g<3000){
// 				   System.out.println("PT:::25");
				   float pt=25;
				   float td=emppf+p1+pp1+pp+by+25;
				   
// 		     System.out.println("Total Detuction::: "+td);
		     float tk=ctc1-td;
// 			  System.out.println("Take Home:::"+tk);
			  %>
			  	<tr>
   
     <td><input type="text" name="lstatus" /></td>
				      <td><input type="text" name="lstatus" /></td>
				      <td><b>PT</b></td>
				      <td><input type="text"  name="lstatus" value=<%=pt %> /></td>
				      </tr>
				      <tr>
				        <td><input type="text" name="lstatus" /></td>
				      <td><input type="text" name="lstatus" /></td>
				      <td><b >Total Deductions   </b></td>
       <td><input type="text"  name="lstatus" value=<%=td %> /></td>
      
</tr>		    
	<%	   
			}
			
			else if(g>3001 && g<4000){
// 				   System.out.println("PT:::35");
				   float pt=35;
				   float td=emppf+p1+pp1+pp+by+35;
				   
// 				   System.out.println("Total Detuction::: "+td);
				   
				   float tk=ctc1-td;
// 				   System.out.println("Take Home:::"+tk);
				   %><tr>
				   
				     <td><input type="text" name="lstatus" /></td>
				      <td><input type="text" name="lstatus" /></td>
				      <td><b>PT</b></td>
				      <td><input type="text" name="lstatus"  value=<%=pt %> /></td>
				      </tr>
				      <tr>
				        <td><input type="text" name="lstatus" /></td>
				      <td><input type="text" name="lstatus" /></td>
				      <td><b >Total Deductions   </b></td>
       <td><input type="text"  name="lstatus" value=<%=td %> /></td>
      
				</tr>		    
					<%
			}
			
			
			
			
			else if(g>4001 && g<5000){
// 				   System.out.println("PT:::45");
				   float pt=45;
				   float td=emppf+p1+pp1+pp+by+45;
				   
// 				   System.out.println("Total Detuction::: "+td);
				   
				   float tk=ctc1-td;
// 				   System.out.println("Take Home:::"+tk);
				   %><tr>
				   
				    <td><input type="text" name="lstatus" /></td>
				      <td><input type="text" name="lstatus" /></td>
				      <td><b>PT</b></td>
				      <td><input type="text"  name="lstatus" value=<%=pt %> /></td>
				      </tr>
				      <tr>
				        <td><input type="text" name="lstatus" /></td>
				      <td><input type="text" name="lstatus" /></td>
				      <td><b >Total Deductions   </b></td>
       <td><input type="text" name="lstatus"  value=<%=td %> /></td>
      
				</tr>		    
					<%
			}
			else if(g>5001 && g<6000){
				 float pt=60;
// 				   System.out.println("PT:::60");
				   float td=emppf+p1+pp1+pp+by+60;
				   
// 				   System.out.println("Total Detuction::: "+td);
				   
				   float tk=ctc1-td;
// 				   System.out.println("Take Home:::"+tk);
				   %><tr>
				   
				     <td><input type="text" name="lstatus" /></td>
				      <td><input type="text" name="lstatus" /></td>
				      <td><b>PT</b></td>
				      <td><input type="text" name="lstatus" value=<%=pt %> /></td>
				      </tr>
				      <tr>
				        <td><input type="text" name="lstatus" /></td>
				      <td><input type="text" name="lstatus" /></td>
				      <td><b >Total Deductions   </b></td>
       <td><input type="text" name="lstatus" value=<%=td %> /></td>
      
				</tr>		    
					<%
			}
			else if(g>6001 && g<10000){
// 				   System.out.println("PT:::80");
				   float pt=80;
				   float td=emppf+p1+pp1+pp+by+80;
				   
// 				   System.out.println("Total Detuction::: "+td);
				   
				   
				   float tk=ctc1-td;
// 				   System.out.println("Take Home:::"+tk);
				   %><tr>
				   
				     <td><input type="text" name="lstatus" /></td>
				      <td><input type="text" name="lstatus" /></td>
				      <td><b>PT</b></td>
				      <td><input type="text" name="lstatus" value=<%=pt %> /></td>
				      </tr>
				      <tr>
				        <td><input type="text" name="lstatus" /></td>
				      <td><input type="text" name="lstatus" /></td>
				      <td><b >Total Deductions   </b></td>
       <td><input type="text" name="lstatus" value=<%=td %> /></td>
      
				</tr>		    
					<%
			}
			 else if(g>10001 && g<15000){
				
				
				 float pt=100;
// 				   System.out.println("PT:::100");
				   float td=emppf+780+by+100;
				   
// 				   System.out.println("Total Detuction::: "+td);
				   
				   float tk=ctc-td;
// 				   System.out.println("Take Home:::"+tk);
				   %><tr>
				   
				    <td><input type="text" name="lstatus" /></td>
				      <td><input type="text" name="lstatus" /></td>
				      <td><b>PT</b></td>
				      <td><input type="text" name="lstatus" value=<%=pt %> /></td>
				      </tr>
				      <tr>
				        <td><input type="text" name="lstatus" /></td>
				      <td><input type="text" name="lstatus" /></td>
				      <td><b >Total Deductions   </b></td>
       <td><input type="text" name="lstatus" value=<%=td %> /></td>
      
				</tr>		    
					<%
			 }
			
			else if(g>15001 && g<20000){
				 float pt=150;
// 				   System.out.println("PT:::150");
				   float td=emppf+780+by+150;
				   
// 				   System.out.println("Total Detuction::: "+td);
				   float tk=ctc-td;
// 				   System.out.println("Take Home:::"+tk);
				   %><tr>
				   
				    <td><input type="text" name="lstatus" /></td>
				      <td><input type="text" name="lstatus" /></td>
				      <td><b>PT</b></td>
				      <td><input type="text" name="lstatus" value=<%=pt %> /></td>
				      </tr>
				      <tr>
				        <td><input type="text" name="lstatus" /></td>
				      <td><input type="text" name="lstatus" /></td>
				      <td><b >Total Deductions   </b></td>
       <td><input type="text" name="lstatus" value=<%=td %> /></td>
      
				</tr>		    
					<%
			}
			else if(g>20000){
// 				   System.out.println("PT:::200");
				   float pt=200;
				   float td=emppf+780+by+200;
				   
// 				   System.out.println("Total Detuction::: "+td);
				   float tk=ctc-td;
// 				   System.out.println("Take Home:::"+tk);
				   %><tr>
				  
				     <td><input type="text" name="lstatus" /></td>
				      <td><input type="text" name="lstatus" /></td>
				      <td><b>PT</b></td>
				      <td><input type="text" name="lstatus" value=<%=pt %> /></td>
				      </tr>
				      <tr>
				        <td><input type="text" name="lstatus" /></td>
				      <td><input type="text" name="lstatus" /></td>
				      <td><b >Total Deductions   </b></td>
       <td><input type="text" name="lstatus" value=<%=td %> /></td>
      
				</tr>		    
					<%
			}else {
				float pt=0;
// 				System.out.println("PT::::0");
				 float td=emppf+p1+pp1+pp+by;
				   
// 				   System.out.println("Total Detuction::: "+td);
				   float tk=ctc1-td;
// 				   System.out.println("Take Home:::"+tk);
				   %><tr>
				   
				    <td><input type="text" name="lstatus" /></td>
				      <td><input type="text" name="lstatus" /></td>
				      <td><b>PT</b></td>
				      <td><input type="text" name="lstatus" value=<%=pt %> /></td>
				      </tr>
				      <tr>
				        <td><input type="text" name="lstatus" /></td>
				      <td><input type="text" name="lstatus" /></td>
				      <td><b >Total Deductions   </b></td>
       <td><input type="text"  name="lstatus" value=<%=td %> /></td>
      
				</tr>		    
					<%
			}
		}
	
			else {
				float pt=0;
				float td=emppf+p1+pp1+pp+by;
// 			   System.out.println("PT:::0");
			   %><tr>
			   
			    <td><input type="text" name="lstatus" /></td>
				      <td><input type="text" name="lstatus" /></td>
				      <td><b>PT</b></td>
				      <td><input type="text" value=<%=pt %> /></td>
				      </tr>
				      <tr>
				        <td><input type="text" name="lstatus" /></td>
				      <td><input type="text" name="lstatus" /></td>
				      <td><b >Total Deductions   </b></td>
       <td><input type="text" name="lstatus" value=<%=td %> /></td>
      
			</tr>		    
				<%
			}
		     
			   
			%>

<tr>
   
    <td><input type="text" name="lstatus" /></td>
     <td><input type="text" name="lstatus" /></td>
     <td><input type="text" name="lstatus" /></td>
       <td><input type="text" name="lstatus" /></td>
</tr>
<tr>
    <td><b>Gross Salary  </b></td>
      <td><input type="text"   name="lstatus" value=<%=g %> /></td>
      <td><input type="text" name="lstatus" /></td>
    
      <td><input type="text" name="lstatus" /></td>
</tr>
<% if(g!=0)
		  {
			 if(g>1600 && g<2000  )         {
				 float pt=16;
// 		     System.out.println("PT:::16");
		     float td=emppf+p1+pp1+pp+by+16;
				   
// 			 System.out.println("Total Detuction::: "+td);
				   
			 float tk=ctc1-td;
//              System.out.println("Take Home:::"+tk);
		%><tr>
   
    
				      <td><b>NET PAY</b></td>
				      <td><input type="text" name="lstatus"  value=<%=tk %> /></td>
				       <td><input type="text" name="lstatus" /></td>
				      </tr>
				      <tr>
				        <td><input type="text" name="lstatus" /></td>
				      <td><input type="text" name="lstatus" /></td>
				      
         <td><input type="text" name="lstatus" /></td>
				        <td><input type="text" name="lstatus" /></td>
				      
      
</tr>		    
	<% 			 
			}
			 else if(g>2001 && g<3000){
// 				   System.out.println("PT:::25");
				   float pt=25;
				   float td=emppf+p1+pp1+pp+by+25;
				   
// 		     System.out.println("Total Detuction::: "+td);
		     float tk=ctc1-td;
// 			  System.out.println("Take Home:::"+tk);
			  %>
			  	<tr>
   
    
				      <td><b>NET PAY</b></td>
				      <td><input type="text" name="lstatus" value=<%=tk %> /></td>
				       <td><input type="text" name="lstatus" /></td>
				      </tr>
				      <tr>
				        <td><input type="text" name="lstatus" /></td>
				      <td><input type="text" name="lstatus" /></td>
				      
         <td><input type="text" name="lstatus" /></td>
				        <td><input type="text" name="lstatus" /></td>
				      
      
</tr>		    
	<%	   
			}
			
			else if(g>3001 && g<4000){
// 				   System.out.println("PT:::35");
				   float pt=35;
				   float td=emppf+p1+pp1+pp+by+35;
				   
// 				   System.out.println("Total Detuction::: "+td);
				   
				   float tk=ctc1-td;
// 				   System.out.println("Take Home:::"+tk);
				   %><tr>
   
    
				      <td><b>NET PAY</b></td>
				      <td><input type="text" name="lstatus" value=<%=tk %> /></td>
				       <td><input type="text" name="lstatus" /></td>
				      </tr>
				      <tr>
				        <td><input type="text" name="lstatus" /></td>
				      <td><input type="text" name="lstatus" /></td>
				      
         <td><input type="text" name="lstatus" /></td>
				        <td><input type="text" name="lstatus" /></td>
				      
      
</tr>		    
					<%
			}
			
			
			
			
			else if(g>4001 && g<5000){
// 				   System.out.println("PT:::45");
				   float pt=45;
				   float td=emppf+p1+pp1+pp+by+45;
				   
// 				   System.out.println("Total Detuction::: "+td);
				   
				   float tk=ctc1-td;
// 				   System.out.println("Take Home:::"+tk);
				   %><tr>
   
    
				      <td><b>NET PAY</b></td>
				      <td><input type="text" name="lstatus" value=<%=tk %> /></td>
				       <td><input type="text" name="lstatus" /></td>
				      </tr>
				      <tr>
				        <td><input type="text" name="lstatus" /></td>
				      <td><input type="text" name="lstatus" /></td>
				      
         <td><input type="text" name="lstatus" /></td>
				        <td><input type="text" name="lstatus" /></td>
				      
      
</tr>		     
					<%
			}
			else if(g>5001 && g<6000){
				 float pt=60;
// 				   System.out.println("PT:::60");
				   float td=emppf+p1+pp1+pp+by+60;
				   
// 				   System.out.println("Total Detuction::: "+td);
				   
				   float tk=ctc1-td;
// 				   System.out.println("Take Home:::"+tk);
				   %><tr>
   
    
				      <td><b>NET PAY</b></td>
				      <td><input type="text" name="lstatus" value=<%=tk %> /></td>
				       <td><input type="text" name="lstatus" /></td>
				      </tr>
				      <tr>
				        <td><input type="text" name="lstatus" /></td>
				      <td><input type="text" name="lstatus" /></td>
				      
         <td><input type="text" name="lstatus" /></td>
				        <td><input type="text" name="lstatus" /></td>
				      
      
</tr>		    
					<%
			}
			else if(g>6001 && g<10000){
// 				   System.out.println("PT:::80");
				   float pt=80;
				   float td=emppf+p1+pp1+pp+by+80;
				   
// 				   System.out.println("Total Detuction::: "+td);
				   
				   
				   float tk=ctc1-td;
// 				   System.out.println("Take Home:::"+tk);
				   %><tr>
   
    
				      <td><b>NET PAY</b></td>
				      <td><input type="text" name="lstatus" value=<%=tk %> /></td>
				       <td><input type="text" name="lstatus" /></td>
				      </tr>
				      <tr>
				        <td><input type="text" name="lstatus" /></td>
				      <td><input type="text" name="lstatus" /></td>
				      
         <td><input type="text" name="lstatus" /></td>
				        <td><input type="text" name="lstatus" /></td>
				      
      
</tr>		      
					<%
			}
			 else if(g>10001 && g<15000){
				
				
				 float pt=100;
// 				   System.out.println("PT:::100");
				   float td=emppf+780+by+100;
				   
// 				   System.out.println("Total Detuction::: "+td);
				   
				   float tk=ctc-td;
// 				   System.out.println("Take Home:::"+tk);
				   %><tr>
   
    
				      <td><b>NET PAY</b></td>
				      <td><input type="text" name="lstatus" value=<%=tk %> /></td>
				       <td><input type="text" name="lstatus" /></td>
				      </tr>
				      <tr>
				        <td><input type="text" name="lstatus" /></td>
				      <td><input type="text" name="lstatus" /></td>
				      
         <td><input type="text" name="lstatus" /></td>
				        <td><input type="text" name="lstatus" /></td>
				      
      
</tr>		      
					<%
			 }
			
			else if(g>15001 && g<20000){
				 float pt=150;
// 				   System.out.println("PT:::150");
				   float td=emppf+780+by+150;
				   
// 				   System.out.println("Total Detuction::: "+td);
				   float tk=ctc-td;
// 				   System.out.println("Take Home:::"+tk);
				   %><tr>
   
    
				      <td><b>NET PAY</b></td>
				      <td><input type="text" name="lstatus" value=<%=tk %> /></td>
				       <td><input type="text" name="lstatus" /></td>
				      </tr>
				      <tr>
				        <td><input type="text" name="lstatus" /></td>
				      <td><input type="text" name="lstatus" /></td>
				      
         <td><input type="text" name="lstatus" /></td>
				        <td><input type="text" name="lstatus" /></td>
				      
      
</tr>		        
					<%
			}
			else if(g>20000){
// 				   System.out.println("PT:::200");
				   float pt=200;
				   float td=emppf+780+by+200;
				   
// 				   System.out.println("Total Detuction::: "+td);
				   float tk=ctc-td;
// 				   System.out.println("Take Home:::"+tk);
				   %><tr>
   
    
				      <td><b>NET PAY</b></td>
				      <td><input type="text" name="lstatus" value=<%=tk %> /></td>
				       <td><input type="text" name="lstatus" /></td>
				      </tr>
				      <tr>
				        <td><input type="text" name="lstatus" /></td>
				      <td><input type="text" name="lstatus" /></td>
				      
         <td><input type="text" name="lstatus" /></td>
				        <td><input type="text" name="lstatus" /></td>
				      
      
</tr>		        
					<%
			}else {
				float pt=0;
// 				System.out.println("PT::::0");
				 float td=emppf+p1+pp1+pp+by;
				   
// 				   System.out.println("Total Detuction::: "+td);
				   float tk=ctc1-td;
// 				   System.out.println("Take Home:::"+tk);
				   %><tr>
   
    
				      <td><b>NET PAY</b></td>
				      <td><input type="text" name="lstatus" value=<%=tk %> /></td>
				       <td><input type="text" name="lstatus" /></td>
				      </tr>
				      <tr>
				        <td><input type="text" name="lstatus" /></td>
				      <td><input type="text" name="lstatus" /></td>
				      
         <td><input type="text" name="lstatus" /></td>
				        <td><input type="text" name="lstatus" /></td>
				      
      
</tr>		        
					<%
			}
		}
	
			else {
				float pt=0;
				
				float td=emppf+p1+pp1+pp+by;
// 			   System.out.println("PT:::0");
			   float tk=ctc1-td;
			   
			   %><tr>
   
    
				      <td><b>NET PAY</b></td>
				      <td><input type="text" name="lstatus" value=<%=tk %> ></td>
				       <td><input type="text" name="lstatus" /></td>
				      </tr>
				      <tr>
				        <td><input type="text" name="lstatus" /></td>
				      <td><input type="text" name="lstatus" /></td>
				      
         <td><input type="text" name="lstatus" /></td>
				        <td><input type="text" name="lstatus" /></td>
				      
      
</tr>		    
				<%
			}
		     
			   
			%>


</table>
<table class="crtf_table" border="0" cellspacing="10" >
<tr>
<td> <b>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;Net pay in words: Twenty Three  Thousand Four Hundred Ninety Six  Rupees only


</b>

</td>
</tr>

 </table>
 <table class="crtf_table" style="border:0px; line-height:20px;">
<tr>
   
    <td style="float:center; text-align:center;">
    </p>
<p>&nbsp; &nbsp; &nbsp; *This is computer generated statement, hence signature is not required.
  <p>__________________________________________________________________________________________________</p>
    # Manjeera Majestic Commercial, 707, 7th Floor, Jntu Road, Kukatpally,Hyderabad-500 085 <br />
   Phone: 040-65535599, Email: hr@cubicitsolution.in<br>
   www.cubicitsolution.in
    </td>
</tr>
</table>
 

 </div>
 </center><br><br>

</body>
  </html>
  
  
