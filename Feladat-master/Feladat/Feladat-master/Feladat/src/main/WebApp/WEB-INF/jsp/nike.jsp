<%@ include file="header.jsp"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<style>

      *{

        padding:0;
        box-sizing:border-box;
        font-family: verdana;
      }
      body{
      Height:auto;
      width:900px;
position:static;
      }
      .tablaadatok{
      font-size:15px;
      }
      td.name,td.Description{text-align:left;
      }
      
      th{
        font-size:20px;
        background-color:#34e1eb;
      }
      tr{
      text-align:center;
        height:80px;
border:4px solid white;
      }
      table{margin-top:40px;
      
      }
      th{padding:20px;
      text-align:center;}

      .name{width:20%;}
      .Description{width:40%;}
      .Stock{width:20%;}
      .Price{20%}
       td{padding:2px;
      }
    </style>
   
</head>
<body>

<table>
      <tr>
        <th class="name">Name</th>
        <th class="Description">Description</th>
        <th class="Price">Price</th>
        <th class="Stock">Quantity of Stock</th>
      </tr>
      <div class="tablaadatok">
      <c:forEach items="${products}" var="product"> 

      <tr>
      <td class="name" >${product.name}</td>
<td class="Description">${product.description}</td>
<td class="Price">${product.price}</td>
<td class="Stock">${product.quantity}</td>

      </tr>

      </c:forEach>
      <c:forEach items="${products}" var="product"> 

      <tr>
      <td class="name"></td>
<td class="Description"></td>
<td class="Price"></td>
<td class="Stock"></td>
      </tr>

       </c:forEach>
       <c:forEach items="${products}" var="product"> 

      <tr>
      <td class="name"></td>
<td class="Description"></td>
<td class="Price"></td>
<td class="Stock"></td>
      </tr>

      </c:forEach>
      <c:forEach items="${products}" var="product"> 

      <tr>
      <td class="name"></td>
<td class="Description"></td>
<td class="Price"></td>
<td class="Stock"></td>
      </tr>

      </c:forEach>
      <c:forEach items="${products}" var="product">

      <tr>
      <td class="name"></td>
<td class="Description"></td>
<td class="Price"></td>
<td class="Stock"></td>
      </tr>

      </c:forEach>
      </div>
    </table>
</body>
</html>
