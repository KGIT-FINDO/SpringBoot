var ctx = document.getElementById('myChart').getContext('2d');
var labels = [];


function ssStockObjectParse(stockObject){
    const obj = stockObject;
    const d = obj.month1;

    labels.push(d.date);
    data.datasets.data.push(d.price);
}



const data = {
    labels: labels,
    datasets: [{
        label: 'My First dataset',
        borderColor: 'rgb(255, 99, 132)',
        data: [],
    }]
};

const config = {
    type: 'line',
    data: data,
    options: {}
};

var myChart = new Chart(ctx, config);