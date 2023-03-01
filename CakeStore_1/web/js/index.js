const cupcake = document.querySelector('.cupcake');
const butter = document.querySelector('.butter');
const red_velvet = document.querySelector('.red_velvet');
const biscuit = document.querySelector('.biscuit');
const donut = document.querySelector('.donut');

const cupcakeDiv = document.getElementById('cupcake');
const butterDiv = document.getElementById('butter');
const red_velvetDiv = document.getElementById('red_velvet');
const biscuitDiv = document.getElementById('biscuit');
const donutDiv = document.getElementById('donut');

cupcake.addEventListener('mouseover', function () {
    cupcakeDiv.style.display = '';
    butterDiv.style.display = 'none';
    red_velvetDiv.style.display = 'none';
    biscuitDiv.style.display = 'none';
    donutDiv.style.display = 'none';
});

butter.addEventListener('mouseover', function () {
    cupcakeDiv.style.display = 'none';
    butterDiv.style.display = '';
    red_velvetDiv.style.display = 'none';
    biscuitDiv.style.display = 'none';
    donutDiv.style.display = 'none';
});

red_velvet.addEventListener('mouseover', function () {
    cupcakeDiv.style.display = 'none';
    butterDiv.style.display = 'none';
    red_velvetDiv.style.display = '';
    biscuitDiv.style.display = 'none';
    donutDiv.style.display = 'none';
});

biscuit.addEventListener('mouseover', function () {
    cupcakeDiv.style.display = 'none';
    butterDiv.style.display = 'none';
    red_velvetDiv.style.display = 'none';
    biscuitDiv.style.display = '';
    donutDiv.style.display = 'none';
});

donut.addEventListener('mouseover', function () {
    cupcakeDiv.style.display = 'none';
    butterDiv.style.display = 'none';
    red_velvetDiv.style.display = 'none';
    biscuitDiv.style.display = 'none';
    donutDiv.style.display = '';
});
