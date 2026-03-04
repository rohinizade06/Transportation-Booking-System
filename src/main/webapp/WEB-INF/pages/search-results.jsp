<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <title>Route Search Results</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            background-color: #f8f9fa;
        }
        .card {
            border-radius: 12px;
        }
        .table th, .table td {
            vertical-align: middle;
            text-align: center;
        }
        .fare {
            font-weight: bold;
            color: #198754;
        }
    </style>
</head>
<body>

<div class="container mt-5">

    <div class="card shadow-sm">
        <div class="card-body">

            <h4 class="mb-4 text-center">
                Available Routes for
                <span class="text-primary">${keyword}</span>
            </h4>

            <!-- No routes -->
            <c:if test="${empty tickets}">
                <div class="alert alert-warning text-center">
                    🚫 No routes found
                </div>
            </c:if>

            <!-- Routes found -->
            <c:if test="${not empty tickets}">
                <div class="table-responsive">
                    <table class="table table-hover table-bordered">
                        <thead class="table-dark">
                            <tr>
                                <th>Source</th>
                                <th>Destination</th>
                                <th>Fare</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="t" items="${tickets}">
                                <tr>
                                    <td>${t.source}</td>
                                    <td>${t.destination}</td>
                                    <td class="fare">₹ ${t.price}</td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </c:if>

            <div class="text-center mt-3">
                <a href="/bookticket" class="btn btn-outline-primary">
                    ← Back to Booking
                </a>
            </div>

        </div>
    </div>

</div>

</body>
</html>
