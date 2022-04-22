/* 
Clase 20
Dudas mesa 19
Ejercitacion
*/

let numeros = [6, 5, 1, 2, 4, 3, 8, 7];
let longituNumeros = numeros.length;
console.log(longituNumeros);
console.log(numeros[longituNumeros]); //Imprime undefine

function ordenMenorMayor(array){

    for (let i = 0; i< array.length; i++){

        for (let j = 0; j < array.length-1; j++){

            if (array[j] > array[j + 1]){

                let vaso = array[j];
                array[j] = array[j +1];
                array[j + 1] = vaso;

            }
        }

    }
    return array;
}
console.log(ordenMenorMayor(numeros));

let personas = [
    {
        nombre: "Dua",
        apellido: "Lipa",
        ocupacion: "cantante",
        estatura: 173
    },
    {
        nombre: "Rick",
        apellido: "Sanchez",
        ocupacion: "cantante",
        estatura: 173
    },
    {
        nombre: "Ariana",
        apellido: "Grande",
        ocupacion: "cantante",
        estatura: 160
    },
    {
        nombre: "Taylor",
        apellido: "Swift",
        ocupacion: "cantante",
        estatura: 180
    }
];

const ordenarPersonas = (arrayPersonas) => {
    for (let i = 0; i < arrayPersonas.length; i++){

        for (let j = 0; j < arrayPersonas.length - 1; j++){

            if(arrayPersonas[j].estatura > arrayPersonas[j + 1].estatura){

                let temp = arrayPersonas[j];
                arrayPersonas[j] = arrayPersonas[j + 1];
                arrayPersonas[j + i] = temp;
            }
        }
    }
    return arrayPersonas;
};
console.table(ordenarPersonas(personas));

/* Consigna 20 */
let likes = [28,90,41,57,14,11,36,57,50,8,5,52,39,15,87]

function ordenarMayorMenor(){

    for(let i = 0; i < likes.length; i++){

    }
}