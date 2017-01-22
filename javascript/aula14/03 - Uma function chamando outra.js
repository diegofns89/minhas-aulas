// 03 - Crie uma function que chame a primeira function abaixo e depois dê um console.log "Miau de novo"

function Miar() {
	console.log("Miauuuu");
}

// Crie a function aqui e chame de MiarMais
function MiarMais(){
	Miar();
	console.log("Miau de Novo");
}

// Crie a terceira que chame MiarMais e ainda dê a saída "Miau ainda mais"
function MiarMuitoMesmo(){
	MiarMais();
	console.log("Miau ainda Mais");
}

// Chame aqui. Deve responder "Miau", "Miau de novo" e "Miau ainda mais"
MiarMuitoMesmo();
