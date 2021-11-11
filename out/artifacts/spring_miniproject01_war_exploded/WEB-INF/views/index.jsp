<%--
  Created by IntelliJ IDEA.
  User: namjh
  Date: 2021/11/09
  Time: 11:19 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
    <title>안양 대피소 </title>
    <style>
        h1 {
            text-align: center;
            margin-top: 230px;
            font-size: 90px;
        }
        h1 span:nth-child(1) {
            color:#4285f4;
        }
        h1 span:nth-child(2) {
            color:#ea4335;
        }
        h1 span:nth-child(3) {
            color:#fbbc05;
        }
        h1 span:nth-child(4) {
            color:#4285f4;
        }
        h1 span:nth-child(5) {
            color:#34a853;
        }
        h1 span:nth-child(6) {
            color:#ea4335;
        }
        .search-bar {
            width: 500px;
        }
    </style>
</head>
<body>
<%--<jsp:include page="/WEB-INF/views/include/header.jsp" /> --%>
<h1>
    <a href="/list.cu">
    <span>ㅇ</span><span>ㅇ</span><span>ㄷ</span><span>ㅍ</span><span>ㅅ</span>
    </a>
</h1>

<form action="/list.search" method="GET">
    <div class="mx-auto mt-5 search-bar input-group mb-3">
        <input name="sname" type="text" class="form-control rounded-pill"  value="${keyword}" placeholder="주소 또는 장소를 입력하세요" aria-label="Recipient's username" aria-describedby="button-addon2">
        <div class="input-group-append">
        </div>
    </div>


    <!-- search{e} -->

</body>
</html>
