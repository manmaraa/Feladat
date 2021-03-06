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
    .Price{width:20%}
    td{padding:2px;
    }
</style>

</head>
<body>
<br>
<form action="" method="get" action="search">
    <input type="text" class="form-control" name="search" placeholder="Search here..."/>
</form>
<table>
    <tr>
        <th class="name">Name</th>
        <th class="Description">Description</th>
        <th class="Price">Price</th>
        <th class="Stock">Quantity of Stock</th>
    </tr>
    <div class="tablaadatok">

            <tr>
                <c:forEach items="${products}" var="product">
                <td class="name" >${product.name}</td>
                <td class="Description">${product.description}</td>
                <td class="Price">${product.price}</td>
                <td class="Stock">${product.quantity}</td>
                </c:forEach>
            </tr>

    </div>
</table>

</body>
</html>
