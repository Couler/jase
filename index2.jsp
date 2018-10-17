<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix ="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix ="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>



<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<link rel="stylesheet" href="css/styl.css" type="text/css" />
<link rel="stylesheet" href="css/styltabela.css" type="text/css" />

<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Najlepsze soki w Truj-mieście</title>
</head>


 <%
//allow access only if session exists
String user = (String) session.getAttribute("username");
String username = null;
Cookie[] cookies = request.getCookies();
if(cookies !=null){
for(Cookie cookie : cookies){
	if(cookie.getName().equals("user")) username = cookie.getValue();

}
}
%>





<header>

 <ul>

 <a href="index.jsp"><img src="html/logg.png" style="padding: 1px; padding-left:50px" > </a>
 


<tr>

<li><a href="zamowienia" target="index_frame">Zamówienia</a></li>
  <li><a href="receptury" target="index_frame">Receptury</a>
  <li><a href="magazyn" target="index_frame">Magazyn</a></li>
  <li><a href="pracownicy" target="index_frame">Pracownicy</a>
    <li><a href="${pageContext.request.contextPath}/logout">Wyloguj się </a></li>

 <li> </li>

</ul> 
 

</header>




 <br>
 <br>

<footer class="footer">
  <div class="container">
  <nav class="nav" role="navigation">
    <div class="container nav-elements">
      <div class="branding">
        <center>
        <iframe name="index_frame" src="html/dzisiajZamowienia.jsp" frameborder="0" 
		width=70% height=800px scrolling="no"></iframe>
  </center>
      </div>
    </div>
  </nav>
  <p class="legal"> © Łukasz Majchrzyk</p>
</div><!-- container -->
</footer><!-- footer -->

</body>