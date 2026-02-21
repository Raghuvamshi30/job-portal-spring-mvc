<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>All Jobs</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container">
        <a class="navbar-brand" href="home">Job Portal</a>


        <!-- 🔍 Search Form -->
        <form class="d-flex" action="search" method="get">
            <input class="form-control me-2"
                   type="search"
                   name="keyword"
                   placeholder="Search by profile or tech..."
                   value="${keyword}">
            <button class="btn btn-outline-light" type="submit">Search</button>
            <a href="home" class="btn btn-outline-light me-2">Home</a>
        </form>
    </div>
</nav>

<div class="container mt-5">

    <h2 class="text-center mb-4">Available Jobs</h2>

    <!-- 🚫 No Results Message -->
    <c:if test="${empty jobs}">
        <div class="alert alert-warning text-center">
            No jobs found for "<strong>${keyword}</strong>"
        </div>
    </c:if>

    <div class="row">
        <c:forEach var="job" items="${jobs}">
            <div class="col-md-6 mb-4">
                <div class="card shadow-sm h-100">
                    <div class="card-body">
                        <h5 class="card-title text-primary">${job.postProfile}</h5>
                        <p><strong>ID:</strong> ${job.postId}</p>
                        <p>${job.postDescription}</p>
                        <p><strong>Experience:</strong> ${job.reqExperience} years</p>

                        <p><strong>Tech Stack:</strong></p>
                        <ul>
                            <c:forEach var="tech" items="${job.postTechStack}">
                                <li>${tech}</li>
                            </c:forEach>
                        </ul>

                        <div class="mt-3">
                            <a href="editjob?id=${job.postId}" class="btn btn-warning btn-sm me-2">Edit</a>
                            <a href="deletejob?id=${job.postId}"
                               class="btn btn-danger btn-sm"
                               onclick="return confirm('Are you sure?')">
                                Delete
                            </a>
                        </div>

                    </div>
                </div>
            </div>
        </c:forEach>
    </div>

</div>

</body>
</html>