<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <title>Transportation Booking System</title>

    <!-- Bootstrap 5 CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        .navbar {
            background-color: #1f6f78;
        }
        .navbar-brand {
            font-size: 22px;
            font-weight: bold;
            color: #fff !important;
        }
        .nav-link {
            color: #fff !important;
            font-size: 16px;
            margin-right: 10px;
        }
        .nav-link:hover {
            text-decoration: underline;
        }
        .search-input {
            width: 220px;
        }
    </style>
</head>

<body>

<nav class="navbar navbar-expand-lg">
    <div class="container-fluid">

        <a class="navbar-brand" href="/">Transport Booking System</a>

        <button class="navbar-toggler" type="button"
                data-bs-toggle="collapse"
                data-bs-target="#navbarNav"
                aria-controls="navbarNav"
                aria-expanded="false"
                aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarNav">

            <!-- 🔍 Search Bar -->
            <form class="d-flex ms-auto me-3" action="/searchTickets" method="get">
                <input class="form-control search-input"
                       type="search"
                       name="keyword"
                       placeholder="Select Route"
                       aria-label="Search">
                <button class="btn btn-light ms-2" type="submit">Search</button>
            </form>

            <ul class="navbar-nav">

                <li class="nav-item">
                    <a class="nav-link" href="/">Home</a>
                </li>

                <li class="nav-item">
                    <a class="nav-link" href="/bookticket">Book Ticket</a>
                </li>

                <!-- My Tickets Dropdown -->
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle"
                       href="#"
                       id="ticketsDropdown"
                       role="button"
                       data-bs-toggle="dropdown"
                       aria-expanded="false">
                        My Tickets
                    </a>
                    <ul class="dropdown-menu dropdown-menu-end"
                        aria-labelledby="ticketsDropdown">
                        <li><a class="dropdown-item" href="/busTickets">Bus Tickets</a></li>
                        <li><a class="dropdown-item" href="/trainTickets">Train Tickets</a></li>
                        <li><a class="dropdown-item" href="/flightTickets">Flight Tickets</a></li>
                    </ul>
                </li>

            </ul>
        </div>
    </div>
</nav>

<!-- Bootstrap 5 JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
