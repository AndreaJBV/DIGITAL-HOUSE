/*
OBJETOS LITERALES
 */

let marcasTelefonos = ['samsung','apple','motorolla']
let preciosTelefonos = [200,       1000,       180];

// console.log(marcasTelefonos[0] + '| Precio: ' + preciosTelefonos[0] );
// console.log(marcasTelefonos[1] + '| Precio: ' + preciosTelefonos[1] );
// console.log(marcasTelefonos[2] + '| Precio: ' + preciosTelefonos[2] );

for (let i = 0; i < marcasTelefonos.length; i++){
     const tel = marcasTelefonos[i];
     console.log(marcasTelefonos[i] + '| Precio: ' + preciosTelefonos[i] );
}

let celular1 = {
    marca : 'Samsung',
    precio : 200
    //modelo : null
}

const celular2 = {
    marca : 'Apple',
    precio : 1000,
    modelo : '13 pro',
    diponible : true,
    saludar: function nombreFuncion(){//la funcion debe retornar algo o poner el console.log adentro
        return 'Bienvenido';
    },
    
}

console.log(celular2.saludar())//para ejecucar un meétodo, se ultiliza el nombre y parentesis

celular1.modelo = 's 20';//Modifica una propiedad del objeto
celular1.precio = 250;

console.log(celular1); //La forma de ver el objeto
console.log(celular1.marca); //Forma de ver la marca del celular
console.log(celular1.precio); //Forma de ver el precio del celular


//ARRAY DE OBJETOS
const arrayCelulares= [
    {
        marca : 'Apple',
        precio : 1000,
        modelo : '13 pro',
        diponible : true,
        saludar: function nombreFuncion(){//la funcion debe retornar algo o poner el console.log adentro
            return 'Bienvenido';
        }
    },
    {
        marca : 'Motorolla',
        precio : 1000,
        modelo : '13 pro',
        diponible : true,
        saludar: function nombreFuncion(){//la funcion debe retornar algo o poner el console.log adentro
            return 'Hello Moto';
        }
    },
    {
        marca : 'Samsung',
        precio : 1000,
        modelo : '13 pro',
        diponible : true,
        saludar: function nombreFuncion(){//la funcion debe retornar algo o poner el console.log adentro
            return 'Bienvenido a Samsung';
        }
    },
    {
        marca : 'Xiaomi',
        precio : 1000,
        modelo : '13 pro',
        diponible : true,
        saludar: function nombreFuncion(){//la funcion debe retornar algo o poner el console.log adentro
            return 'Bienvenido';
        }
    },
    
]

console.log(arrayCelulares[0]);//Muestra el objeto de la posición 0
console.log(arrayCelulares[0].marca);//Muestro del objeto en la posicion 0, al metodo marca


//Utilización del this
const arrayCelulares2= [
    {
        marca : 'Apple',
        precio : 1000,
        modelo : '13 pro',
        diponible : true,
        saludar: function nombreFuncion(){//la funcion debe retornar algo o poner el console.log adentro
            return 'Bienvenido usuario a ' + this.marca;
        }
    },
    {
        marca : 'Motorolla',
        precio : 1000,
        modelo : '13 pro',
        diponible : true,
        saludar: function nombreFuncion(){//la funcion debe retornar algo o poner el console.log adentro
            return 'Bienvenido usuario a ' + this.marca;
        }
    },
    {
        marca : 'Samsung',
        precio : 1000,
        modelo : '13 pro',
        diponible : true,
        saludar: function nombreFuncion(){//la funcion debe retornar algo o poner el console.log adentro
            return 'Bienvenido usuario a ' + this.marca;
        }
    },
    {
        marca : 'Xiaomi',
        precio : 1000,
        modelo : '13 pro',
        diponible : true,
        saludar: function nombreFuncion(){//la funcion debe retornar algo o poner el console.log adentro
            return 'Bienvenido usuario a ' + this.marca;
        }
    },
    
]

for (let i = 0; i < arrayCelulares2.length; i++){
    const celu =arrayCelulares2[i];
    console.log(arrayCelulares2[i].saludar());
}


function buscarPorMarca(marca){
    for (let i= 0; i< arrayCelulares2.length; i++){
        const celul = arrayCelulares2[i];
        console.log(arrayCelulares2[i].marca)
        if (marca === celul.marca){
            return celul;
        }
    } 
    return undefined

}
console.log(buscarPorMarca('AppleSAS'))


