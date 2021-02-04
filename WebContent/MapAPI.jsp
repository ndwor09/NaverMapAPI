<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">


<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=y049ly1v7v"></script>  <!-- 네이버 지도 API를 호출하기위한 스트립트 부분 -->
<title>단순하게 맵 띄우기</title>
</head>
<body>
<div id="map" style="width:100%;height:400px;"></div>








<script>
var mapOptions = {
    center: new naver.maps.LatLng(37.3595704, 127.105399),
    zoom: 20
};

var map = new naver.maps.Map('map', mapOptions);
</script>

</body>
</html>