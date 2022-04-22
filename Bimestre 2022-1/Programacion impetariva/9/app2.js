// Bonus Extra

function digitalHouse(numero1, numero2){

    for (i=1; i<=100; i++){

        if((i % numero2 === 0) && (i % numero1 === 0)){
            console.log( 'El numero es:'+' '+ i + ' '+ 'Digital');
        }else if (i % numero1 === 0){
            console.log( 'El numero es:'+' '+ i + ' '+ 'House');
        }else if (i % numero2 === 0){
            console.log('El numero es:'+' '+ i + ' '+ 'Digital House');
        }else{
            console.log('El numero es:'+' '+ i);
        }
    }
}

digitalHouse(2, 13);
