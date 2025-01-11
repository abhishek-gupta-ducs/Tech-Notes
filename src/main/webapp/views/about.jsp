<%@ page language="java"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About - Tech Notes</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="aboutStyles.css">
</head>

<body>
    <!-- Navigation -->
    <%@ include file="navbar.jsp" %>
    <div class="about-header">
        <h1>Tech Notes</h1>
    </div>
    <div class="container about-content">
        <p>Welcome to <strong>Tech Notes</strong>! This platform is designed for developers, students, and tech enthusiasts who want to organize and manage their technical knowledge effectively.</p>
        <p>Our goal is to provide you with a simple and intuitive way to create, edit, and manage your technical notes, whether you're learning new technologies or revisiting old ones. Tech Notes is here to keep all your essential knowledge just a click away!</p>
        <h3>Features</h3>
        <ul>
            <li>Create and manage your technical notes section wise, easily.</li>
            <li>Sections Available are : </li>
            <ul>
                <li>Title</li>
                <li>Technical Explaination</li>
                <li>Layman Explaination</li>
                <li>Use Cases</li>
            </ul>
            <li>Edit and update notes anytime.</li>
            <li>Delete outdated notes to stay organized.</li>
            <li>Search for specific notes quickly.</li>
        </ul>
        <p>We hope you find this tool useful and enjoy using it to streamline your learning journey. If you have any feedback or suggestions, feel free to reach out to us!</p>
    </div>

</body>

</html>
