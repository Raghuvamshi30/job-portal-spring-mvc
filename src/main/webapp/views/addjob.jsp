<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Add Job</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container">
        <a class="navbar-brand" href="home">Job Portal</a>

        <div>
            <a href="home" class="btn btn-outline-light me-2">Home</a>
            <a href="viewalljobs" class="btn btn-success">View Jobs</a>
        </div>
    </div>
</nav>

<div class="container mt-5">
    <div class="card shadow p-4">
        <h3 class="mb-4 text-center">Add New Job</h3>

        <form action="handleForm" method="post">
            <div class="row mb-3">
                <div class="col">
                    <input type="number" name="postId" class="form-control" placeholder="Post ID" required>
                </div>
                <div class="col">
                    <input type="text" name="postProfile" class="form-control" placeholder="Job Profile" required>
                </div>
            </div>

            <div class="mb-3">
                <textarea name="postDescription" class="form-control" rows="3" placeholder="Job Description" required></textarea>
            </div>

            <div class="row mb-3">
                <div class="col">
                    <input type="number" name="reqExperience" class="form-control" placeholder="Experience (Years)" required>
                </div>
                <div class="col">
                    <input type="text" name="postTechStack" class="form-control" placeholder="Tech Stack (comma separated)" required>
                </div>
            </div>

            <div class="text-center">
                <button type="submit" class="btn btn-primary px-4">Submit</button>
            </div>
        </form>

    </div>
</div>

</body>
</html>