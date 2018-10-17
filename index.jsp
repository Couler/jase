<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix ="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix ="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Zaloguj się</title>
</head>
<body>
<body bgcolor="black" text="#FDF983">

</body>
<center>



<img src="${pageContext.request.contextPath}/logo.png" width=550px height=500px/> </br>


<%if (request.getAttribute("error")!= null){%>

<%=request.getAttribute("error")%><br/>
<%
}
%>
</br>

<form action = "${pageContext.request.contextPath}/ServletUserLogin" method = "post">
<em></em>
<form>
<label>User</label> <input type="text" name= "username" id="username"><br/> 
<label>Pass</label> <input type="password"  name= "password" id="password"> <br/> 

<label></label> <select name="role" id="role">
		<option>admin</option>
		<option>user</option>
		
	</select>






<input type="submit" value=" Zaloguj" id = "zaloguj">


</center>

</form>






<f:view>

</f:view>
</body>
</html>