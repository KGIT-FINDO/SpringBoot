<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<head>
        <meta charset="UTF-8">
        <title>$Title$</title>
</head>
<script src="/js/ObjectPasre.js"></script>

<body>
<div class="chart" style="width:60%">
        <script>
                StockObjectParse(${s})
        </script>
        <input type="button" value="입력" id=period", name="period"/>
        <canvas id="myChart" height="450" width="600"></canvas>

</div>
<script src="/js/ObjectPasre.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.3/Chart.min.js"></script>


</body>

</html>