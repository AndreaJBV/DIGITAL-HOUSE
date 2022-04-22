console.log(' ');
console.log('____ INICIO PARCIAL 1 ____');
// ___________________ Ejercicio 1 _________________________
//1.
console.log(' ');
console.log('EJERCICIO 1:');
console.log(' ');

let estudiante = {

    nombre:'Andrea Julieth',
    apellido:'Bedoya Valencia',
    camada:'Camada 2',
    esParcial: true
}
console.log(estudiante);
console.log(' ');

//2.
let nota = 8;
function laFuturaNota(notaAlumno){

    if (notaAlumno < 4){

        //console.log('Desaprobado');
        return 'Desaprobado';

    }else if (notaAlumno >= 4 && notaAlumno < 7){

        //console.log('Debe rendir examen final');
        return 'Debe rendir examen final';

    }else if (notaAlumno >= 7 ) {

        //console.log('Promocionado');
        return 'Promocionado';

    }
}

//console.log(laFuturaNota(nota));
console.log('El alumno obtuvo una nota igual a' + ' ' + nota + ' ' + 'por lo tanto su condición es: ' +  laFuturaNota(nota));

console.log(' ');
console.log('*******************************************************************');
console.log(' ');


// ___________________ Ejercicio 2 _________________________
//1.
console.log('EJERCIIO 2:');
console.log(' ');

const clase = [
    {
        nombres: "Pepito",
        apellidos: 'Perez',
        bimestre: 2,
        
    },
    {
        nombres: "Juanito",
        apellidos: 'Valencia',
        bimestre: 3,
        
    },
    {
        nombres: "Maria",
        apellidos: 'Sanchez',
        bimestre: 4,
        
    }
]
console.log(clase); 
console.log(' ');


function siguienteCursada(arrayClase){

    for (let i = 0; i < arrayClase.length; i++){
        
        //arrayClase[i].bimestre++;
        arrayClase[i].bimestre= arrayClase[i].bimestre + 1;
        
    }
    return arrayClase
}
console.log('Array clase antes de la cursada: '); 
console.log(clase); 
console.log(' ');
console.log('Array clase despues de la cursada: '); 
console.log(siguienteCursada(clase)); 


console.log(' ');
console.log('*******************************************************************');
console.log(' ');

// ___________________ Ejercicio 3 _________________________
//1.
console.log('EJERCIIO 3:');
console.log(' ');

const asistenciaMinima = 23;
//let progresoPlayground = true;

function aprobacionAlumnosDH(cantidadAsistencias, condicionFinalPlayground){

    if (cantidadAsistencias >= asistenciaMinima && condicionFinalPlayground === true){
        
        return 'Alumno aprobado';

    } else {

        return 'Alumno desaprobado';
    }

}

console.log( aprobacionAlumnosDH(25, false)); 
console.log(' ');
console.log( aprobacionAlumnosDH(20, true));
console.log(' ');
console.log( aprobacionAlumnosDH(20, false));
console.log(' ');
console.log( aprobacionAlumnosDH(26, true));
console.log(' ');
console.log('_____Fin del parcial 1 ___');
console.log(' ');