<%--
  Created by IntelliJ IDEA.
  User: This MC
  Date: 08/12/2022
  Time: 11:05 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Update Student</title>
</head>
<body>
<form action="<%=request.getContextPath()%>/studentController/update" method="post">
  <table>
    <tr>
      <td>Student Id</td>
      <td><input type="text" name="studentId" value="${stUpdate.studentId}" readonly></td>
    </tr>
    <tr>
      <td>Student Name</td>
      <td><input type="text" name="studentName" value="${stUpdate.studentName}"></td>
    </tr>
    <tr>
      <td>Age</td>
      <td><input type="text" name="age" value="${stUpdate.age}"></td>
    </tr>
    <tr>
      <td>Sex</td>
      <td>
        <input type="radio" name="sex" id="male" checked="${stUpdate.sex?"checked":""}"/><label for="male">Male</label>
        <input type="radio" name="sex" id="female" checked="${stUpdate.sex?"":"checked"}"/><label for="female">Female</label>
      </td>
    </tr>
    <tr>
      <td>BirthDate</td>
      <td>
        <input type="date" name="birthDate" value="${stUpdate.birthDate}"/>
      </td>
    </tr>
    <tr>
      <td>Address</td>
      <td><input type="text" name="address" value="${stUpdate.address}"/> </td>
    </tr>
    <tr>
      <td>Status</td>
      <td>
        <select name="status">
          <option value="true" ${stUpdate.status?"selected":""}>Hoạt động</option>
          <option value="false" ${stUpdate.status?"":"selected"}>Nghỉ học</option>
        </select>
      </td>
    </tr>
    <tr>
      <td colspan="2">
        <input type="submit" value="Update">
      </td>
    </tr>
  </table>
</form>
</body>
</html>
