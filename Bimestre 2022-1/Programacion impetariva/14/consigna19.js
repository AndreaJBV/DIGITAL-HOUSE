//1.
const edades = [33, 27, 34, 30, 34, 25];

function ordenarASC(array){

    for (let i = 0; i < array.length; i++){
         
        for (let j = 0; j < array.length - 1; j++){ //Forma ascendente
          
            if(array[j] > array[j + 1]){
                
                let temp = array[j];
                array[j] = array[j + 1];
                array[j + 1] = temp;
            }   
        }
    }
    return array;
}
console.log(ordenarASC(edades));


const edades2 = [33, 27, 34, 30, 34, 25];
function ordenarDESC(array){

    for (let i = 0; i < array.length; i++){
         
        for (let j = 0; j < array.length - 1; j++){ //Forma descendente
          
            if(array[j] < array[j + 1]){ 
                
                let temp = array[j];
                array[j] = array[j + 1];
                array[j + 1] = temp;
            }   
        }
    }
    return array;
}
console.log(ordenarDESC(edades2));

//2.
const letras = ['C', 'A', 'D', 'E', 'H', 'Z', 'J', 'L' ];

function ordenarLetras(array){

    for (let i = 0; i < array.length; i++){
         
        for (let j = 0; j < array.length - 1; j++){ //Forma ascendente
          
            if(array[j].charCodeAt() > array[j + 1].charCodeAt()){
                
                let temp = array[j];
                array[j] = array[j + 1];
                array[j + 1] = temp;
            }   
        }
    }
    return array;
}
console.log(ordenarLetras(letras));

//3. 

const arrayCuentas =
    [
        {
            titular: "Arlene Barr",
            estaHabilitada: false,
            saldo: 3253.40,
            edadTitular: 33,
            tipoCuenta: "sueldo"
        },
        {
            titular: "Roslyn Torres",
            estaHabilitada: false,
            saldo: 3229.45,
            edadTitular: 27,
            tipoCuenta: "sueldo"
        },
        {
            titular: "Cleo Lopez",
            estaHabilitada: true,
            saldo: 1360.19,
            edadTitular: 34,
            tipoCuenta: "corriente"
        },
        {
            titular: "Daniel Malone",
            estaHabilitada: false,
            saldo: 3627.12,
            edadTitular: 30,
            tipoCuenta: "sueldo"
        },
        {
            titular: "Ethel Leon",
            estaHabilitada: true,
            saldo: 1616.52,
            edadTitular: 34,
            tipoCuenta: "sueldo"
        },
        {
            titular: "Harding Mitchell",
            estaHabilitada: true,
            saldo: 1408.68,
            edadTitular: 25,
            tipoCuenta: "corriente"
        }
    ];

function ordenarCuentaAsc(array){

    for (let i = 0; i < array.length; i++){
            
        for (let j = 0; j < array.length - 1; j++){ //Forma ascendente
            
            if(array[j].saldo > array[j + 1].saldo){
                
                let temp = array[j];
                array[j] = array[j + 1];
                array[j + 1] = temp;
            }   
        }
    }
    return array;
}
console.log(ordenarCuentaAsc(arrayCuentas));
console.log('************************************************');


function ordenarEdadAsc(array){

    for (let i = 0; i < array.length; i++){
            
        for (let j = 0; j < array.length - 1; j++){ //Forma ascendente
            
            if(array[j].edadTitular > array[j + 1].edadTitular){
                
                let temp = array[j];
                array[j] = array[j + 1];
                array[j + 1] = temp;
            }   
        }
    }
    return array;
}
console.log(ordenarEdadAsc(arrayCuentas));
