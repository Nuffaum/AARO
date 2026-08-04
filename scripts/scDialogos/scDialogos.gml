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
	{n: "Cadeira", c: sFaceCardCadeira, cor: c_aqua}
]

global.dialogo1 = [
	{texto: "uma cadeira insana", n: "Naira", c: sFaceCardNaira, v: 2},
	{texto: "ela é bem legal", v: 2, p: 0},
	{texto: "q", n: "Naira", c: sFaceCardNaira, v: 10, pa: 1},
	{texto: "nada", v: 2, p: 0}
]