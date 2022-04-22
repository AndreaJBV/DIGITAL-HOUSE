/*
Parcial 2
Andrea Julieth Bedoya Valencia 
 */

//_____________ EJERCICIO 1 ____________________
//1.
const alumnos = [
    {
      id: 0,
      nombre: "Leandro",
      apellido: "Borrelli",
      legajo: 20210308,
      notas: [],
    },
    {
      id: 1,
      nombre: "Esteban",
      apellido: "Piazza",
      legajo: 20210211,
      notas: [],
    },
    {
      id: 2,
      nombre: "Martin",
      apellido: "Cejas",
      legajo: 20210218,
      notas: [],
    },
    {
      id: 3,
      nombre: "Karina",
      apellido: "Borgna",
      legajo: 20210516,
      notas: [],
    },
    {
      id: 5,
      nombre: "Javier",
      apellido: "Riera",
      legajo: 20220125,
      notas: [],
    },
  ];

  /*
  1.a La variable alumnos es un array que contiene información de los objetos literarios, como id: number, nombre: string, 
  apellido: string, legajo: number, notas: array.
  */

  /*
  1.b Las propiedades que poseen los objetos literarios en el array alumnos son: id, nombre, apellido, legajo, notas.
   */

//2.
function ordenarArrayLegajo(array){
    for (let i = 0; i < array.length; i++){
            
        for (let j = 0; j < array.length - 1; j++){ //Forma ascendente
            
            if(array[j].legajo > array[j + 1].legajo){
                
                let temp = array[j];
                array[j] = array[j + 1];
                array[j + 1] = temp;
            }   
        }
    }
    return array;
};
console.log( ordenarArrayLegajo(alumnos));


  //_____________ EJERCICIO 2 ____________________
  //a.
let alumno = {
    id: 5,
    nombre: "Javier",
    apellido: "Riera",
    legajo: 20220125,
    notas: [10,9,8,7,9],
    promedio: function(){
        let promedioNotas = 0;
        let sumaNotas = 0;
        let contador =0;
        for (let i = 0; i < this.notas.length; i++){
            sumaNotas += this.notas[i];
            contador = contador +1;
            promedioNotas = sumaNotas / contador;
        }
        return promedioNotas;   
    }
};
console.log('el promedio de las notas del alumno es: 10 + 9 + 8 + 7 + 9 = ' + alumno.promedio());

//b.
function ordenarNotasDesc(array){
    for (let i = 0; i <array.notas.length; i++){
            
        for (let j = array.notas.length-1; j <=0 ; j--){ //Forma descendente
            
            if(array[j].notas >= array[j - 1].notas){
                
                let temp = array[j];
                array[j] = array[j - 1];
                array[j - 1] = temp;
            }   
        }
    }
    return array.notas;
};
console.log(ordenarNotasDesc(alumno));

 //_____________ EJERCICIO 3 ____________________
  //a.
  matrizCuadrada3x3= [[7,8,9],[4,5,6],[1,2,3]];

  //b.
  function sumaMultipo(array,multiplo){

    let acumulador = 0;

    for(let i = 0; i < array.length; i++){

        for( let j = 0; j < array[i].length; j++){

            if(array[i][j] % multiplo === 0){
                let numero = array[i][j];
                acumulador = acumulador + numero;
            }
        }
    }

    return acumulador;
}
console.log('La suma de los numeros que son multiplos de 3 es: '+ sumaMultipo( matrizCuadrada3x3,3));

//c. 
function sumaBooleano(array){

    let acumulador = 0;

    for(let i = 0; i < array.length; i++){

        for( let j = 0; j < array[i].length; j++){
            let numero = array[i][j];
            acumulador = acumulador + numero;
        }
    }
    console.log('La suma de todos los numeros es: '+ acumulador);

    if(acumulador % 2 === 0){
        return '¿la suma de todos los valores es par?: '+ true;
    }else {
        return '¿la suma de todos los valores es par?: '+ false;
    }
}
console.log(sumaBooleano( matrizCuadrada3x3));

//d.
function diagonalIzqDer(matriz) {
    let suma = 0;
    for (let i = 0; i < matriz.length; i++) {
      suma += matriz[i][i];
    }
    return suma;
  }
   console.log(diagonalIzqDer(matrizCuadrada3x3));
  
  function diagonalDerIzq(matriz) {
    let suma = 0;
    for (let i = 0; i < matriz.length; i++) {
      suma += matriz[i][matriz.length - 1 - i];
    }
    return suma;
  }
  console.log(diagonalDerIzq(matrizCuadrada3x3));