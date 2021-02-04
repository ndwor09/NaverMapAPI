<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
    <title>네이버 지도 API로 현재 위치 출력하기</title>
    <script src="../../docs/js/jquery-1.9.1.js"></script>
    <script type="text/javascript" src="../../docs/js/examples-base.js"></script>
    <script type="text/javascript" src="../../docs/js/highlight.min.js"></script>
	<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=y049ly1v7v"></script> <!-- 네이버 지도 API 키값 불러오는부분 -->
    
</head>
<body>

<!-- @category Map -->

<div id="wrap" class="section">
    <h2>네이버 지도 API로 현재 위치 출력하기</h2>
  
    <p></p>
    <div id="map" style="width:100%;height:600px;"></div>
    <code id="snippet" class="snippet"></code>
</div>
<script id="code">
var map = new naver.maps.Map('map', {
    center: new naver.maps.LatLng(36.155426, 128.311139),  /* 기본 지도중앙값 */
    zoom: 10,
    mapTypeId: naver.maps.MapTypeId.NORMAL
});
  

function onSuccessGeolocation(position) {  /* GeolocationAPI를 이용해서 현제 좌표값을 불러온것을 성공했을때 실행되는 함수 */
    var location = new naver.maps.LatLng(position.coords.latitude,
                                         position.coords.longitude);  /* location변수에 현재 접속한 PC의 위도,경도값 저장 */

    map.setCenter(location); // 받아온 위도,경도를 기반으로 지도 중앙값 출력 
    map.setZoom(10); // 지도 크기설정

   

    infowindow.open(map, location); 
    console.log('Coordinates: ' + location.toString());  //콘솔에 현재위치 표기
}

 function onErrorGeolocation() {  /* 불러오지 못헀을때 처리하는 함수 */
    var center = map.getCenter();

    infowindow.setContent('<div style="padding:20px;">' +
        '<h5 style="margin-bottom:5px;color:#f00;">Geolocation failed!</h5>'+ "latitude: "+ center.lat() +"<br />longitude: "+ center.lng() +'</div>');

    infowindow.open(map, center);
} 

 $(window).on("load", function() {  /* 불러온 위도,경도값으로 지도 출력하는 부분 */
    if (navigator.geolocation) {  
       
        navigator.geolocation.getCurrentPosition(onSuccessGeolocation, onErrorGeolocation);
    } else {
        var center = map.getCenter();
        infowindow.setContent('<div style="padding:20px;"><h5 style="margin-bottom:5px;color:#f00;">Geolocation not supported</h5></div>');
        infowindow.open(map, center);
    }
}); 
</script>

</body>
</html>