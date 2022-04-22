const matrizNumeros = [[1,2],[3,8],'Pepe'];
//console.log(matrizNumeros[0][1]);


for (let i=0; i < matrizNumeros.length; i++){//filas
    //console.log(matrizNumeros[i]);
    const fila = matrizNumeros[i]

    for(let j=0 ; j<fila.length; j++){//Columnas
        const elemento = matrizNumeros[i][j];
        console.log(elemento);
    }
}


for (let i=0; i < matrizNumeros.length; i++){//filas
    const fila = matrizNumeros[i]
    for(let j=0 ; j<fila.length; j++){//Columnas
        if(matrizNumeros[i][j] % 2 === 0){ // par
            console.log(matrizNumeros[i][j]);
        }
        
    }
}

function generarMatriz10por10() {
    let contador = 0;
    let matriz = [];
    for (let i = 1; i <= 10; i++) {
      let fila = [];
      for (let j = 1; j <= 10; j++) {
        contador++;
        fila.push(contador);
      }
      matriz.push(fila);
    }
    return matriz;
  }
  
  let matriz10por10 = generarMatriz10por10()
  console.log(matriz10por10)
  console.table(matriz10por10)
  