<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head><title>Train Tickets</title>
<style>
body {
    font-family: Arial, sans-serif;
    background-color: #f2f2f2;
    text-align: center;
}
h2 {
    color: #333;
}
table {
    margin: 20px auto;
    border-collapse: collapse;
    width: 80%;
    background-color: white;
}
th, td {
    border: 1px solid #ccc;
    padding: 10px;
    text-align: center;
}
th {
    background-color: brown;
    color: white;
     text-align: center;
}

.Form {
    display: none;
    position: fixed;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    background: white;
    padding: 20px;
    border: 2px solid #444;
    box-shadow: 0px 0px 10px gray;
    border-radius: 10px;
    text-align: center;
}
.Form input {
    margin: 5px;
    padding: 5px;
    width: 90%;
}
button {
    margin: 5px;
    padding: 8px 15px;
    background: #218278;
    color: white;
    border: none;
    cursor: pointer;
    border-radius: 5px;
   
}
</style>
</head>
<body>

<h2>Train Tickets</h2>

<table border="1">
<tr>
    <th>ID</th><th>Name</th><th>Source</th><th>Destination</th>
    <th>Fare</th><th>Action</th>
</tr>

<c:forEach var="t" items="${ticket}"  varStatus="status">
<tr>
    <td>${t.id}</td>
    <td>${t.passengerName}</td>
    <td>${t.source}</td>
    <td>${t.destination}</td>
    <td>${t.finalFare}</td>
    <td><a href="delete4/${t.id}">Delete</a></td>
</tr>
</c:forEach>

</table>

<a href="bookticket">Book New Ticket</a>

</body>
</html>
