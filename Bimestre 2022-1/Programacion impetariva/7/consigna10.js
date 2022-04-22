// Punto 1.
let arrayCorreosPendientes = [
 
    'iroman@digitalhouse.com',
    'loki%digitalhouse.com',
    'loki@digitalhouse.com',    
    'thanosdigitalhouse.com',
    'thanos@digitalhouse.com'
   ];
   
   console.log( 'iroman=digitalhouse.com'.indexOf('@'));
let correosAdmitidos = [];
let correosDescartados = [];

   function verificarCorreos(arrayCorreos){
       
       for (let i =0; i < arrayCorreos.length; i++){
           const correo= arrayCorreos[i];
   
           if(correo.indexOf('@') !== -1){
               console.log(correo);
               correosAdmitidos.push(correo);
               
               
           }else{
            correosDescartados.push(correo);
           }
       }
       //return correosAdmitidos, correosDescartados
       console.log('Estos son los correos admitidos:' + ' ' + correosAdmitidos + 'La cantidad de los correos admitidos es:' + ' ' + correosAdmitidos.length);
       console.log('Estos son los correos NO admitidos:' + ' ' + correosDescartados + 'La cantidad de los correos No admitidos es:' + ' ' + correosDescartados.length);
    }
   verificarCorreos(arrayCorreosPendientes)
   
   // Punto 2.

   const prompt = require("prompt-sync")({ sigint: true });
   //let vectorCorreo2 = []
   
   
function validarCorreo(){

    let repetir = true;
    while (repetir){
        let correo = prompt('Por favor ingresar el correo: ');

        if(correo.indexOf('@') !== -1){
            console.log(correo);
            correosAdmitidos.push(correo);
            repetir = false; 
            console.log('Correo correcto');
                
        }else{
             correosDescartados.push(correo);
             console.log('El correo no es correcto, intente de nuevo');
    
    
        }

    }
 
 }

 validarCorreo();

   

