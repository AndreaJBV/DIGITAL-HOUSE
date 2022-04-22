//_____ ¿Qué devuelve cada función?
function test1(x,y){
    return y-x;
}
test1(10,40); //Resta de 40 -10 =30
console.log(test1(10,40));

function test2(x){
    return x*2;
    console.log(x);
    return x/2;
}
test2(10) // Hace la multiplicación entre x y 2

// ____ Funciones simples
//1
function pulgadasEnCentimetros(pulgadas){
    let  cm= pulgadas*0.393701;
    return cm;
}

let prompt = require("prompt-sync")({sigint:true});
//let conversionPulgadasACentimetro = prompt('Por favor ingresar las pulgadas: ');
//console.log(pulgadasEnCentimetros(conversionPulgadasACentimetro));
console.log(pulgadasEnCentimetros(prompt('Por favor ingresar las pulgadas: ') ));

//2
function strToUrl(string){
    return url='http://www.'+ string +'.com/'; 
}
console.log(strToUrl(prompt('Por favor ingresar la palabra de la página: ')));

//3
function admiracion(frase){
    return fra='¡'+ frase +'!'; 
}
console.log(admiracion(prompt('Por favor ingresar la palabra: ')));


//4
function edadPerros(edad){
    let  años= edad*7;
    return años;
}
console.log(edadPerros(prompt('Por favor ingresar la edad del perro: ')));

//5
let valorHora = (salario) => salario/40;
console.log(valorHora(prompt('Por favor ingresar tu salario: ')));
