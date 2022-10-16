
// jquery를 이용해 url에서 데이터 가져오는 법
// $.getJSON("http://localhost:8080/incomeList", function(data){
//
//     $.each(data, function(inx, obj){
//
//         chartLabels.push(obj.dd);
//
//         chartData.push(obj.income);
//
//     });
//
//     createChart();
//
//     console.log("create Chart")
//
// });

var period = document.getElementById("period");




var chartLabels = [];//x축

var chartData = [];//y축

//자바코드로 json 받으면 x축, y축으로 나눠줌
function StockObjectParse(stockObject){
    const obj = JSON.parse(stockObject);

    chartLabels.push(obj.time);
    chartData.push(obj.price);

    createChart();
    console.log("create Chart")

}

var lineChartData = {

    labels : chartLabels,

    datasets : [

        {

            label : "차트",

            fillColor : "rbga(151,187,205,0.2)",

            strokeColor : "rbga(151,187,205,1)",

            pointColor : "rbga(151,187,205,1)",

            pointStrokeColor : "#187de8",

            pointHighlightFill : "#fff",

            pointHighlightStroke : "rbga(151,187,205,1)",

            data : chartData

        }
    ]
}



function createChart(){

    var ctx = document.getElementById("canvas").getContext("2d");

    LineChartDemo = Chart.Line(ctx,{

        data : lineChartData,

        options :{

            scales : {

                yAxes : [{

                    ticks :{

                        beginAtZero : true

                    }

                }]

            }

        }

    })
    
}