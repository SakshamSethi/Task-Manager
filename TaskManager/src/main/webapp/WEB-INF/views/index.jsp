<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<html>
<head>
<%@include file="./base.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<style>
body {
    background: url('<c:url value="/resources/images/bg.jpg" />') no-repeat center center fixed !important;
    background-size: cover !important;
    color: white; /* Text color for the entire page */
}

h1 {
    color: white;
    font-family: cursive;
}

#container {
    background-color: rgba(0, 0, 0, 0.4);
    /* Adjust background color and opacity */
    padding: 20px;
    border-radius: 10px;
    margin-top: 100px !important;
}
table {
    color: white;
    border: medium !important;
    border-color: white !important;
    margin-top: 20px; /* Adjust top margin */
}
thead {
    background-color: #333; /* Dark background color for table header */
}
tbody {
    /* Remove max-height and overflow-y properties for scrollbar functionality */
}
.table-container {
    max-height: 300px; /* Set a maximum height for the table container */
    overflow-y: auto; /* Add vertical scrollbar if more than 5 rows */
}
.button-container {
    text-align: center; /* Center-align the button */
    margin-top: 20px; /* Adjust the margin between the table and the button */
}
</style>

</head>
<body>
    <div class="container mt-3" id="container">
        <div class="row">
            <div class="col-md-12">
                <h1 class="text-center mb-3">WELCOME TO TASK MANAGER</h1>
                <div class="table-container">
                    <table class="table">
                        <thead class="thead-light">
                            <tr>
                                <th scope="col">S.No.</th>
                                <th scope="col">Task Name</th>
                                <th scope="col">Task Description</th>
                                <th scope="col">Due Date</th>
                                <th scope="col">Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${products}" var="p" varStatus="loop">
                                <tr>
                                    <th scope="row">OnlyTech${p.id}</th>
                                    <td>${p.name}</td>
                                    <td>
                                        <c:choose>
                                            <c:when test="${fn:length(p.description) > 10}">
                                                ${fn:substring(p.description, 0, 10)}...
                                            </c:when>
                                            <c:otherwise>
                                                ${p.description}
                                            </c:otherwise>
                                        </c:choose>
                                    </td>
                                    <td class="font-weight-bold">${p.due}</td>
                                    <td>
                                        <a href="delete/${p.id}">
                                            <i class="fa fa-trash-can fa-flip text-danger" style="font-size:25px"></i>
                                        </a>
                                        &nbsp;&nbsp;
                                        <a href="update/${p.id}">
                                            <i class="fas fa-pen-nib text-warning" style="font-size:25px"></i>
                                        </a>
                                        &nbsp;&nbsp;
                                        <a href="desc/${p.id}">
                                            <i class="fas fa-eye text-success" style="font-size:25px"></i>
                                        </a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
                <div class="button-container">
                    <a href="add-product" class="btn btn-outline-success">ADD TASK</a>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
