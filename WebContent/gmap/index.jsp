<%@page import="java.util.*"%>
<%@page import="crawler.example.*"%>
<%@page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <title>GeoJson 練習</title>
    <meta name="viewport" content="initial-scale=1.0">
    <meta charset="utf-8">
    <style>
      html, body {
        height: 100%;
        margin: 0;
        padding: 0;
      }
      #map {
        height: 100%;
      }
    </style>
  </head>
  <body>
    <div id="map"></div>
    <script>
      var map;var map1;
      function initMap() {
        map = new google.maps.Map(document.getElementById('map'), {
          zoom: 9,
          center:  {lat: 25.047886, lng: 121.516950},
          
        });

        map = new google.maps.Map(document.getElementById('map'), {
            zoom: 9,
            center:  {lat: 25.047886, lng: 121.516950},
            
          });
        
        // Load GeoJSON.
        map.data.loadGeoJson(
        	// 可輸入資料網址 或直接 輸入 GeoJson
        	//"http://128.199.204.20/pm25/geojson.php"
        	
        	// 找出土壤液化的資料源
        	"http://www.geologycloud.tw/data/zh-tw/liquefaction?area=%E8%87%BA%E5%8C%97&classify=%E9%AB%98%E6%BD%9B%E5%8B%A2&all=true&ndctype=JSON&ndcnid=28691"
        		
        );
        
        map.data.setStyle({
        	  fillColor: 'red',
        	  strokeWeight: 3
        	});
        
        map1.data.loadGeoJson(
            	// 可輸入資料網址 或直接 輸入 GeoJson
            	//"http://128.199.204.20/pm25/geojson.php"
            	
            	// 找出土壤液化的資料源
            	
            "http://www.geologycloud.tw/data/zh-tw/liquefaction?area=%E5%AE%9C%E8%98%AD&classify=%E9%AB%98%E6%BD%9B%E5%8B%A2&all=true&ndctype=JSON&ndcnid=28691"
            );
        map1.data.setStyle({
      	  fillColor: 'yellow',
      	  strokeWeight: 3
      	});
        
      }
    </script>
    <script src="https://maps.googleapis.com/maps/api/js?callback=initMap">
    </script>
  </body>
</html>