/*
Dudas pasadas
Ordenamiento por burbujas
 */

let numeros = [6, 5, 1, 2, 4, 3, 8, 7];

for (let i = 0; i < numeros.length; i++){
    // i = 0 ---> 6
    console.log(numeros[i]); //numeros[0] = 6

    for (let j = 0; j < numeros.length - 1; j++){
        // 6 > 5 ---> 1ra iteracion
        console.log(numeros[j] > numeros[i + 1]);

        if(numeros[j] > numeros[j + 1]){
            
            let temp = numeros[j];
            numeros[j] = numeros[j + 1];
            numeros[j + 1] = temp;
        }
        
    }
}
console.log(numeros);

//Swap de variables, el objetivo es que el contenedorA quede con el líquido del contenedorB, y el contenedorB con el del A
let contenedorA = 'LiquidoA';
let contenedorB = 'LiquidoB';

//contenedorA ---> 'LiquidoB'
let auxiliar = contenedorA;
console.log('Vaso auxiliar: '+ auxiliar);
contenedorA = contenedorB;
console.log('Y este es el nuevo contenido de contenedorA: '+ contenedorA);

//contenedorB ---> 'LiquidoA'
contenedorB = auxiliar;
console.log('Y este es el nuevo contenido de contenedorB: '+ contenedorB);