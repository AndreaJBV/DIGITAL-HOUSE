/**
 * Declara una variable que contenga una matriz
 * de 5x5 llena de puros numeros enteros y positivos
 */
const matriz5x5 = [
  [1, 2, 3, 4, 5],
  [6, 7, 8, 9, 10],
  [11, 12, 13, 14, 15],
  [16, 17, 18, 19, 20],
  [21, 22, 23, 24, 25]
];
/**
 * Luego, escribe un algoritmo para sumar todos
 * los numeros en la matriz.
 */
let suma = 0;

for (let i = 0; i < matriz5x5.length; i++) {
  for (let j = 0; j < matriz5x5[i].length; j++) {
    suma += matriz5x5[i][j];
  }
}
console.table(matriz5x5);
console.log(suma);

// Completa la función para que retorne una matriz
// de 10x10

function generarMatriz10por10() {
  let contador = 0;
  let matriz = [];
  for (let i = 1; i <= 10; i++) {
    let fila = [];
    for (let j = 1; j <= 10; j++) {
      contador++;
      fila.push(contador);
    }
    matriz.push(fila);
  }
  return matriz;
}

let matriz10por10 = generarMatriz10por10();
console.log(matriz10por10);
console.table(matriz10por10);

function sumaRoja() {
  let totalRoja = 0;
  for (let i = 0; i < matriz10por10.length; i++) {
    for (let j = 0; j < matriz10por10[i].length; j++) {
      if (i === j) {
        totalRoja += matriz10por10[i][j];
      }
    }
  }
  return totalRoja;
}

console.table(matriz10por10);
console.log(sumaRoja());

function sumaVerde() {
  let totalVerde = 0;
  for (let i = matriz10por10.length; i === 0; i--) {
    for (let j = matriz10por10[i].length; j === 0; j--) {
      if (i === j) {
        totalVerde += matriz10por10[i][j];
      }
    }
  }
  return totalVerde;
}

console.table(matriz10por10);
console.log(sumaVerde());
