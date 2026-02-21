<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Job Portal</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        .hero-section {
            min-height: 85vh;
            display: flex;
            align-items: center;
        }

        .hero-title {
            font-size: 3rem;
            font-weight: 700;
        }

        .hero-subtitle {
            font-size: 1.2rem;
            color: #6c757d;
        }

        .hero-img {
            max-width: 450px;
            animation: float 3s ease-in-out infinite;
        }

        @keyframes float {
            0% { transform: translateY(0px); }
            50% { transform: translateY(-12px); }
            100% { transform: translateY(0px); }
        }
    </style>

</head>
<body>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container">
        <a class="navbar-brand" href="home">Job Portal</a>
        <div>
            <a href="addjob" class="btn btn-primary me-2">Add Job</a>
            <a href="viewalljobs" class="btn btn-success">View Jobs</a>
        </div>
    </div>
</nav>

<div class="container hero-section">
    <div class="row align-items-center">

        <!-- LEFT TEXT -->
        <div class="col-md-6">
            <h1 class="hero-title">Start Your Monday Right 💼</h1>
            <p class="hero-subtitle mt-3">
                Walk confidently toward your dream career.
                Discover opportunities and take the next step today.
            </p>

            <a href="viewalljobs" class="btn btn-dark btn-lg mt-4">
                Explore Jobs
            </a>
        </div>

        <!-- RIGHT IMAGE -->
        <div class="col-md-6 text-center">
            <img src="/images/businessman.png"
                 alt="Businessman walking to office"
                 class="hero-img img-fluid">
        </div>

    </div>
</div>

</body>
</html>