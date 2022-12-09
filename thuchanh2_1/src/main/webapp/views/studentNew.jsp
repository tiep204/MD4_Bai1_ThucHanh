<%--
  Created by IntelliJ IDEA.
  User: This MC
  Date: 08/12/2022
  Time: 10:18 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>

<head>
  <script type="text/javascript" src="<%=request.getContextPath()%>/ckeditor/ckeditor.js"></script>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="Responsive Admin &amp; Dashboard Template based on Bootstrap 5">
  <meta name="author" content="AdminKit">
  <meta name="keywords"
        content="adminkit, bootstrap, bootstrap 5, admin, dashboard, template, responsive, css, sass, html, theme, front-end, ui kit, web">

  <link rel="preconnect" href="https://fonts.gstatic.com">
  <link rel="shortcut icon" href="img/icons/icon-48x48.png"/>

  <link rel="canonical" href="https://demo-basic.adminkit.io/"/>

  <title>Create New Student</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">

  <link href="<%=request.getContextPath()%>/css/app.css" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;600&display=swap" rel="stylesheet">
</head>


<body>
<%--<form action="<%=request.getContextPath()%>/studentController/create" method="post">--%>
<%--  <table>--%>
<%--    <tr>--%>
<%--      <td>Student Name</td>--%>
<%--      <td><input type="text" name="studentName"></td>--%>
<%--    </tr>--%>
<%--    <tr>--%>
<%--      <td>Age</td>--%>
<%--      <td><input type="text" name="age"></td>--%>
<%--    </tr>--%>
<%--    --%>
<%--    --%>
<%--    <tr>--%>
<%--      <td>Sex</td>--%>
<%--      <td>--%>
<%--        <input type="radio" name="sex" id="male" checked/><label for="male">Male</label>--%>
<%--        <input type="radio" name="sex" id="female"/><label for="female">Female</label>--%>
<%--      </td>--%>
<%--    </tr>--%>
<%--    <tr>--%>
<%--      <td>BirthDate</td>--%>
<%--      <td>--%>
<%--        <input type="date" name="birthDate"/>--%>
<%--      </td>--%>
<%--    </tr>--%>
<%--    <tr>--%>
<%--      <td>Address</td>--%>
<%--      <td><input type="text" name="address"/> </td>--%>
<%--    </tr>--%>
<%--    <tr>--%>
<%--      <td>Status</td>--%>
<%--      <td>--%>
<%--        <select name="status">--%>
<%--          <option value="true">Hoạt động</option>--%>
<%--          <option value="false">Nghỉ học</option>--%>
<%--        </select>--%>
<%--      </td>--%>
<%--    </tr>--%>
<%--    <tr>--%>
<%--      <td colspan="2">--%>
<%--        <input type="submit" value="Create">--%>
<%--      </td>--%>
<%--    </tr>--%>
<%--  </table>--%>
<%--</form>--%>


<main class="content">
  <div class="container-fluid p-0">
    <form action="<%=request.getContextPath()%>/studentController/create" method="post">
      <table border="1">
        <tr>
          <td>Student Name</td>
          <td><input type="text" name="studentName"></td>
        </tr>
        <tr>
          <td>Age</td>
          <td><input type="text" name="age"></td>
        </tr>
        <td>Sex</td>
        <td>
          <input type="radio" name="sex" id="male" checked/><label for="male">Male</label>
          <input type="radio" name="sex" id="female"/><label for="female">Female</label>
        </td>
        <tr>
          <td>BirthDate</td>
          <td>
            <input type="date" name="birthDate"/>
          </td>
        </tr>
        <tr>
          <td>Address</td>
          <td><input type="text" name="address"/> </td>
        </tr>
        <tr>
          <td>Status</td>
          <td>
            <select name="status">
              <option value="true">Hoạt động</option>
              <option value="false">Nghỉ học</option>
            </select>
          </td>
        </tr>
        <tr>
          <td colspan="2"><input type="submit" value="Create" name="action"/></td>
        </tr>
      </table>

    </form>
  </div>
</main>



</body>
</html>
