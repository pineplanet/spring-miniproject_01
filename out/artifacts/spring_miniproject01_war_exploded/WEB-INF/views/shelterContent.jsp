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
    <meta charset="utf-8">
    <title>주소로 장소 표시하기</title>

</head>
<body>

<table class="board_view">
    <caption>${shelterContent.sname}</caption>
    <colgroup>
        <col width="15%">
        <col width="35%">
        <col width="15%">
        <col width="*">
    </colgroup>

    <tbody>
    <tr>
        <th>장소</th>
        <td>${shelterContent.sname}</td>
        <th>주소 </th>
        <td>${shelterContent.address }</td>
    </tr>
    <tr>
        <th>정원</th>
        <td>${shelterContent.limit }</td>
        <th>현재 인원</th>
        <td>${shelterContent.currentNumber }</td>
    </tr>
    <tr>
        <th>지도</th>
        <td colspan="3">
                <div id="map" style="width:600px;height:300px;"></div>
        </td>
    </tr>
    </tbody>
</table>
<a href="/list.cu" id="list" class="btn">목록으로</a>
<a href="/inShelterContent?sname=${shelterContent.sname}" id="cntplus" class="btn">입실하기</a>
<a href="/outShelterContent?sname=${shelterContent.sname}" id="cntminus" class="btn">퇴실하기</a>


<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=022a5fa4d840b7f04de14cf173e4c53a&libraries=services"></script>
<script>
    var mapContainer = document.getElementById('map'), // 지도를 표시할 div
        mapOption = {
            center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
            level: 3 // 지도의 확대 레벨
        };

    // 지도를 생성합니다
    var map = new kakao.maps.Map(mapContainer, mapOption);

    // 주소-좌표 변환 객체를 생성합니다
    var geocoder = new kakao.maps.services.Geocoder();

    // 주소로 좌표를 검색합니다
    var saddress = "${shelterContent.address}"
    geocoder.addressSearch(saddress, function(result, status) {

        // 정상적으로 검색이 완료됐으면
        if (status === kakao.maps.services.Status.OK) {

            var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

            // 결과값으로 받은 위치를 마커로 표시합니다
            var marker = new kakao.maps.Marker({
                map: map,
                position: coords
            });

            // 인포윈도우로 장소에 대한 설명을 표시합니다
            var infowindow = new kakao.maps.InfoWindow({
                content: '<div style="width:150px;text-align:center;padding:6px 0;">"${shelterContent.sname}"</div>'
            });
            infowindow.open(map, marker);

            // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
            map.setCenter(coords);
        }
    });
</script>

</body>
</html>


