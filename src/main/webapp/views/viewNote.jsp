<%@ page language = "java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="fn" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>${topic.getTopicTitle()}</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" href="viewNoteStyles.css">
</head>

<body>
    <%@ include file="navbar.jsp" %>
    <div class="container">
        <h1 class="heading">${topic.getTopicTitle()}</h1>
        <c:if test="${not empty topic.getTopicDescription()}">
            <div>
                <h2 class="section-title">Description</h2>
                <c:forEach var="line" items="${topic.getTopicDescriptionArr()}">
                    <p class="section-content">${line}</p>
                </c:forEach>
            </div>
        </c:if>
        <c:if test="${not empty topic.getTopicLaymanExplanation()}">
            <div>
                <h2 class="section-title">Layman's Explanation</h2>
                <c:forEach var="line" items="${topic.getTopicLaymanExplanationArr()}">
                    <p class="section-content">${line}</p>
                </c:forEach>
            </div>
        </c:if>
        <c:if test="${not empty topic.getTopicUseCases()}">
            <div>
                <h2 class="section-title">Use Cases</h2>
                <c:forEach var="line" items="${topic.getTopicUseCasesArr()}">
                    <p class="section-content">${line}</p>
                </c:forEach>
            </div>
        </c:if>
    </div>
</body>

</html>
