<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>$Title$</title>
</head>

<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.3/Chart.min.js"></script>
<body>
<div class="chart">
    <script>
        StockObjectParse(${s});
    </script>
    <canvas id="myChart" height="400px" width="400px">five chart</canvas>
</div>

<script src="/js/a.js"></script>


</body>
</html>