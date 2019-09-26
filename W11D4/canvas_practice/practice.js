document.addEventListener("DOMContentLoaded", function(){

    const canvas = document.getElementById('mycanvas');
    canvas.width = 500;
    canvas.width = 500;
    const ctx = canvas.getContext('2d')

    ctx.fillStyle = "red";
    ctx.fillRect(10, 10, 500, 500);


    ctx.beginPath();
    ctx.arc(200, 100, 75, 0, 2 * Math.PI);
    ctx.strokeStyle = 'blue';
    ctx.lineWidth = 10;
    ctx.stroke();




});

