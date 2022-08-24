<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="javax.xml.parsers.DocumentBuilderFactory" %>
<%@page import="javax.xml.parsers.DocumentBuilder" %>
<%@page import="org.w3c.dom.*" %>
<%@page import="java.io.File" %>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<%
			DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
			DocumentBuilder db = dbf.newDocumentBuilder();
			Document doc = db.parse(new File("file.xml");
	
			NodeList locs = doc.getElementsByTagName("tagName");

		%>
		<title>XML Parser</title>
	</head>
	<body> 
		<table>		
			<%
				for(int x=0; x<locs.getLength(); x++){
			%>
				<tr>
					<td>
						<p><%=locs.item(x).getFirstChild().getNodeValue()%></p>
					</td>
				</tr>
			<%		
				}
			%>
		</table>
	</body>
</html>
