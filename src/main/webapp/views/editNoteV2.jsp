<%@ page language="java"%>
<%@taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Note</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>
    
    <link rel="stylesheet" href="formStyles.css">
</head>

<body>
    <%@ include file="navbar.jsp" %>

    <div class="container mx-auto p-4 py-md-5">
        <div class="d-flex align-items-center justify-content-between mb-5 border-bottom">
            <h2 class="mb-0">Edit Note</h2>
        </div>
        <div class="container">
            <form action="/saveNote">
                <input type="hidden" name="topicId" value="${topic.topicId}">
                <div class="dropdown form-group ${empty topic.topicDescription ||  empty topic.topicLaymanExplanation || empty topic.topicUseCases ? '' : 'd-none'}">
                    <button class="btn btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                      Choose SubHeading
                    </button>
                    <ul class="dropdown-menu subheading-dropdown">
                      <li><button type="button" class="dropdown-item desc ${empty topic.topicDescription ? '' : 'd-none'} ">Description</button></li>
                      <li><button type="button" class="dropdown-item lay-exp ${empty topic.topicLaymanExplanation ? '' : 'd-none'} ">Layman Explanation</button></li>
                      <li><button type="button" class="dropdown-item use-case ${empty topic.topicUseCases ? '' : 'd-none'} ">Use Case</button></li>
                    </ul>
                </div>
                <div class="form-group">
                    <label for="topicTitle">Title</label>
                    <input type="text" class="form-control" id="topicTitle" value="${topic.topicTitle}" placeholder="" name="topicTitle">
                </div>
                
                <div class="form-group form-field ${empty topic.topicDescription ? 'd-none' : ''} desc">
                    <label for="topicDescription">Description</label>
                    <button type="button" class="btn-close desc" for="topicDescription" aria-label="Close"></button>
                    <textarea id="topicDescription" class="form-control desc" name="topicDescription"
                        placeholder="" maxlength="" >${topic.topicDescription}</textarea>
                </div>

                <div class="form-group form-field ${empty topic.topicLaymanExplanation ? 'd-none' : ''} lay-exp">
                    <label for="topicLaymanExplanation">Layman Explanation</label>
                    <button type="button" class="btn-close lay-exp" for="topicLaymanExplanation" aria-label="Close"></button>
                    <textarea id="topicLaymanExplanation" class="form-control lay-exp" name="topicLaymanExplanation"
                        placeholder="" maxlength="">${topic.topicLaymanExplanation}</textarea>
                </div>

                <div class="form-group form-field ${empty topic.topicUseCases ? 'd-none' : ''} use-case">
                    <label for="topicUseCases">Use Cases</label>
                    <button type="button" class="btn-close use-case" for="topicUseCases" aria-label="Close"></button>
                    <textarea id="topicUseCases" class="form-control use-case" name="topicUseCases"
                        placeholder="" maxlength="">${topic.topicUseCases}</textarea>
                </div>
                <button type="submit" class="btn btn-primary btn-sm form-submit-button">Save Changes</button>
            </form>
        </div>
    </div>
    <script src="editNoteV2.js"></script>
</body>
</html>