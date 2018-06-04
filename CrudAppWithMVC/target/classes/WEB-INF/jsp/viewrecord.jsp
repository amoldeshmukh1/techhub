<%@page import="com.model.AddRecord"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<c:set var="v" value="${viewdata}" scope="session" />

	<%
		java.util.List list = (java.util.List) session.getAttribute("v");
		java.util.Iterator i = list.iterator();
	%>
	<table border='5' align='center' width='80%'>

		<tr>
			<th>NAME</th>
			<th>EMAIL</th>
			<th>CONTACT</th>
			<th>DELETE</th>
			<th>UPDATE</th>

		</tr>
		<%
			while (i.hasNext()) {
		AddRecord ad=(AddRecord)i.next();
         %>
         <tr>
         <td><%=ad.getName()%></td>
         <td><%=ad.getEmail() %></td>
         <td><%=ad.getContact()%></td>
         <td><a href='del?e=<%=ad.getEmail()%>'>Delete</a></td>
         <td><a href=''>Update</a></td>
         
         </tr>
         <% 
			}
		%>
	 </table>
</body>
</html>







