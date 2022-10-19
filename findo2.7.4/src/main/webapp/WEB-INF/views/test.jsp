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

            console.log(period);

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
    <canvas id="myChart" height="100px" width="100px">five chart</canvas>
    <input type="button" value="1일" id="daily">
    <input type="button" value="한달" id="month1">
    <input type="button" value="세달" id="month3">
    <input type="button" value="1년" id="year1">
    <input type="button" value="3년" id="year3">
    <script>
        StockObjectParse(${s},"");
        let atn = document.getElementById("daily");
        atn.addEventListener('click', (e) => {
            if(chartLabels.length > 0){
                chartLabels.splice(0, chartLabels.length);
                chartData.splice(0, chartData.length);
            }
            StockObjectParse(${s},"daily");
        });
        let btn = document.getElementById("month1");
        btn.addEventListener('click', (e) => {
            if(chartLabels.length > 0){
                chartLabels.splice(0, chartLabels.length);
                chartData.splice(0, chartData.length);
            }
            StockObjectParse(${s},"month1");
        });
        let ctn = document.getElementById("month3");
        ctn.addEventListener('click', (e) => {
            if(chartLabels.length > 0){
                chartLabels.splice(0, chartLabels.length);
                chartData.splice(0, chartData.length);
            }
            StockObjectParse(${s},"month3");
        });
        let dtn = document.getElementById("year1");
        dtn.addEventListener('click', (e) => {
            if(chartLabels.length > 0){
                chartLabels.splice(0, chartLabels.length);
                chartData.splice(0, chartData.length);
            }
            StockObjectParse(${s},"year1");
        });
        let etn = document.getElementById("year3");
        etn.addEventListener('click', (e) => {
            if(chartLabels.length > 0){
                chartLabels.splice(0, chartLabels.length);
                chartData.splice(0, chartData.length);
            }
            StockObjectParse(${s},"year3");
        });
    </script>

</div>
</body>
</html>