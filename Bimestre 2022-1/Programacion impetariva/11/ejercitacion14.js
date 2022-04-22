let misMascotas2 = [
    {
        nombre: 'Tom',
        raza: 'Diego',
        edad: 10,
        sonido:' aww ',
        emitirSonido: function(){
            return this.sonido + this.sonido;
        }

    },{
        nombre: 'TLocky',
        raza: 'Husky',
        edad: 2,
        sonido:' guau guau ',
        emitirSonido: function(){
            return this.sonido + this.sonido;
        }

    },{
        nombre: 'Bigotes',
        raza: 'B y N',
        edad: 4,
        sonido:' Miaaaa ',
        emitirSonido: function(){
            return this.sonido + this.sonido;
        }

    }
];

// console.log(misMascotas[0]);

function aumentarEdad(arrayDeMascotas){
    for (let i = 0; i < arrayDeMascotas.length; i++){
        // console.log('*********');
        // console.log(arrayDeMascotas);
        arrayDeMascotas[i].edad= arrayDeMascotas[i].edad + 1;
    }
}

aumentarEdad(misMascotas2);
console.log(misMascotas2);

function aumentarEdad2(arrayDeMascotas){

    for (let i = 0; i < arrayDeMascotas.length; i++){

        if (arrayDeMascotas[i].edad < 6){

            arrayDeMascotas[i].edad++;

        }else if (arrayDeMascotas[i].edad >=6 && arrayDeMascotas[i].edad <=10){

            arrayDeMascotas[i].edad= arrayDeMascotas[i].edad + 2;

        }else if (arrayDeMascotas[i].edad >10 ){

            arrayDeMascotas[i].edad = arrayDeMascotas[i].edad+(arrayDeMascotas[i].edad/2);


        }
    }
}

aumentarEdad2(misMascotas2);
console.log(misMascotas2);

function generarId(arrayDeMascotas){
    for (let i = 0; i < arrayDeMascotas.length; i++){
        arrayDeMascotas[i].id = i + 1;
    }
}
generarId(misMascotas2);
console.log(misMascotas2);