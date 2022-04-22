function estaOrdenado(array){

    for (let i = 0; i < array.length-1; i++){

        if (array[i] > array[i + 1]){
            return false;
        }
    }
    return true;
}

console.log(estaOrdenado(pruebaB)); // true --> esta ordenado
console.log(estaOrdenado(pruebaA)); // false --> esta desordenado

let ordenado = estaOrdenado(pruebaA);
if (ordenado === false){ //Esta ordenado
    
    for(let i = 0; i < pruebaA.length; i++){
        for (let j = 0; j < pruebaA.length-1; j++){
            if (pruebaA[j] > pruebaA[j+1]){
                let temp = pruebaA[j];
                pruebaA[j] = pruebaA[j+1];
                pruebaA[j+1] = temp;
            }
        }
    }
}
console.log(pruebaA)

function sortArray(array, ordenar){
    if (ordenar === false){ //Esta ordenado
        for(let i = 0; i < array.length; i++){
            for (let j = 0; j < array.length-1; j++){
                if (array[j] > array[j+1]){
                    let temp = array[j];
                    array[j] = array[j+1];
                    array[j+1] = temp;
                }
            }
        }
        console.log(array);
    }else{
        console.log('Esta ordenado');
    }
}
sortArray(pruebaA, estaOrdenado(pruebaA))
sortArray(pruebaB, estaOrdenado(pruebaB))