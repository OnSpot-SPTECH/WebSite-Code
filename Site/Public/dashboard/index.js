

const ctx = document.getElementById('myChart');

new Chart(ctx, {
    type: 'line',
    data: {
        labels: ['Red', 'Blue', 'Yellow', 'Green', 'Purple', 'Orange'],
        datasets: [
            {
                label: 'temperatura',
                data: [12, 19, 3, 5, 2, 3],
                borderWidth: 2,
                backgroundColor: "red",
                borderColor: "red",
            },
            {
                label: 'umidade',
                data: [12, 19, 23, 5, 2, 3],
                borderWidth: 2,
                backgroundColor: "#4761f4",
                borderColor: "#4761f4",
            },
        ]
    },
    options: {
        scales: {
            y: {
                beginAtZero: true
            }
        }
    }
});

const ctx2 = document.getElementById('myChart2');

new Chart(ctx2, {
    type: 'line',
    data: {
        labels: ['Red', 'Blue', 'Yellow', 'Green', 'Purple', 'Orange'],
        datasets: [
            {
                label: 'temperatura',
                data: [12, 19, 3, 5, 2, 3],
                borderWidth: 2,
                backgroundColor: "red",
                borderColor: "red",
            },
            {
                label: 'umidade',
                data: [12, 19, 23, 5, 2, 3],
                borderWidth: 2,
                backgroundColor: "#4761f4",
                borderColor: "#4761f4",
            },
        ]
    },
    options: {
        scales: {
            y: {
                beginAtZero: true
            }
        }
    }
});

const ctx3 = document.getElementById('myChart3');

new Chart(ctx3, {
    type: 'line',
    data: {
        labels: ['Red', 'Blue', 'Yellow', 'Green', 'Purple', 'Orange'],
        datasets: [
            {
                label: 'temperatura',
                data: [12, 19, 3, 5, 2, 3],
                borderWidth: 2,
                backgroundColor: "red",
                borderColor: "red",
            },
            {
                label: 'umidade',
                data: [12, 19, 23, 5, 2, 3],
                borderWidth: 2,
                backgroundColor: "#4761f4",
                borderColor: "#4761f4",
            },
        ]
    },
    options: {
        scales: {
            y: {
                beginAtZero: true
            }
        }
    }
});


var sala = 0;
var primeiroRack = 0;
var segundoRack = 0;
function fecharSalas() {

    document.getElementById("inputSalas").style.display = 'none'

    if (sala == 0) {
        
        document.querySelector('.main_sala').style.display = 'flex';
        document.querySelector('.main_salas').style.display = 'none';
        document.querySelector('.salas_titulo').style.display = 'none';
        headerTitulo.innerHTML = 'Sala 1';
        sala++;
    } else {
        document.querySelector('.main_sala').style.display = 'none';
        document.querySelector('.main_salas').style.display = 'flex';
        document.querySelector('.salas_titulo').style.display = 'flex';
        headerTitulo.innerHTML = 'Salas';
        sala--;
    }
}
function rack1() {

    if (primeiroRack == 0) {
        primeiroRack++;
        rackNav1.innerHTML = `<img src="./img/minus.png" alt=""></img>`
        document.getElementById("rackDois").style.display = 'none';
        document.getElementById("rackTres").style.display = 'none';
        document.getElementById("rackUm").style.height = '95%';
        document.getElementById("rackMain").style.height = '32%';
        document.getElementById("graficosRacks").style.display = 'flex';
    } else {
        rackNav1.innerHTML = `<img src="./img/plus.png" alt=""></img>`
        document.getElementById("rackDois").style.display = 'block';
        document.getElementById("rackTres").style.display = 'block';
        document.getElementById("rackUm").style.height = '30%';
        document.getElementById("rackMain").style.height = '100%';
        document.getElementById("graficosRacks").style.display = 'none';
        primeiroRack--;
    }
}
function rack2() {

    if (segundoRack == 0) {
        segundoRack++;
        rackNav2.innerHTML = `<img src="./img/minus.png" alt=""></img>`
        document.getElementById("rackUm").style.display = 'none';
        document.getElementById("rackTres").style.display = 'none';
        document.getElementById("rackDois").style.height = '95%';
        document.getElementById("rackMain2").style.height = '32%';
        document.getElementById("graficosRacks2").style.display = 'flex';
    } else {
        rackNav2.innerHTML = `<img src="./img/plus.png" alt=""></img>`
        document.getElementById("rackUm").style.display = 'block';
        document.getElementById("rackTres").style.display = 'block';
        document.getElementById("rackDois").style.height = '30%';
        document.getElementById("rackMain2").style.height = '100%';
        document.getElementById("graficosRacks2").style.display = 'none';
        segundoRack--;
    }
}
function rack3() {

    if (primeiroRack == 0) {
        primeiroRack++;
        rackNav3.innerHTML = `<img src="./img/minus.png" alt=""></img>`
        document.getElementById("rackDois").style.display = 'none';
        document.getElementById("rackUm").style.display = 'none';
        document.getElementById("rackTres").style.height = '95%';
        document.getElementById("rackMain3").style.height = '32%';
        document.getElementById("graficosRacks3").style.display = 'flex';
    } else {
        rackNav3.innerHTML = `<img src="./img/plus.png" alt=""></img>`
        document.getElementById("rackDois").style.display = 'block';
        document.getElementById("rackUm").style.display = 'block';
        document.getElementById("rackTres").style.height = '30%';
        document.getElementById("rackMain3").style.height = '100%';
        document.getElementById("graficosRacks3").style.display = 'none';
        primeiroRack--;
    }
}


var sala2 = 0;
var primeiroRack2 = 0;
function fecharSalas2() {

    if (sala2 == 0) {
        
        document.querySelector('.main_sala').style.display = 'flex';
        document.querySelector('.main_salas').style.display = 'none';
        document.querySelector('.salas_titulo').style.display = 'none';
        headerTitulo.innerHTML = 'Sala 2';
        sala2++;
    } else {
        document.querySelector('.main_sala').style.display = 'none';
        document.querySelector('.main_salas').style.display = 'flex';
        document.querySelector('.salas_titulo').style.display = 'flex';
        headerTitulo.innerHTML = 'Salas';
        sala2--;
    }
}
f