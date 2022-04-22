let likes = [28, 90, 41, 57, 14, 11, 36, 57, 50, 8, 5, 52, 39, 15, 87];
 const ordenaMenorAMayor = () => {
 	for (let i = 0; i < likes.length; i++) {
 		for (let j = 0; j < likes.length - 1; j++) {
 			if (likes[j] > likes[j + 1]) {
 				let temp = likes[j + 1];
 				likes[j + 1] = likes[j];
 				likes[j] = temp;
 			}
 		}
 	}
 	return likes;
 }
 ordenaMenorAMayor();
 console.log(`el primer lugar obtuvo ${likes[likes.length-1]} likes`);
 console.log(`el segundo  lugar obtuvo ${likes[likes.length-2]} likes`);
 console.log(`el tercer lugar obtuvo ${likes[likes.length-3]} likes`);
 console.log(`el ultimo lugar obtuvo ${likes[0]} likes`);

let temperatura = [
	{dia:1,mes:4,temperaturaMaxima:19,temperaturaMinima:18},
	{dia:2,mes:4,temperaturaMaxima:20,temperaturaMinima:6},
	{dia:3,mes:4,temperaturaMaxima:28,temperaturaMinima:7},
	{dia:4,mes:4,temperaturaMaxima:30,temperaturaMinima:1},
	{dia:5,mes:4,temperaturaMaxima:30,temperaturaMinima:15},
	{dia:6,mes:4,temperaturaMaxima:15,temperaturaMinima:13},
	{dia:7,mes:4,temperaturaMaxima:16,temperaturaMinima:20}
]
console.table(temperatura);

const ordenarTemperaturaMinima = () => {
	for (let i = 0; i < temperatura.length; i++) {
		for (let j = 0; j < temperatura.length - 1; j++) {
			if (temperatura[j].temperaturaMinima > temperatura[j + 1].temperaturaMinima) {
				let temp = temperatura[j + 1];
				temperatura[j + 1] = temperatura[j];
				temperatura[j] = temp;
			}
		}
	}
	return temperatura;
}

console.table(ordenarTemperaturaMinima());

const ordenarTemperaturaMaxima = () => {
	for (let i = 0; i < temperatura.length; i++) {
		for (let j = 0; j < temperatura.length - 1; j++) {
			if (temperatura[j].temperaturaMaxima < temperatura[j + 1].temperaturaMaxima) {
				let temp = temperatura[j + 1];
				temperatura[j + 1] = temperatura[j];
				temperatura[j] = temp;
			}
		}
	}
	return temperatura;
}

console.table(ordenarTemperaturaMaxima());