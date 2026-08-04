/*

texto = texto que vai ser escrito
n = nome de quem tá falando
c = imagem de quem tá falando
*v = velocidade do texto (padrão 2)
*pa = pular automaticamente após terminar de escrever
*p = preset de um personagem

*/

global.persongens = [
	{n: "Cadeira", c: sFaceCard}
]

global.dialogo1 = [
	{texto: "*uma cadeira insana", n: "Naira", c: sFaceCard, v: 2},
	{texto: "ela é bem legal", v: 2, pa: true, p: 0},
	{texto: "q", n: "Naira", c: sFaceCard, v: 2}
]