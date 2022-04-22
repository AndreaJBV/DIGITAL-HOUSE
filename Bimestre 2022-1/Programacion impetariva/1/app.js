// Situación: Cita médica

//____Previa cita
let horaDespertador=7; //Numérico
let desayuno=true; //Booleano
let cepillarse= true; //Booleano
let lavarPlatos = false; //Booleano
let ducha=true; //Booleano
let peinarse= true; //Booleano
let vestirnos =true; //Booleano
let buscarDocumentos= true; //Booleano
let tengoDineroPasajesCopago= true; //Booleano
let pasajes = 5000; //Numérico

//_____ Datos cita médica
let nombreMedico= 'Carlos'; //String
let apellidoMedico= 'Castella'; //String
let horaCita = 9; //Numérico
let valorCita = 5000; //Numérico

//Ingreso de datos por consola
let prompt = require("prompt-sync")({sigint:true});
let nombrePaciente = prompt("Ingresa nombre del paciente: "); //String


//_____ Toma de signos vitales
let temperatra= 38.5; //Numérico- decimal
let tengoFiebre= true; //Booleano
let tengoTos= true; //Booleano
let dificultadRespirar= true; //Booleano
let positivoCovid= true; //Booleano

//____ Impresion por consola el nombre del paciente y signos vitales
console.log(`El nombre del paciente es: ${nombrePaciente}`);
console.log(`La temperatura del paciente es: ${temperatra}`);
console.log(`¿El paciente tiene fiebre?: ${tengoFiebre}`);
console.log(`¿El paciente tiene tos?: ${tengoTos}`);
console.log(`¿El paciente tiene dificultad para respirar?: ${dificultadRespirar}`);
console.log(`¿El paciente tiene COVID-19?: ${positivoCovid}`);

//__ Utilizando condicional 
if(positivoCovid==true){
    console.log('¡TIENES COVID-19!, POR FAVOR ENTRAR EN CUARENTENA');
}

