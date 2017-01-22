// 04 - Crie as functions para as chamadas (Call):

// Crie as functions aqui
function EscreveMeuNome() {
	var nome = "Diego";
	console.log(nome);
}
function EscreveMinhaIdade(){
	var idade = 27;
	console.log(idade);
}
function EscreveMeuTelefone(){
	var telefone = "981461079";
	console.log(telefone);
}
function EscreveMeuNomeDeNovo(){
	EscreveMeuNome();
}
function EscreveMeuNomeComSobrenome(){
	var nome = "Douglas";
	var sobrenome = "Silva";
	console.log(nome + " " + sobrenome);
}
function EscreveTudo(){
	EscreveMeuNome();
	EscreveMinhaIdade();
	EscreveMeuTelefone();
	EscreveMeuNomeDeNovo();
	EscreveMeuNomeComSobrenome();
}
// Chamando


EscreveTudo();