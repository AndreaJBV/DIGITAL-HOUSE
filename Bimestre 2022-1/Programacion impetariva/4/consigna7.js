let edad = 27 //(el número es a modo de ejemplo, podés cambiarlo o
//crear otras para tener varias pruebas)

const impar= edad % 2;
console.log(impar);

if(edad < 18 && edad >0) {
    console.log("No puede pasar al bar.");
    console.log((impar!=0) && '¿Sabias que tu edad es impar?');
} else if (edad < 21 && edad >0 ){
    console.log("Puede pasar al bar, pero no puede tomar alcohol.");
    console.log((impar!=0) && '¿Sabias que tu edad es impar?');
}else if (edad === 21) {
    console.log("¡,Bienvenido, felicitaciones por haber llegago a la mayoría de edad!");
    console.log((impar!=0) && '¿Sabias que tu edad es impar?');
} else if (edad >=21) {
    console.log("Puede pasar al bar y tomar alcohol.");
    console.log((impar!=0) && '¿Sabias que tu edad es impar?');
} else{
    console.log('Por favor ingrese un número válido');
}


// Total a pagar
function valorExtra(litrosConsumidos){
    if(litrosConsumidos > 0 && litrosConsumidos < 25){
        return 50;

    }else if(litrosConsumidos > 25){
        return 25;
    }else{
        return 0;
    }
}

function totalAPagar(vehiculo,litrosConsumidos){
    switch (vehiculo){
        case "coche":
            console.log('el precio por litro es de $86.');
            valorExtra(litrosConsumidos);
            console.log(86 + valorExtra);
            break;
        case "moto":
            console.log('ha de ser $70');
            valorExtra(litrosConsumidos);
            console.log(70 + valorExtra);
            break;
        case "autobús":
            console.log('”, ha de ser $55');
            valorExtra(litrosConsumidos);
            console.log(55 + valorExtra);
            break;
        default:
            console.log('Este vehículo no se encuentra en nuestra lista');
            break;
    }
}

