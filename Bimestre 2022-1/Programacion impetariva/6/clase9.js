/*
INTEGRACION DE CONTENIDOS
CONDICIONALES
BUCLES FOR

PENSAMIENTO COMPUTACIONAL
*/

/*
Sumar todas as notas y dividirlas entre la cantidad de notas a promediar,
PROMEDIO=(NOTA1+NOTA2+NOTA3)/3
*/

const CalcularPromedio = (nota1,nota2,nota3) => {

    if (typeof nota1 !== 'number'){
        return 'Por favor ingresar un número en nota1'

    }else if (typeof nota2 !== 'number'){
        return 'Por favor ingresar un número en nota2'
    }else if (typeof nota3 !== 'number'){
        return 'Por favor ingresar un número en nota3'
    }else{
        let promedio = (nota1 + nota2 + nota3) / 3;
        return promedio;
    }
}

console.log(CalcularPromedio(5,5,'3'));

//Hacer un programa que calcule los pares y los impares
function calucularCantidadPares(numero){
    let cantPares =0;
    for (let i =0; i<= numero; i++){

        if(i % 2 === 0){
            console.log(i);
            cantPares++
        }
    }
    return cantPares;
}
console.log(calucularCantidadPares(5));