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
<td width="1px" align=""></td>
<td width="100px" align="">Imię</td>
<td width="100px" align="">Nazwisko</td>
<td width="100px" align="">Stanowisko</td>
<td width="1px" align=""></td>

</tr>
<tr>
<p>




<form action="${pageContext.request.contextPath}/saveUser.do" method = "POST">
<td width="1px" align="center"> <label></label> <input type="hidden" name= "idpracownik" id="idpracownik" border="0px" value='${para.idpracownik}'"> 
<td width="100px" align="center"> <label></label> <input type="text" name= "imie" id="imie" border="0px" value='${para.imie}'">
<td width="100px" align="center"> <label></label> <input type="text" name= "nazwisko" id="nazwisko" border="0px" value='${para.nazwisko}'"> 
<td width="100px" align="center"> <label></label> <input type="text" name= "stanowisko" id="stanowisko" border="0px" value='${para.stanowisko}'">
<td width="1px" align="center"> <label></label> <input type="hidden" name= "iloscGodzin" id="iloscGodzin" border="0px" value='${para.iloscGodzin}'">

<input type ="submit" value="zapisz" id = "zapisz">





</td>
</form>
</tr>
</table>




</p>




</f:view>
</body>
</html>