<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="java.util.ArrayList"%>
<%@page import="form.StudentForm"%>
<%@page import="java.util.Iterator"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List Student</title>

<style>
table, td, th {
	border: 1px solid black;
}

table {
	border-collapse: collapse;
	width: 70%;
}

td {
	height: 50px;
	vertical-align: bottom;
}

th {
	text-align: center;
}
</style>
</head>

<body>
	<%
	ArrayList<StudentForm> List = (ArrayList) request.getAttribute("list");
	%>
	<br>
		<br><h2>
		<a href="logout.do">Logout</a>
		</h2>
		<br>
		<br>
		<%
	String statusDelete = (String) request.getAttribute("statusDelete");
	%>
	<%
		if (statusDelete != null) {
		%>
		<h2>
		<font color="red">
			<p>Delete Student successfully !</p>
		</font>
		</h2>
		<%
		}
		%>
		<br>	
		<br>	
	
	<br>
	<h3>Show List dung For each</h3>
	<table cellspacing="2" cellpadding="2">
		<tr>
			<th>ID</th>
			<th>Name</th>
			<th>Day of birth</th>
			<th>GPA</th>
			<th>Time of Admission</th>
			<th>Delete St</th>
			<th>Edit St</th>
		</tr>
		<%
		if (request.getAttribute("list") != null) {
			for (StudentForm st : List) {
		%>
		<tr>
			<form action="delete.do" method="post">
			<td><%=st.getIdst()%></td>
			<td><%=st.getName()%></td>
			<td><%=st.getDayofbirth()%></td>
			<td><%=st.getGpa()%></td>
			<td><%=st.getYear()%></td>
			<td><input type="hidden" name="delete" value="<%=st.getIdst()%>" />
				<input type="submit" name="submit" value="Delete" />
				</form></td>
		</tr>
		</form>
		<%
		}
		}
		%>
	</table>
<br>
	<br>
	<br>
	<br>
	<br>
</body>
</html>