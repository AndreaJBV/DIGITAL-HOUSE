// CICLOS, BUCLES

for ( let vuelta = 1; vuelta < 5; vuelta++){
    // BLOQUE DE CODIGO
    console.log('Estoy dando la vuelta ' + vuelta);
}


//WHILE
let numero = 1;
while( numero <= 5){
    console.log(numero);
    numero++;
}

//Do while
let numeroDoWhile = 1
do{
    console.log(numeroDoWhile);
    numeroDoWhile++
}while( numeroDoWhile <= 10)

//Mostrar en la consola los numeros del 0 al 10 
let contarHastaDiez = ()=>{
    for (let i = 0; i <= 10 ; i++){
        console.log(i)
    }
}

//Mostrar en la consola los numeros del 0 al numero que le pase
let contarHasta = (maximo)=>{
    for (let i = 0; i <= maximo ; i++){
        console.log(i)
    }
}
console.log(contarHasta(15));


//Vamos a complicar los ejercicios. Realizar un ejercicio en el cual se visualice una cuenta del 1 a 10, y a la vez, una cuenta inversa de 10 a 1.
let contarYdescontar = () => {

    for (let j = 1; j < 11; j++){
        console.log("------");
        console.log(j);
        console.log(11-j);
        console.log("------");

    }
}

//Función que muestre los números pares esde el 1 hasta el número que le encie por parametro
let mostrarNumerosPares = ( max ) => {
    for (let i = 1; i <= max ; i++){
        if (i % 2 === 0 ) {
            console.log(i);

        }
    }
}
mostrarNumerosPares(20);


for (let i = 1; i <= max ; i++){
    if (i % 2 === 0 ) {
        console.log(i);

    }
}

let sumatoria=0;
for (let i = 0; i <= 100 ; i++){
    sumatoria=sumatoria+i;
    console.log(sumatoria);
}

let factorial=1;
for (let i = 3; i >0 ; i--){
    factorial=factorial*i;
    
}
console.log(factorial);

