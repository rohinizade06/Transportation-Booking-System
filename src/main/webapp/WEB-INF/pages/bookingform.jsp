<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<title>Book Ticket</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f9;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
    }

    h2 {
        text-align: center;
        color: #333;
    }

    form {
        background-color: #fff;
        padding: 30px;
        border-radius: 10px;
        box-shadow: 0px 5px 15px rgba(0,0,0,0.2);
        width: 350px;
    }

    input[type="text"], select {
        width: 100%;
        padding: 10px;
        margin-top: 5px;
        margin-bottom: 15px;
        border: 1px solid #ccc;
        border-radius: 5px;
        box-sizing: border-box;
        font-size: 14px;
    }

    button {
        width: 100%;
        padding: 12px;
        background-color: #4CAF50;
        color: white;
        font-size: 16px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        transition: background-color 0.3s;
    }

    button:hover {
        background-color: #45a049;
    }

    label {
        font-weight: bold;
        color: #555;
    }
</style>
</head>
<body>

<form action="bookticket" method="post">
    <h2>Transportation Booking Form</h2>
    
    <label>Passenger Name:</label>
    <input type="text" name="passengerName" placeholder="Enter name" required>

    <label>Transport Type:</label>
    <select name="transportType" required>
        <option>Bus</option>
        <option>Train</option>
        <option>Flight</option>
    </select>

    <label>Route:</label>
    <select name="rid" required>
    <c:forEach var="r" items="${routes}">
        <option value="${r.id}">
            ${r.source} → ${r.destination} (₹${r.price})
        </option>
    </c:forEach>
</select>
    

    <button type="submit">Book Ticket</button>
</form>

</body>
</html>
