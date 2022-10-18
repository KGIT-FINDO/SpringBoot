<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>$Title$</title>
</head>
<body>
<div class="chart">
    <script>
        let chartLabels = [];//x축

        let chartData = [];//y축

        //자바코드로 json 받으면 x축, y축으로 나눠줌
        function StockObjectParse(stockObject, period){
            const obj = stockObject;
            let d = obj.month1;

            if(period =="daily"){
                d = obj.daily;
                for(i=0; i<d.price.length;i++){
                    chartLabels.push(d.date[i]);
                    chartData.push(d.price[i]);
                }
            }else{
                if(period =="month1"){
                    d = obj.month1;
                } else if(period =="month3"){
                    d = obj.month3
                } else if(period == "year1"){
                    d = obj.year1
                } else if(period == "year3"){
                    d = obj.year3
                } else{
                    d = obj.month1
                }

                for(i=0; i<d.price.length;i++){
                    chartLabels.push(d.date[d.date.length - 1 -i]);
                    chartData.push(d.price[d.price.length - 1 -i]);
                }
            }


            createChart();



        };

        let lineChartData = {

            labels : chartLabels,

            datasets : [

                {
                    label : "차트",

                    fillColor : "#d92020",

                    strokeColor : "#8c32e0",

                    pointColor : "#e032dd",

                    pointStrokeColor : "#187de8",

                    pointHighlightFill : "#187de8",

                    pointHighlightStroke : "#32e089",

                    data : chartData

                }
            ]
        }


        function createChart(){

            let ctx = document.getElementById("myChart").getContext("2d");

            var myChart = new Chart(ctx, {
                type: 'line',
                data: lineChartData,

                options: {}
            })

        }
    </script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.3/Chart.min.js"></script>
    <canvas id="myChart" height="400px" width="400px">five chart</canvas>
    <script>StockObjectParse(${s},"daily");</script>

</div>
</body>
</html>