<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
    <title>간단한 지도 표시하기</title>
    <script src="../../docs/js/jquery-1.9.1.js"></script>
    <script type="text/javascript" src="../../docs/js/examples-base.js"></script>
    <script type="text/javascript" src="../../docs/js/highlight.min.js"></script>
    <script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?clientId=y049ly1v7v"></script>
    <link rel="stylesheet" type="text/css" href="../../docs/css/examples-base.css" />
</head>
<body>

<!-- @category Map -->

<div id="wrap" class="section">
    <h2>간단한 지도 표시하기</h2>
    <p>지도를 생성하는 가장 기본적인 예제입니다. 지도 옵션을 설정하지 않으면 다음과 같이 서울 시청을 중심으로 하는 지도가 생성됩니다.</p>
    <div id="map" style="width:100%;height:600px;"></div>
    <code id="snippet" class="snippet"></code>
</div>
<script id="code">
//지도를 삽입할 HTML 요소 또는 HTML 요소의 id를 지정합니다.
var mapDiv = document.getElementById('map'); // 'map'으로 선언해도 동일

//옵션 없이 지도 객체를 생성하면 서울 시청을 중심으로 하는 16 레벨의 지도가 생성됩니다.
var map = new naver.maps.Map(mapDiv);
</script>

</body>
</html>