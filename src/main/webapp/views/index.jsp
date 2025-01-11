<%@ page language="java"%>
<%@taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tech Notes Home</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>

<body>
    <%@ include file="navbar.jsp" %>
    <div class="container mx-auto p-4 py-md-5" id="hanging-icons">
        <div class="d-flex align-items-center justify-content-between pb-2 border-bottom">
            <h2 class="mb-0">Your Notes</h2>
            <a href="/addNewNote" class="btn btn-primary">Add Note</a>
        </div>
        <div class="row g-4 py-5 row-cols-1 row-cols-lg-3">
            <c:forEach var="currTopic" items="${allTopics}">                
                <div class="col d-flex align-items-start rounded-4 p-3 my-3">                
                    <div>
                        <h3 class="fs-2 text-body-emphasis">
                            <a href="/openNote?id=${currTopic.topicId}" class="text-body-emphasis text-decoration-none">
                                ${currTopic.topicTitle}
                            </a>
                        </h3>
                        <p id="topicDescription">${currTopic.topicDescription}</p>
                        <a href="/openNote?id=${currTopic.topicId}" class="btn btn-info btn-sm">
                            Open
                        </a>
                        <a href="/editNote?id=${currTopic.topicId}" class="btn btn-secondary btn-sm">
                            Edit
                        </a>
                        <a href="/deleteNote?id=${currTopic.topicId}" class="btn btn-warning btn-sm">
                            Delete
                        </a>
                    </div>
                </div>
            </c:forEach>            
        </div>
    </div>
</body>

</html>