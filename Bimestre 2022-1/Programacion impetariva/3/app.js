/*
* CIERRE DE LA SEMANA
* DUDAS
* REPASO
* PREGUNTAS
* MESA
* CREAR UNA FUNCIÓN QUE RECIBE UN PARÁMETRO Y DEVUELVE QUÉ TIPO DE DATO ES ESE PARÁMETRO
*/

// CREAR UNA FUNCIÓN QUE RECIBE UN PARÁMETRO Y DEVUELVE QUÉ TIPO DE DATO ES ESE PARÁMETRO
let prompt = require("prompt-sync")({sigint:true});


let resultado = '10'/2.54;
console.log(typeof resultado);
console.log('3' + (2 +5)); 

const algo = prompt('Ingrese cualquier cosa: ');
function getDataType(algoP){
    return typeof algoP;
}
console.log(getDataType(algo));

console.log(getDataType(8));
console.log(getDataType('8'));
console.log(getDataType([1,2,3,4]));
console.log(getDataType({nombre: 'Martin'}));
console.log(getDataType(undefined));
console.log(getDataType(null));
console.log(getDataType(NaN));
console.log(getDataType(()=> 4+5));
