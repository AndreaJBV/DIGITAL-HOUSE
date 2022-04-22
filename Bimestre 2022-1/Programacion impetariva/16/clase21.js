let pruebaA = [4, 3, 1, 7, 9, 0, 4, 2];
let pruebaB = [1, 2, 3, 4, 5, 6, 7, 8];

function estaOrdenado(array) {
  for (let i = 0; i < array.length - 1; i++) {
    if (array[i] > array[i + 1]) {
      return false;
    }
  }
  return true;
}

function sortArray(array, ordenado) {
  if (ordenado === false) {
    for (let i = 0; i < array.length; i++) {
      for (let j = 0; j < array.length - 1; j++) {
        if (array[j] > array[j + 1]) {
          let temp = array[j]; //vaso
          array[j] = array[j + 1];
          array[j + 1] = temp;
        }
      }
    }
    console.log(array);
  } else {
    console.log("esta ordenado");
  }
}
sortArray(pruebaA, estaOrdenado(pruebaA));
sortArray(pruebaB, estaOrdenado(pruebaB));
