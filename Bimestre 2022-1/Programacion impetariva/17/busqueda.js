let array=[1,2,3,4,5,6,7,8,9,10];

/*
Busqueda lineal
 */
const buscar = (array, item) => {
    for (let i = 0; i < array.length; i++){
        if(array[i] === item){
            return i;
        }
    }
    return null;
}
console.log(buscar(array, 3));
console.log(buscar(array, 99));

/*
Busqueda binaria: Requiere que el array este ordenado.
 */

function busquedaBinaria(array, item){ //Divide y venceras 
    let inicio = 0;
    let fin = array.length - 1;
    while(inicio <= fin){
        let indiceMedio = Math.floor((inicio + fin) / 2);
        let elementoAdivinar = array[indiceMedio];

        if (elementoAdivinar === item){
            return indiceMedio; // El elemento que se está buscando está en el indice
        }
        if (item > indiceMedio){
            inicio = indiceMedio + 1;
        } else {
            fin = indiceMedio - 1;
        }
    }
    return null
}
console.log(busquedaBinaria(array, 2));
console.log(busquedaBinaria(array, 10));
console.log(busquedaBinaria(array, 18));