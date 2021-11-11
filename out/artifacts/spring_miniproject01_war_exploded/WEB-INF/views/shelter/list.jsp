<%--
  Created by IntelliJ IDEA.
  User: namjh
  Date: 2021/11/10
  Time: 1:06 오전
  To change this template use File | Settings | File Templates.
--%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <script
            src="https://code.jquery.com/jquery-3.4.1.js"
            integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
            crossorigin="anonymous"></script>
    <style>
        a{
            text-decoration : none;
        }
        table{
            border-collapse: collapse;
            width: 1000px;
            margin-top : 20px;
            text-align: center;
        }
        td, th{
            border : 0.5px solid #0653cb;
            height: 50px;
        }
        th{
            font-size : 17px;
        }
        thead{
            font-weight: 700;
        }
        .table_wrap{
            margin : 50px 0 0 50px;
        }
        .bno_width{
            width: 12%;
        }
        .writer_width{
            width: 20%;
        }
        .regdate_width{
            width: 15%;
        }
        .updatedate_width{
            width: 15%;
        }
        .top_btn{
            font-size: 20px;
            padding: 6px 12px;
            background-color: #fff;
            border: 1px solid #ddd;
            font-weight: 600;
        }
    </style>
</head>
<body>
<h1>목록페이지입니다.</h1>

<div class="table_wrap">
    <a href="/board/enroll" class="top_btn">새로 등록 </a>
    <table>
        <thead>
        <tr>
            <th class="bno_width">장소</th>
            <th class="title_width">주소</th>
            <th class="writer_width">규모</th>
            <th class="regdate_width">정원</th>
            <th class="updatedate_width">현재 이용자</th>
        </tr>
        </thead>
        <c:forEach items="${list}" var="list">
            <tr>
                <td><c:out value="${list.sname}"/></td>
                <td><c:out value="${list.address}"/></td>
                <td><c:out value="${list.size}"/></td>
                <td><c:out value="${list.limit}"/></td>
                <td><c:out value="${list.currentNumber}"/></td>
            </tr>
        </c:forEach>
    </table>
</div>

<script>
    $(document).ready(function(){

        let result = '<c:out value="${result}"/>';

        checkAlert(result);

        function checkAlert(result){

            if(result === ''){
                return;
            }

            if(result === "enrol success"){
                alert("등록이 완료되었습니다.");
            }

        }

    });
</script>

</body>
</html>
