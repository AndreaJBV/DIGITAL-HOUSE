/*
  CLASE 7
  OP LÓGICOS

*/
let llueve = true;
let granizado = false;

console.log(llueve && granizado);//false
console.log(llueve || granizado);//true
console.log(granizado || 'No granizado');//'No granizado'
console.log(granizado && 'No granizado');//true
let mensaje = granizado && 'Ok, circule con normalidad';


if(''){
    console.log('Si ingreso');
}else{
    console.log('No');
}

// Ejercicio de clase
function puedeSubir(altura,vieneAcompanado){
    let sube = true;
    if (altura >= 1.40 && altura < 2 ){
        sube = true; //se puede colocar un return true, en vez de la variable

    }else if(altura >= 1.20 && altura < 1.40){
        sube = false; //se puede colocar un return true, en vez de la variable
    }
    return sube;
}
console.log(puedeSubir(1.60,true));