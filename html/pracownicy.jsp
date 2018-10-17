<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix ="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix ="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<link rel="stylesheet" href="css/styltabela.css" type="text/css" />

<%@ page import="java.sql.*" %>
<% Class.forName("com.mysql.jdbc.Driver"); %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset==UTF-8">
<title>Pracownicy</title>
</head>
<body>
<f:view>
<br>

<%if (request.getAttribute("mes")!= null){%>

<%=request.getAttribute("mes")%>

<br/>
<%
}
%>



<form action="html/newuser.jsp" method = "get">
<input type ="submit" value = "Dodaj pracownika">




</form>

</f:view>
<p>

<table border="0" cellspacing="0" >


<form action="${pageContext.request.contextPath}/editUser.do" method = "POST">
<tr>
<td width="100px" align="center">Lp.</td>
<td width="100px" align="center">Imię</td>
<td width="100px" align="center">Nazwisko</td>
<td width="100px" align="center">Stanowisko</td>
<td width="100px" align="center">Godziny</td>
<td width="100px" align="center"></td>
<td width="100px" align="center"></td>
<td width="100px" align="center"></td>

</tr>
<c:forEach var="pracownik" items="${pracowniks}">
<tr>
<td width="100px" align="center"><c:out value="${pracownik.idpracownik}"/></td>
<td width="100px" align="center"><c:out value="${pracownik.imie}"/></td>
<td width="100px" align="center">${pracownik.nazwisko}</td>
<td width="100px" align="center">${pracownik.stanowisko}</td>
<td width="100px" align="center">${pracownik.iloscGodzin}</td>



<td><a href="${pageContext.request.contextPath}/editUser.do?idpracownik=<c:out value='${pracownik.idpracownik}' />">Edytuj</a> </td>
<td><a href="${pageContext.request.contextPath}/godzinyUser.do?idpracownik=<c:out value='${pracownik.idpracownik}' />">Raportuj Godziny</a> </td>                        
<td><a href="${pageContext.request.contextPath}/usunUser.do?idpracownik=<c:out value='${pracownik.idpracownik}' />">Usuń Pracownika</a> </td>   
  







</c:forEach>
</form></td>
</tr>

<br>
<br>
<br>
</table>
<br>
<br>
<br>
<br>
<br>


</body>
</html>