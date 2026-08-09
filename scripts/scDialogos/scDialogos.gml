/*

texto = texto que vai ser escrito
n = nome de quem tá falando
c = imagem de quem tá falando
*v = velocidade do texto (padrão 2)
*pa = pular automaticamente após terminar de escrever
*p = preset de um personagem
*cor = cor

*/

global.personagens = [
	{n: "Naira", c: sFaceCardNaira, cor: $9a92df},
	{n: "Cadeira", c: sFaceCardCadeira, cor: c_blue},
	{n: "Cadeira Lixo", c: sFaceCardCadeira, cor: c_blue}
]

global.dialogo1 = [
	{texto: "uma cadeira insana", p: 0, v: 2},
	{texto: "ela é bem legal", v: 2, p: 1},
	{texto: "q", p: 0, v: 10, pa: 1},
	{texto: "nada", v: 2, p: 1}
]

global.dialogo2 = [
	{texto: "deixa eu pegar a chave", n: "Naira", c: sFaceCardNaira, v: 2},
	{texto: "nop hahahaha", v: 2, p: 2},
	{texto: "N-U-N-C-A", v: 20, p: 2}
]

global.dialogo3 = [

	{texto: "cê quer pegar o taco de baseball daquele cara?...", n: "caranguejao", c: sFaceCardCaranguejo, v:2, p:2},
	{texto: "mas pera...", n: "caranguejao", c: sFaceCardCaranguejo, v: 10, p: 2},
	{texto: "ce nem sabe dançar KKKKKKKKKKK", c: sFaceCardCaranguejo, n: "caranguejao", v: 1, p: 2}
]

global.dialogo4 = [

	{texto: "cê quer pegar o taco de baseball daquele cara?", n: "caranguejao", c: sFaceCardCaranguejo, v:2, p:2},
	{texto: "vai ter que me ganhar na dança", n: "caranguejao", v: 2, p:2, c: sFaceCardCaranguejo, t: 2, mg: "dança"}
	//{texto: }
]

global.dialogo5 = [
	{texto: "cê já se provou um verdadeiro...", n: "caranguejao", c: sFaceCardCaranguejo, v: 2, p: 2},
	{texto: "mestre da dança", n: "caranguejao", c: sFaceCardCaranguejo, v: 2, p: 2}
]