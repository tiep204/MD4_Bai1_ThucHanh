<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--
  Created by IntelliJ IDEA.
  User: This MC
  Date: 08/12/2022
  Time: 9:49 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Responsive Admin &amp; Dashboard Template based on Bootstrap 5">
    <meta name="author" content="AdminKit">
    <meta name="keywords"
          content="adminkit, bootstrap, bootstrap 5, admin, dashboard, template, responsive, css, sass, html, theme, front-end, ui kit, web">

    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link rel="shortcut icon" href="<%=request.getContextPath()%>/views/admin/img/icons/icon-48x48.png"/>

    <link rel="canonical" href="https://demo-basic.adminkit.io/"/>

    <title>List Student</title>
    <link href="<%=request.getContextPath()%>/css/app.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;600&display=swap" rel="stylesheet">

</head>
<body>

<!-- /.card-header -->
<div class="card-body">
    <table id="example1" class="table table-bordered table-striped text-center">
        <tbody>
        <thead>
        <tr>
            <th>Student ID</th>
            <th>Student Name</th>
            <th>Age</th>
            <th>Sex</th>
            <th>BirthDate</th>
            <th>Address</th>
            <th>Status</th>
            <th colspan="2">Action</th>
        </tr>
        </thead>
        <tbody>


        <c:forEach items="${listStudent}" var="st">
            <tr>
                <td>${st.studentId}</td>
                <td>${st.studentName}</td>
                <td>${st.age}</td>
                <td>${st.sex?"Nam":"Nữ"}</td>
                <td><fmt:formatDate value="${st.birthDate}" pattern="dd/MM/yyyy"/></td>
                <td>${st.address}</td>
                <td>${st.status?"Đang học":"Nghỉ học"}</td>
                <td>
                    <a href="<%=request.getContextPath()%>/studentController/initUpdate?studentId=${st.studentId}">Update</a>
                </td>
                <td>
                    <a href="<%=request.getContextPath()%>/studentController/delete?studentId=${st.studentId}">Delete</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>

    </table>
</div>
<!-- /.card-body -->


<a href="<%=request.getContextPath()%>/studentController/initCreate">Create New Student</a>
</body>
</html>
