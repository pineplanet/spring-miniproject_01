<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- 스프링은 따로 라이브러리를 설치하지 않아도 다운 받을 라이브러리를 설정할 수 있다. -->
<!-- 그 중에 jstl 라이브러리도 있기 때문에 사용할 수 있는것 -->
<!-- 라이브러리 목록은 iot/pom.xml, c:\사용자\.m2에서 확인가능 -->

<style>
    header ul, header ul li {
        margin: 0;
        padding: 0;
        display: inline;
    }

    header .category {
        font-size: 18px;
    }

    header .category ul li:not(:first-child) { /* 첫번째 li만 빼고 지정 */
        padding-left: 30px;
    }

    header .category ul li a:hover, header .category ul li a.active {
        font-weight: bold;
        color: #0000cd;
    }

</style>
<header style="border-bottom: 1px solid #ccc; padding: 15px 0; text-align: left">
    <div class="category" style="margin-left: 100px;">
        <ul>
            <li><a href="<core:url value='/' />">HOME</a></li>
            <li><a href='list.cu' ${category eq 'cu' ? "class='active'" : '' } >대피시설 목록</a></li>
        </ul>
    </div>
</header>