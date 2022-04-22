/* 
¿Puede subir?
En un parque de diversiones nos piden un programa para verificar si los pasajeros de la montaña rusa pueden subir al juego.
Crear una función puedeSubir() que reciba dos parámetros: altura de la persona y si viene acompañada. Debe retornar un valor booleano (TRUE, FALSE) que indique si la persona puede subirse o no, basado en las siguientes condiciones:
 a - Debe medir más o igual de 1,40m y menos de 2 metros. 
 b - Si mide menos de 1,40m hasta 1.20m, deberá venir acompañado.
 c - Si mide menos de 1,20m, no podrá subir ni acompañado.
 
****extra**** 
Modificar la función para impedir la subida al juego si la persona fue penalizada por no respetar las normas y reglas del juego.

*/
function puedeSubir(altura,vieneAcompaniado){
   //CREO UNA VARIABLE AUXILAR, LA CUAL MUTARE SEGUN 
    let puedeSubir = false

    if(altura <= 2.0 && altura >= 1.40){
        console.log('sube');
        puedeSubir = true
    }

    if(altura < 1.40 && altura >= 1.20  && vieneAcompaniado){
        console.log('sube');
        puedeSubir = true
    }

    return puedeSubir

}
//a  Debe medir más o igual de 1,40m y menos de 2 metros.
console.log(puedeSubir(1.45, false))
console.log(puedeSubir(1.45, true))

//b Si mide menos de 1,40m hasta 1.20m, deberá venir acompañado.
console.log(puedeSubir(1.30, false))
console.log(puedeSubir(1.30, true))

//c Si mide menos de 1,20m, no podrá subir ni acompañado.
console.log(puedeSubir(1.15, true))
console.log(puedeSubir(1.15, false))

// si es muy alto no podra subir 
console.log(puedeSubir(2.5, true))
console.log(puedeSubir(2.5, false))