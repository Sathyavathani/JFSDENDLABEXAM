<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View All Students</title>
    <style>
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
        }
        .navbar {
            width: 100%;
            background-color: black;
            padding: 15px;
            color: white;
            position: fixed;
            top: 0;
            left: 0;
            text-align: center;
            font-size: 18px;
            margin-top: 30px;
        }
        .navbar a {
            color: white;
            text-decoration: none;
            margin: 0 10px;
        }
        body {
            background-color: #e3f2fd;
            padding-top: 70px;
            padding-bottom: 20px;
            display: flex;
            flex-direction: column;
            align-items: center;
        }
        h3 {
            text-align: center;
            color: #1565c0;
            font-size: 24px;
            margin-top: 20px;
            margin-bottom: 20px;
        }
        table {
            width: 100%;
            max-width: 1200px;
            margin: 20px auto;
            border-collapse: collapse;
            background-color: #ffffff;
            border: 2px solid #b0bec5;
            box-shadow: 0px 4px 20px rgba(0, 0, 0, 0.1);
        }
        th, td {
            padding: 12px;
            text-align: center;
            word-wrap: break-word;
            border: 1px solid #b0bec5;
        }
        th {
            background-color: black;
            color: white;
            font-weight: 600;
        }
        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        tr:nth-child(odd) {
            background-color: #ffffff;
        }
    </style>
</head>
<body>
    <br/>
    <h3><u>View All Students</u></h3>
   
    <table>
        <tr>
            <th>ID</th>
            <th>NAME</th>
            <th>GENDER</th>
            <th>Year</th>
            <th>SEMESTER</th>
            <th>DEPARTMENT</th>
            <th>EMAIL</th>
            <th>CONTACT</th>
        </tr>
        <c:forEach items="${stulist}" var="student">
            <tr>
                <td><c:out value="${student.id}"/></td>
                <td><c:out value="${student.name}"/></td>
                <td><c:out value="${student.gender}"/></td>
                <td><c:out value="${student.year}"/></td>
                <td><c:out value="${student.semester}"/></td>
                <td><c:out value="${student.department}"/></td>
                <td><c:out value="${student.email}"/></td>
                <td><c:out value="${student.contact}"/></td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
