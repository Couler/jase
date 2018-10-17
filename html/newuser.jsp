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
<title>dodaj pracownika</title>
</head>
<body>
<f:view>
<link rel="stylesheet" href="css/styltabela.css" type="text/css" />
<section id = registration" class = "section">
<div class "container tagline">
</div>
<br>


<%if (request.getAttribute("mes")!= null){%>

<%=request.getAttribute("mes")%>

<br/>
<%
}
%>
</br>


<form action="${pageContext.request.contextPath}/newuser.do" method = "post"> 




<p>
<form>
<label> Imie</label> <input type="text" name= "imie" id="imie" border="0px"> <br/>
<label> Nazwisko</label> <input type="text" name= "nazwisko" id="nazwisko"> <br/>
<label> Stanowisko</label> <input type="text" name= "stanowisko" id="stanowisko"> <br/>
<label> Ilość Godzin</label> <input type="text" name= "iloscGodzin" id="iloscGodzin"> <br/>

<input type ="submit" value="Dodaj" id = "dodaj">

</form>
</p>








</f:view>
</body>
</html>