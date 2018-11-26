package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/DownloadServlet ")
public class DownloadServlet  extends HttpServlet{
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String filename = "jsppayslip.jsp"; 
		String filepath = "D:\\Users\\cubic\\git\\Nandakishore\\Ticket_Test_Management\\WebContent/"; 
		response.setContentType("APPLICATION/OCTET-STREAM"); 
		response.setHeader("Content-Disposition","attachment; filename=\"" + filename + "\""); 

		java.io.FileInputStream fileInputStream = new java.io.FileInputStream(filepath + filename);

		int i; 
		while ((i=fileInputStream.read()) != -1) {
		  out.write(i); 
		} 
		fileInputStream.close(); 
		out.close(); 

	}
}

