<%--
  Created by IntelliJ IDEA.
  User: manhertzmartin
  Date: 2020. 04. 20.
  Time: 10:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%!
    private Connection connection;
%><% String roll_no=request.getParameter("roll_no");
    String driver = "com.mysql.jdbc.Driver";
try{Class.forName(driver);
} catch (ClassNotFoundException e) {
    e.printStackTrace();
    Connection connection = null;
    Statement statement = null;
    ResultSet resultSet = null;
}%>
<html>
<head>
    <title>Title</title>
    <%
        try{
            connection = DriverManager.getConnection(connectionUrl+database, userid, password);
            statement=connection.createStatement();
            String sql ="select * from user_data where roll_no="+roll_no+"' ";
            resultSet = statement.executeQuery(sql);
            while(resultSet.next()){
    %>
</head>
<body>

</body>
</html>
