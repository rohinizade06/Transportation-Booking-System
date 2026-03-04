<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Transportation Booking System</title>

<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

<style>
    body, html {
        height: 100%;
        margin: 0;
        background-color: #f8f9fa;
    }

    .hero {
        background: linear-gradient(rgba(0,0,0,0.65), rgba(0,0,0,0.65)),
                    url("https://images.unsplash.com/photo-1529070538774-1843cb3265df");
        /* ↑ This image contains bus, train & flight theme */

        background-size: cover;
        background-position: center;
        height: 100vh; /* FULL SCREEN */
        width: 100%;
        display: flex;
        align-items: center;
        justify-content: center;
        color: white;
        text-align: center;
    }

    .hero h1 {
        font-size: 3.5rem;
        font-weight: bold;
    }

    .hero p {
        font-size: 1.3rem;
        margin-top: 15px;
    }
</style>

</head>
<body>

<%@ include file="header.jsp" %>

<div class="hero">
    <div>
        <h1>Transportation Booking System</h1>
        <p>Bus • Train • Flight — Book your journey in one place</p>

        <a href="/bookticket" class="btn btn-warning btn-lg mt-4 px-4">
            Book Your Ticket
        </a>
    </div>
</div>

</body>
</html>
