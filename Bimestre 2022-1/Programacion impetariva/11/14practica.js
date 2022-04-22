/* 1. A partir del siguiente array de edades nos solicitan realizar lo siguiente:
const edades = [11, 12, 15, 18, 25, 22, 10, 33, 18, 5];
a. Obtener en un nuevo array las edades menores a 18.
b. Obtener en un nuevo array las edades mayor o igual a 18.
c. Obtener en un nuevo array las edades igual a 18.
d. Obtener el menor.
e. Obtener el mayor.
f. Obtener el promedio de edades.
g. Incrementar en 1 todas las edades. */ 

const edades = [11, 12, 15, 18, 25, 22, 10, 33, 18, 5];

//Obtener nuevos arrays

function nuevosArraysEdades(array) {
    const menorEdad = []
    const mayorEdad = []
    const edadTransicion = []
    for (let i = 0; i < array.length; i++) {
        const element = array[i];
        if (element < 18 ) {
            menorEdad.push(element)
        }
        else if (element >= 18) {
            mayorEdad.push(element)
            if (element === 18 ) {
                edadTransicion.push(element)
            }
        } 
    }

    console.log();
    console.log('-----------------');
    console.log(menorEdad);
    console.log();
    console.log('-----------------');
    console.log(mayorEdad);
    console.log();
    console.log('-----------------');
    console.log(edadTransicion);
    console.log();
    console.log('-----------------');
}

nuevosArraysEdades(edades)

//Mayor y menor

function obtenerMayor(array) {
    let personaMayor = 0
    let personaMenor = 0
    for (let i = 0; i < array.length; i++) {
        const element = array[i];
        if (element > personaMayor) {
            personaMayor = element
        } else {
            personaMenor = element
        }
    }
    return 'la edad mayor es ' + personaMayor + ' y la edad menor es ' + personaMenor
}

console.log();
console.log('-----------------');
console.log(obtenerMayor(edades));
console.log('-----------------');

//Promedio de edades

function obtenerPromedioEdades(array) {
    let suma = 0
    let promedio = 0
    for (let i = 0; i < array.length; i++) {
        const element = array[i];
        suma = suma + element
    }
    promedio = suma / array.length
    return 'El promedio de edades es ' + promedio
}

console.log();
console.log('-----------------');
console.log(obtenerPromedioEdades(edades));
console.log('-----------------');

//Incrementar edades

function incrementarEdades(array) {
    for (let i = 0; i < array.length; i++) {
        array[i]++;
    }
    return array 
}

console.log(incrementarEdades(edades));

/* Tenemos como base un array de cuentas bancarias, donde a cada una la
representamos con un objeto literal. A partir de este array trabajaremos sobre
los siguientes enunciados, resolviendo de la forma que nos parezca más
adecuada
a. Obtener un nuevo array de cuentas cuyas edades sean menores a 30.
b. Obtener un nuevo array de cuentas cuyas edades sean mayor o igual a
30.
c. Obtener un nuevo array de cuentas cuyas edades sean igual a 30.
d. Obtener la cuenta con el titular de la misma más joven.
e. Obtener un nuevo array por cada tipo de cuenta.
f. Obtener un nuevo array con las cuentas habilitadas.
g. Obtener un nuevo array con las cuentas deshabilitadas.
h. Obtener la cuenta con el menor saldo.
i. Obtener la cuenta con el mayor saldo.*/ 

const arrayCuentas = [
    {
        titular: "Arlene Barr",
        estaHabilitada: false,
        saldo: "$3,253.40",
        edadTitular: 33,
        tipoCuenta: "sueldo"
    },
    {
        titular: "Roslyn Torres",
        estaHabilitada: false,
        saldo: "$3,229.45",
        edadTitular: 27,
        tipoCuenta: "sueldo"
    },
    {
        titular: "Cleo Lopez",
        estaHabilitada: true,
        saldo: "$1,360.19",
        edadTitular: 34,
        tipoCuenta: "corriente"
    },
    {
        titular: "Daniel Malone",
        estaHabilitada: false,
        saldo: "$3,627.12",
        edadTitular: 30,
        tipoCuenta: "sueldo"
    },
    {
        titular: "Ethel Leon",
        estaHabilitada: true,
        saldo: "$1,616.52",
        edadTitular: 34,
        tipoCuenta: "sueldo"
    },
    {
        titular: "Harding Mitchell",
        estaHabilitada: true,
        saldo: "$1,408.68",
        edadTitular: 25,
        tipoCuenta: "corriente"
    }
]

//Nuevos arrays

function obtenerNuevosArrays(array) {
    const cuentasMenores30 = []
    const cuentasMayores30 = []
    const cuentas30 = []
    for (let i = 0; i < array.length; i++) {
        const element = array[i];
        if (element.edadTitular < 30) {
            cuentasMenores30.push (element)
        } else if (element.edadTitular >= 30) {
            cuentasMayores30.push (element)
        } 
        if (element.edadTitular === 30) {
            cuentas30.push (element)
        }
    }
    console.log();
    console.log('-----------------');
    console.log(cuentasMenores30);
    console.log();
    console.log('-----------------');
    console.log(cuentasMayores30);
    console.log();
    console.log('-----------------');
    console.log(cuentas30);
    console.log();
    console.log('-----------------');
}

obtenerNuevosArrays(arrayCuentas)

// Titular más joven

function obtenerTitularMasJoven(array) {
    let titularMasJoven = array[0]
    for (let i = 0; i < array.length; i++) {
        const element = array[i];
        if (element.edadTitular < titularMasJoven.edadTitular) {
        titularMasJoven = element
        }
    }
    return titularMasJoven
}

console.log(obtenerTitularMasJoven (arrayCuentas))

// Tipos de cuentas

function agruparTiposCuentas(array) {
    let cuentaSueldo = []
    let cuentaCorriente = []
    for (let i = 0; i < array.length; i++) {
        const element = array[i];
        if (element.tipoCuenta ==='corriente') {
            cuentaCorriente.push(element)
        } else if (element.tipoCuenta ==='sueldo'){
            cuentaSueldo.push(element)
        }
    }

    console.log();
    console.log('-----------------');
    console.log(cuentaCorriente);
    console.log();
    console.log('-----------------');
    console.log(cuentaSueldo);
}

agruparTiposCuentas (arrayCuentas)

//Cuentas habilitadas y deshabilitadas

function agruparHabilitadasDeshabilitadas(array) {
    let cuentasHabilitadas = []
    let cuentasDeshabilitadas = []
    for (let i = 0; i < array.length; i++) {
        const element = array[i];
        if (element.estaHabilitada === true) {
            cuentasHabilitadas.push(element)
        } else {
            cuentasDeshabilitadas.push(element)
        }
    }

    console.log();
    console.log('-----------------');
    console.log(cuentasHabilitadas);
    console.log();
    console.log('-----------------');
    console.log(cuentasDeshabilitadas);
}

agruparHabilitadasDeshabilitadas (arrayCuentas)

// Cuenta con Mayor y Menor Saldo 

function encontrarMayorMenorSaldo(array) {
    let cuentaMayorSaldo = array[0]
    let cuentaMenorSaldo = array[0]
    for (let i = 0; i < array.length; i++) {
        const element = array[i];
        if (element.saldo >= cuentaMayorSaldo.saldo) {
            cuentaMayorSaldo = element
        } else {
            cuentaMenorSaldo = element
        }
    }

    console.log();
    console.log('-----------------');
    console.log(cuentaMayorSaldo);
    console.log();
    console.log('-----------------');
    console.log(cuentaMenorSaldo);
}

encontrarMayorMenorSaldo (arrayCuentas)
