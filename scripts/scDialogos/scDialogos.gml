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

	{texto: "deixa eu pegar a chave", p: 2, v: 2},
	{texto: "nop hahahaha", v: 2, p: 1},
	{texto: "N-U-N-C-A", v: 20, p: 1}

]