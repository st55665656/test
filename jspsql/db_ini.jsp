<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page language="java" import="java.sql.*" %>
<%
    String ip ="127.0.0.1:3306";
    String user = "root";
    String pass = "22840864";
    String database = "test1";
    String driver ="com.mysql.jdbc.Driver";
    Connection conn = null;
    Statement stmt =null;
    ResultSet rs = null;

    request.setCharacterEncoding("utf-8");


    try{
      String url = "jdbc:mysql://" + ip + "/" + database + "?useUnicode=true&characterEncoding=utf-8";
      Class.forName(driver).newInstance();
      conn = DriverManager.getConnection(url,user,pass);
      stmt = conn.createStatement();
      String na1 =request.getParameter("na");
      out.println(na1);
      String sql2 = "insert into table1 (name) values ( '" + na1 + "')";
      stmt.executeUpdate(sql2);
      String sql = "select * from table1;";
      rs = stmt.executeQuery(sql);

      if(rs != null){
        while(rs.next()){
          String id = rs.getString("index");
          String name = rs.getString("name");
          out.println(id+"　　");
          out.println(name);%><br/><%

        }
      }

    }catch(Exception ex){
      out.println(ex);
    }
    %>
    <!DOCTYPE html>
  <html>
  <head>
    <meta charset="utf-8">
      <title></title>

  </head>

<body>
</body>
</html>
