<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<body>
<h2>All employees</h2>
<br>
<table>
    <tr>
        <th>Name:</th>
        <th>Surname:</th>
        <th>Department:</th>
        <th>Salary:</th>
        <th>Operations</th>
    </tr>

    <c:forEach var="employee" items="${allEmployees}">

        <c:url var="updateButton" value="/updateInfo">
            <c:param name="employeeId" value="${employee.id}"/>
        </c:url>

        <c:url var="deteleButton" value="/deleteEmployee">
            <c:param name="employeeId" value="${employee.id}"/>
        </c:url>

        <tr>
            <td>${employee.name}</td>
            <td>${employee.surname}</td>
            <td>${employee.department}</td>
            <td>${employee.salary}</td>
            <td>
                <input type="button" value="Update"
                onclick="window.location.href = '${updateButton}'"/>
                <input type="button" value="Delete"
                       onclick="window.location.href = '${deteleButton}'"/>
            </td>
        </tr>
    </c:forEach>

</table>

<br>
<input type="button" value = "Add"
    onclick="window.location.href = 'addNewEmployee' "/>

</body>
</html>
