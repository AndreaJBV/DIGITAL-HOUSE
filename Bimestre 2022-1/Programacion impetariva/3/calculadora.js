// PROMPT
let prompt = require("prompt-sync")({sigint:true});


//__________Nivel 1__________
const numA= parseInt(prompt('Ingrese el número a: '));
const numB= parseInt(prompt('Ingrese el número b: '));
console.log(typeof parseInt(numA));//Se puede quitar el parseInt, porque ya se colocó en la entrada de datos
console.log(typeof parseInt(numB));


//Creación de las fuciones
const sumar = (a,b) => a+b; // con el const dejo "fijo" el nombre para la función y no se puede repetir en el código
const restar = (a,b) => a-b;
const multiplicar = (a,b) => a*b;
const dividir = (a,b) => a/b;

console.log(sumar(parseInt(numA),parseInt(numB))); //Se puede quitar el parseInt, porque ya se colocó en la entrada de datos
console.log(restar(parseInt(numA),parseInt(numB)));
console.log(multiplicar(parseInt(numA),parseInt(numB)));
console.log(dividir(parseInt(numA),parseInt(numB)));

//__________Nivel 2__________
const cuadradoDeUnNumero = (numero) => {
    let cuadrado = numero * numero;
    return cuadrado;
}

console.log(cuadradoDeUnNumero(numA));
console.log(cuadradoDeUnNumero(numB));

// testeo de operaciones
console.log(`Testeo de operaciones ${sumar(numA,numB)}`);
console.log(`Testeo de operaciones ${restar(numA,numB)}`);
console.log(`Testeo de operaciones ${multiplicar(numA,numB)}`);
console.log(`Testeo de operaciones ${dividir(numA,numB)}`);