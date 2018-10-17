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
<title>Magazyn</title>
</head>
<body>
<f:view>
<br>



</form>

</f:view>
<p>

<table border="0" cellspacing="0" >



<tr>
<td width="100px" align="center">Lp.</td>
<td width="100px" align="center">Opis</td>
<td width="100px" align="center">Cena[zł/kg]</td>
<td width="100px" align="center">Ilość [kg]</td>
<td width="100px" align="center"></td>
<td width="100px" align="center"></td>
</tr>
<c:forEach var="towar" items="${towars}">
<tr>
<td width="100px" align="center"><c:out value="${towar.idtowar}"/></td>
<td width="100px" align="center"><c:out value="${towar.opis}"/></td>
<td width="100px" align="center">${towar.cena }</td>
<td width="100px" align="center">${towar.ilosc}




<td><a href="${pageContext.request.contextPath}/servletPz.do?idtowar=<c:out value='${towar.idtowar}' />">Zrób PZ</a> </td>
<td><a href="${pageContext.request.contextPath}/servletWz.do?idtowar=<c:out value='${towar.idtowar}' />">Zrób WZ</a> </td>                        


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