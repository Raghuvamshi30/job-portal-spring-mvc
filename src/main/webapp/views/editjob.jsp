<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Edit Job</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<nav class="navbar navbar-dark bg-dark">
    <div class="container">
        <a href="home" class="navbar-brand">Job Portal</a>
    </div>
</nav>

<div class="container mt-5">
    <div class="card shadow p-4">
        <h3 class="mb-4 text-center">Edit Job</h3>

        <form action="updatejob" method="post">

            <input type="hidden" name="postId" value="${job.postId}">

            <div class="mb-3">
                <input type="text" name="postProfile"
                       class="form-control"
                       value="${job.postProfile}" required>
            </div>

            <div class="mb-3">
                <textarea name="postDescription"
                          class="form-control"
                          rows="3" required>${job.postDescription}</textarea>
            </div>

            <div class="mb-3">
                <input type="number" name="reqExperience"
                       class="form-control"
                       value="${job.reqExperience}" required>
            </div>

            <div class="mb-3">
                <input type="text" name="postTechStack"
                       class="form-control"
                       value="${job.postTechStack}" required>
            </div>

            <div class="text-center">
                <button type="submit" class="btn btn-primary">Update</button>
                <a href="viewalljobs" class="btn btn-secondary ms-2">Cancel</a>
            </div>

        </form>
    </div>
</div>

</body>
</html>