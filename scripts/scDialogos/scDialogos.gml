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
	{n: "Naira", c: sFaceCardNaira, cor: c_white},
	{n: "AAROMIN", c: sFaceCardNaira_1, cor: c_white},
	{n: "Cadeira", c: sFaceCardCadeira, cor: c_white},
	{n: "Cadeira Lixo", c: sFaceCardCadeira, cor: c_white},
	{n: "CarangueJÃO", c: sFaceCardCaranguejo, cor: c_white}
]

global.dialogo1 = [
	{texto: "uma cadeira insana", p: 0, v: 2},
	{texto: "ela é bem legal", v: 2, p: 2},
	{texto: "q", p: 0, v: 10, pa: 1},
	{texto: "nada", v: 2, p: 2}
]

global.dialogo2 = [
	{texto: "deixa eu pegar a chave", n: "Naira", c: sFaceCardNaira, v: 2},
	{texto: "nop hahahaha", v: 2, p: 2},
	{texto: "N-U-N-C-A", v: 10, p: 2}
]

global.dialogo3 = [

	{texto: "Olá, uh... senhor caranguejo...", p: 0, v: 5},
	{texto: "qualé piá, quer requebrar?", p: 4},
	{texto: "(Meu Deus, o caranguejo fala...)", p: 0},
	{texto: "Uh... não, eu só queria que você abrisse aquela porta", p: 0},
	{texto: "pra passar, vai ter mandar o passinho", p: 4},
	{texto: "Mas eu não sei dançar...", p: 0},
	{texto: "tão eu também vô saber abrir essa porta não", p: 4},
	{texto: "(Folgado...)", p: 0},
]

global.dialogo4 = [

	{texto: "Pode abrir a porta pra mim...?", p: 0},
	{texto: "qualé piá, sabe requebrar?", p: 4},
	{texto: "Na verdade, eu ando treinando um pouco...", p: 0},
	{texto: "então mostra e eu abro a porta procê", p: 4, t: 2, mg: "dança"}
]

global.dialogo5 = [
	{texto: "cê já se provou um verdadeiro...", p: 4},
	{texto: "mestre do passinho", p: 4, t: 3}
]

global.dialogo6 = [
	{texto: "calma aí, num precisa de violência...", n: "caranguejo", c: sFaceCardCaranguejo, v: 5, p: 2, pa: 1},
	{texto: "PARAAAA, SAI DJABO", n: "caranguejo puto", c: sFaceCardCaranguejo, v: 5, p: 2, pa: 1},
	{texto: "VAZA DAQUI", n: "caranguejo puto", c: sFaceCardCaranguejo, v: 5, p: 2, pa: 1},
	{texto: "SAI", n: "caranguejo puto", c: sFaceCardCaranguejo, v: 5, p: 2, pa: 1},
	{texto: "SAI DAQUI NAMORAL", n: "caranguejo puto", c: sFaceCardCaranguejo, v: 5, p: 2, pa: 1},
	{texto: "SAI SAI SAI", n: "caranguejo puto", c: sFaceCardCaranguejo, v: 5, p: 2, pa: 1},
	{texto: "SAAAAAI", n: "caranguejo puto", c: sFaceCardCaranguejo, v: 5, p: 2, pa: 1},
	{texto: "SAAAAAI", n: "caranguejo puto", c: sFaceCardCaranguejo, v: 5, p: 2, pa: 1},
	{texto: "SAAAAAI", n: "caranguejo puto", c: sFaceCardCaranguejo, v: 5, p: 2, pa: 1},
	{texto: "SAAAAAI", n: "caranguejo puto", c: sFaceCardCaranguejo, v: 5, p: 2, pa: 1},
	{texto: "SAAAAAI", n: "caranguejo puto", c: sFaceCardCaranguejo, v: 5, p: 2, pa: 1},
]

global.diag_aaromin1 = [//AAROMIN texto 1
	{texto: "Bom dia, flor do dia!! ('u')", n: "???", p: 1},
	{texto: "Bilhete por favor", n: "???", p: 1},
	{texto: "O que...?", p: 0},
	{texto: "Não tem bilhete?? Poxa... :/", n: "???", p: 1},
	{texto: "Que lugar é esse...?", p: 0},
	{texto: "Bem-vinda ao Metrô AARO!", n: "???", p: 1},
	{texto: "Meu nome é AAROMIN, sua assistente! (~´3`~)", p: 1},
	{texto: "Infelizmente, você não deveria estar aqui sem bilhete.", p: 1},
	{texto: "Então teremos que expulsá-la pra fora do trem ToT", p: 1},
	{texto: "O que?? Mas a gente tá no meio do espaço!!", p: 0},
	{texto: "Não se preocupe, os nossos funcionários sabem muito bem o que estão fazendo ;)", p: 1},
	{texto: "Falha na comunicação", p: 1, cor: c_red},
	{texto: "Mmm, estranho... Bom, tudo bem! O metrô não vai parar até conseguirmos entrar em contato com a equipe, ok? ;)", p: 1},
	{texto: "E mais ou menos quanto tempo vou ter que esperar...? Eu meio que tinha compromisso...", p: 0},
	{texto: "Calculando...", p: 1, v: 10, pa: true, cor: c_yellow},
	{texto: "Aproximadamente até 00:00 de 31 de dezembro de 1969 :D", p: 1},
	{texto: " ...", p: 0},
	{texto: "Ou também temos as saídas de emergência, mas elas ficam uns vagões a frente. :0", p: 1},
	{texto: "Eu fico com as saídas...", p: 0},
	{texto: "Ótimo! Se precisar de mim, só chamar! Estou sempre aqui! (~´3`~)", p: 1},
	{texto: "Eu vou liberar a porta para você", p: 1, t: 4},
]


global.diag_aaromin1p2 = [//AAROMIN texto 1.5
	{texto: "Pode seguir! Quando tiver que liberar uma porta, é só falar comigo!", p: 1},
]

global.diag_aaromin1p3 = [
	{texto: "Pode seguir!", p: 1, t: 4}
];

global.diag_aaromin2 = [//AAROMIN texto 2
	{texto: "Pode liberar a porta pra mim?", p: 0},
	{texto: "As próximas portas só posso liberar com autorização, desculpa ToT", p: 1},
	{texto: "Mas acho que aquele caranguejo pode liberar pra você, só venha falar comigo depois", p: 1},
	{texto: "Caranguejo...?", p: 0},
]

global.diag_aaromin2p2 = [//AAROMIN texto 2.5
	{texto: "Pode liberar agora?", p: 0},
	{texto: "Liberado, chefia ^w^", p: 1, t: 4}	
]