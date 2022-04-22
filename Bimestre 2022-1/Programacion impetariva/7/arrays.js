/*
ARRAYS Y METODOS
STRINGS Y METODOS
 */

//const array1 = ['Martin', 'Flor', 'Nataly', 10, true, [1,2,3, ['hola']]];


const arrayNombre = ['Martin', 'Florencia', 'Nataly','Juan','Andrea', 8, true, false];
      // Indices    [   0    ,       1  ,      2    ] 
    // elementos    [   1er  ,      2do ,      3er  ]


console.log(arrayNombre.length); //Longitud

/*
console.log(arrayNombre[0]);
console.log(arrayNombre[1]);
console.log(arrayNombre[2]);
console.log(arrayNombre[3]);
console.log(arrayNombre[4]);
*/


for (let i = 0; i < arrayNombre.length; i++){
    const personaEnIteracion = arrayNombre[i];
    console.log('indice' + i);
    console.log(personaEnIteracion);
    console.log();
}

for (let i = 0; i < arrayNombre.length; i++){
    const personaIteracion = arrayNombre[i];
    let hola = 'Hola';
    if(personaIteracion == typeof 'Hola'){//Aqui solo se compara el valor
        console.log(personaIteracion);
    } 
    if (typeof personaIteracion === 'string'){ //Esta comparación se realiza entre valor y tipo de dato
        console.log('Entro aqui');
    }
}

1
let arrayCorreosPendientes = [
 
 'iroman@digitalhouse.com',
 'loki%digitalhouse.com',
 'loki@digitalhouse.com',    
 'thanosdigitalhouse.com',
 'thanos@digitalhouse.com'
];

console.log( 'iroman=digitalhouse.com'.indexOf('@'));

function verificarCorreos(arrayCorreos){
    let correosAdmitidos = [];
    for (let i =0; i < arrayCorreos.length; i++){
        const correo= arrayCorreos[i];

        if(correo.indexOf('@') !== -1){
            console.log(correo);
            correosAdmitidos.push(correo);
        }
    }
    return correosAdmitidos
}
verificarCorreos(arrayCorreosPendientes)
