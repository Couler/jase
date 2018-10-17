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
<title>PZ</title>
</head>
<body>
<f:view>
<link rel="stylesheet" href="css/styltabela.css" type="text/css" />

<br>


<table border="0" cellspacing="0" >


</br>

<tr>
<td width="0px" align="center"></td>
<td width="100px" align="center">Opis</td>
<td width="100px" align="center">Cena</td>
<td width="100px" align="center">Ilość</td>
<td width="100px" align="center"></td>

</tr>
<tr>



<form action="${pageContext.request.contextPath}/servletWz.do" method = "POST">
<td width="0px" align="center"> <label></label> <input type="hidden" name= "idtowar" id="idtowar" border="0px" value='${towar.idtowar}'"> 

<td width="100px" align="center"><c:out value="${towar.opis}"/></td>
<td width="100px" align="center"><c:out value="${towar.cena}"/></td>
<td width="100px" align="center"> <label></label> <input type="text" name= "ilosc" id="ilosc" border="0px" value='${0}'">

<td width="100px" align="center"><input type ="submit" value="Zapisz" id = "Zapisz">





</td>
</form>
</tr>
</table>




</p>




</f:view>
</body>
</html>