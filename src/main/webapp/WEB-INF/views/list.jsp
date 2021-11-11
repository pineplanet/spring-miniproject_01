<%--
  Created by IntelliJ IDEA.
  User: namjh
  Date: 2021/11/10
  Time: 1:06 오전
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <style>

        body {

            padding-top: 70px;

            padding-bottom: 30px;

        }

    </style>


    <!-- jQuery -->

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
            integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
            crossorigin="anonymous"></script>


    <!-- Bootstrap CSS -->

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
          integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">

</head>
<body>

<article>
    <div class="container">
        <div class="table-responsive">
            <table class="table table-striped table-sm">
                <thead>
                <tr>
                    <th class="bno_width">장소</th>
                    <th class="title_width">주소</th>
                    <th class="writer_width">규모</th>
                    <th class="regdate_width">정원</th>
                    <th class="updatedate_width">사용</th>
                </tr>
                </thead>
                <c:forEach items="${list}" var="list">
                    <tr>
                        <td><c:out value="${list.sname}"/></td>
                        <td><a href="/getShelterContent?sname=${list.sname}">
                            <c:out value="${list.address}"/>
                        </a>
                        </td>
                        <td><c:out value="${list.size}"/></td>
                        <td><c:out value="${list.limit}"/></td>
                        <td><c:out value="${list.currentNumber}"/></td>
                    </tr>
                </c:forEach>
            </table>


        </div>
        <div>

            <button type="button" class="btn btn-sm btn-primary" id="btnWriteForm">새로 등록</button>

        </div>
    </div>
</article>

</body>
<script>

    $(document).on('click', '#btnWriteForm', function (e) {

        e.preventDefault();


        location.href = "${pageContext.request.contextPath}/shelterForm";

    });

</script>
</html>