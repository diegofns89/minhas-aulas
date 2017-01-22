// 07 - Crie uma function que dê a saída se o número é par ou impar

function ParOuImpar(numero){
	if((numero % 2) === 0){
		console.log("O número " + numero + " é par");
	}
	else {
		console.log("O numero " + numero + " é impar");
	}
}

ParOuImpar(1);
ParOuImpar(10);
ParOuImpar(13);
ParOuImpar(0);