<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>

<html>

<head>

    <meta charset="UTF-8">
    <!-- Bootstrap CSS -->

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
          integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">


    <title>board</title>
    <style>

        body {

            padding-top: 70px;

            padding-bottom: 30px;

        }

    </style>

</head>

<body>


<h2>board list</h2>
<article>
    <div class="container">

        <div class="table-responsive">

            <table class="table table-striped table-sm">

                <thead>

                <tr>

                    <th>NO</th>

                    <th>글제목</th>

                    <th>작성자</th>

                    <th>조회수</th>

                    <th>작성일</th>

                </tr>

                </thead>

                <tbody>

                <c:choose>

                    <c:when test="${empty ShelterList }">

                        <tr>
                            <td colspan="5" align="center">데이터가 없습니다.</td>
                        </tr>

                    </c:when>

                    <c:when test="${!empty ShelterList}">

                        <c:forEach var="list" items="${ShelterList}">

                            <tr>

                                <td><c:out value="${list.sname}"/></td>

                                <td><c:out value="${list.address}"/></td>

                                <td><c:out value="${list.size}"/></td>

                                <td><c:out value="${list.limit}"/></td>


                            </tr>

                        </c:forEach>

                    </c:when>

                </c:choose>

                </tbody>

            </table>
        </div>
        <div >

            <button type="button" class="btn btn-sm btn-primary" id="btnWriteForm">글쓰기</button>

        </div>
    </div>
</article>

</body>

</html>



