<%@ page language="java"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>New Note</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" href="formStyles.css">
</head>

<body>
    <%@ include file="navbar.jsp" %>

    <div class="container mx-auto p-4 py-md-5">
        <div class="d-flex align-items-center justify-content-between mb-5 border-bottom">
            <h2 class="mb-0">New Note</h2>
        </div>
        <div class="container">
            <form action="/saveNote">
                <div class="form-group">
                    <label for="topicTitle">Title</label>
                    <input type="text" class="form-control" id="topicTitle" placeholder="" name="topicTitle" required="">
                </div>
                <div class="form-group">
                    <label for="topicDescription">Description</label>
                    <textarea id="topicDescription" class="form-control" name="topicDescription"
                        placeholder="Type your topic's description here..." maxlength="" required=""></textarea>
                </div>
                <div class="form-group">
                    <label for="topicLaymanExplanation">Layman Explanation</label>
                    <textarea id="topicLaymanExplanation" class="form-control" name="topicLaymanExplanation"
                        placeholder="Type your topic's layman explanation here..." maxlength="" required=""></textarea>
                </div>
                <div class="form-group">
                    <label for="topicUseCases">Use Cases</label>
                    <textarea id="topicUseCases" class="form-control" name="topicUseCases"
                        placeholder="Type your topic's use cases here..." maxlength="" required=""></textarea>
                </div>
                <button type="submit" class="btn btn-primary btn-sm">Submit</button>
            </form>
        </div>
    </div>
</body>

</html>