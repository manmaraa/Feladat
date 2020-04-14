<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>My shop</title>
<style>
*{
  margin:0;
  padding:0;
  box-sizing:border-box;
}
h1{
  color:#34e1eb;
  font-family: verdana;
  font-size:60px;

}
hr{

}
a{
  text-decoration:none;
}
.rendez{
  color:white;
  background-color: #eb3434;
  font-family: verdana;
  font-size: 15px;
  padding:5px;
  margin:4px;

border:4px groove red;
justify-content: space-between;



}
.gombok{

  align:center;
  margin-top: 25px;
position: center;


}
body{
  margin:0 auto;
  height:1200px;
align-items: center;}

</style>
</head>
  <body><header>
<a href="/products/all/"><h1>My shop</h1></a>
<hr>
<div class="gombok">
<a class="rendez" href="/Available/">Only Available</a>
<a class="rendez" href="/Cheapest/">Cheapest First</a>
<a class="rendez" href="/Nike/">Contains Nike</a>
<a class="rendez" href="/Average/">Average Stock</a>
<a class="rendez" href="/expensive/">Most Expensive Available</a>
</div>
</header>
 </body>
</html>
