// 1. Crear un array llamado misMascotas
/* 2. Dentro de misMascotas crear un objeto para cada mascota, cada objeto deberá tener:    
    * nombre
    * raza
    * edad
    * sonido
    * un método (que nos retorne ese sonido 2 veces)
Cuando esté listo, verifica por consola
*/
let misMascotas = [
    {
        nombre: 'Tom',
        raza: 'Criollo',
        edad: 10,
        sonido: 'guau guau',
        ladrar: function (){
            return this.sonido + ' ' + this.sonido
        }

    },
    {
        nombre: 'Cyborg',
        raza: 'Lobo Siberiao',
        edad: 10,
        sonido: 'awww',
        ladrar: function (){
            return this.sonido + ' ' + this.sonido
        }

    },
    {
        nombre: "Zeus",
        raza: "snaucer",
        edad: 6,
        sonido: 'guau guau',
        ladrar: function () {
            return this.sonido + " " + this.sonido
        }
    },
    {
        nombre: "Isis",
        raza: "Criollo",
        edad: 4,
        sonido: "miau miau",
        maullar: function (){
        return this.sonido + " " + this.sonido
        }

    },
];
//console.log(misMascotas);
console.log(misMascotas[3].maullar);


/*
Crear una función que se llame aumentarEdad que aumente la edad de cada animal en 1.
 */
function aumentarEdad(arrayMascotas){

    for (let i = 0; i < arrayMascotas.length; i++){

        const mascota = arrayMascotas[i];
        mascota.edad++;
        console.log(arrayMascotas[i].nombre + ' ' + 'tendria una edad aumentada de: ' + arrayMascotas[i].edad);

    }
}
aumentarEdad(misMascotas);
//console.log(misMascotas);