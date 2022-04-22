/*
INTEGRACIÓN 
*/ 

const puntuacionesAlicia = [10, 80, 75];
const putuacionesBob = [90, 20, 25];

function encontrarGanador(puntuacionesAlicia, putuacionesBob) {
    let puntosPrimerParticipante = 0;
    let puntosSegundoParticipante = 0;
    
    for (let i =0; i< puntuacionesAlicia.length; i++){

        if(puntuacionesAlicia[i] > putuacionesBob[i]){
            puntosPrimerParticipante++

        }
        else if(puntuacionesAlicia[i] < putuacionesBob[i]){
            puntosSegundoParticipante++

        }
        
        if (puntosPrimerParticipante > puntosSegundoParticipante){
            return 'Alicia';
        }else if (puntosPrimerParticipante < puntosSegundoParticipante){
            return 'Bob';
        }else{
            return 'Empate';
        }
    }
    
}

//console.log("El ganador es: " + encontrarGanador(puntuacionesAlicia, putuacionesBob) + "participante");

console.log(encontrarGanador(puntuacionesAlicia, putuacionesBob));


let concusro = {
    estapas: 3,

    ganador: ' ',

    encontrarGanador: function (puntuacionesAlicia, putuacionesBob) {
        let puntosPrimerParticipante = 0;
        let puntosSegundoParticipante = 0;
        
        for (let i =0; i< this.estapas; i++){
    
            if(puntuacionesAlicia[i] > putuacionesBob[i]){
                puntosPrimerParticipante++
    
            }
            else if(puntuacionesAlicia[i] < putuacionesBob[i]){
                puntosSegundoParticipante++
    
            }
        }
            
        if (puntosPrimerParticipante > puntosSegundoParticipante){
            this.ganador = 'Participante A';
        }else if (puntosPrimerParticipante < puntosSegundoParticipante){
            this.ganador = 'Participante B';
        }else{
            this.ganador = 'Sin ganador';
        }
        
        
    }
}

console.log(concusro.ganador);
console.log(concusro.encontrarGanador([20, 80, 90],[80, 20, 10]));
console.log(concusro.ganador);


