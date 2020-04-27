<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="header.jsp"%>
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
            font-family: Verdana;
        }
        h1{
            color:#34e1eb;
            font-family: verdana;
            font-size:60px;
        }
        h2{
            font-family: verdana;
            font-size:40px;
            margin-top: 25px;
        }
        p{ font-family: verdana;
        font-size: 40px;}
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
            height:auto;
            width:900px;
            align-items: center;}
    </style>
</head>
<body>
 <br>
 <header>
  <p class="átlag"> <h2>The Average Stock is: ${products}</h2></p>
 </header>
</body>
</html>
