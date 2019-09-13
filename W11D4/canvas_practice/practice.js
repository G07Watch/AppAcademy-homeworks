document.addEventListener("DOMContentLoaded", function(){

    




});

const canvas = document.getElementById('mycanvas');
const ctx = canvas.getContext('2d')

canvas.fillStyle = "red";
canvas.fillRect(10, 10, 500, 500);


ctx.beginPath();
ctx.arc(200, 100, 75, 0, 2 * Math.PI);
ctx.strokeStyle = 'blue';
ctx.lineWidth = 10;
ctx.stroke();