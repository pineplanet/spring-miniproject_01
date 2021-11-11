<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>



<!DOCTYPE html>

<html>

<head>

    <meta charset="UTF-8">



    <!-- jQuery -->

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>



    <!-- Bootstrap CSS -->

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">



    <title>board</title>



    <script>

        $(document).on('click', '#btnSave', function(e){

            e.preventDefault();



            $("#form").submit();

        });



        $(document).on('click', '#btnList', function(e){

            e.preventDefault();



            location.href="${pageContext.request.contextPath}/list.cu";

        });

    </script>

    <style>

        body {

            padding-top: 70px;

            padding-bottom: 30px;

        }



    </style>

</head>

<body>

<article>

    <div class="container" role="main">

        <h2>새로운 대피소 등록</h2>

        <form name="form" id="form" role="form" method="post" action="${pageContext.request.contextPath}/saveShelter">

            <div class="mb-3">

                <label for="sname">장소</label>

                <input type="text" class="form-control" name="sname" id="sname" placeholder="장소를 입력해 주세요">

            </div>



            <div class="mb-3">

                <label for="address">주소</label>

                <input type="text" class="form-control" name="address" id="address" placeholder="주소를 입력해 주세요">

            </div>



            <div class="mb-3">

                <label for="size">규모</label>

                <textarea class="form-control" rows="5" name="size" id="size" placeholder="내용을 입력해 주세요" ></textarea>

            </div>



            <div class="mb-3">

                <label for="limit">정원</label>

                <input type="text" class="form-control" name="limit" id="limit" placeholder="최대 사용인원을 입력해주세요">

            </div>
            <div class="mb-3">

                <label for="currentNumber">사용</label>

                <input type="text" class="form-control" name="currentNumber" id="currentNumber" placeholder="현재 사용자 수를 입력해주세요">

            </div>



        </form>

        <div >

            <button type="button" class="btn btn-sm btn-primary" id="btnSave">저장</button>

            <button type="button" class="btn btn-sm btn-primary" id="btnList">목록</button>

        </div>

    </div>

</article>

</body>

</html>
