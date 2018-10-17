<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix ="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix ="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@ page isELIgnored="false"%>
<script type="text/javascript"  src="<c:out value="${pageContext.request.contextPath}"/>/jQuery.js"></script>



<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>edytuj pracownika</title>
</head>
<body>
<f:view>
<link rel="stylesheet" href="css/styltabela.css" type="text/css" />

<br>


<table border="0" cellspacing="0" >


</br>

<tr>
<td width="1px" align="center"></td>
<td width="100px" align="center">Imię</td>
<td width="100px" align="center">Nazwisko</td>
<td width="100px" align="center">Godziny</td>
<td width="100px" align="center"></td>

</tr>
<tr>
<p>




<form action="${pageContext.request.contextPath}/godzinyUser.do" method = "POST">
<td width="0px" align="center"> <label></label> <input type="hidden" name= "idpracownik" id="idpracownik" border="0px" value='${para.idpracownik}'"> 
<td width="100px" align="center"><c:out value="${para.imie}"/></td>
<td width="100px" align="center">${para.nazwisko}</td>
<td width="100px" align="center"> <label></label> <input type="text" name= "iloscGodzin" id="iloscGodzin" border="0px" value='${para.iloscGodzin}'">

<td width="100px" align="center"><input type ="submit" value="Zapisz" id = "Zapisz">





</td>
</form>
</tr>
</table>




</p>




</f:view>
</body>
</html>