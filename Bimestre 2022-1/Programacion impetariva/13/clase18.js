/*
1 Salir dudas pendientes
2 Realizar entre todos el desafio
 */

let gastosEnero = [//Cada array es una semana y cada valor es un día
	[1135,2500,900,1600,2800,3650,1100],   //Semana 1  ------> gastosMensuales[0]
	[1750,1890,1900,1300,898,1750,2800],   // Semana 2 ------> gastosMensuales[1]
	[1700,1150,1690,1900,1770,4500,2560],  // Semana 3 ------> gastosMensuales[2]
	[800,1250,1430,2100,1980,1270,950]     // Semana 4 ------> gastosMensuales[3]
]

let gastosFebrero = [//Cada array es una semana y cada valor es un día
	[1135,2500,900,1600,2800,3650,1100],   //Semana 1  ------> gastosMensuales[0]
	[1750,1890,1900,1300,898,1750,2800],   // Semana 2 ------> gastosMensuales[1]
	[1700,1150,1690,1900,1770,4500,2560],  // Semana 3 ------> gastosMensuales[2]
	[0,0,0,0,0,0,950]     // Semana 4 ------> gastosMensuales[3]
]


//console.log(gastosMensuales[1]);

function sumaSemana(gastosMensuales,numeroSemana){

    let arraySemana = gastosMensuales[numeroSemana];
    let acumulador = 0;

    for(let i = 0; i < arraySemana.length; i++){

        const gastoDia= gastosMensuales[numeroSemana][i];
        acumulador = acumulador + gastoDia;
    }

    return acumulador;
}

console.log(sumaSemana(gastosEnero,3));
console.log(sumaSemana(gastosFebrero,3));