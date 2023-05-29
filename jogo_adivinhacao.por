programa
{
	
	//inicio funççao Menu principal 
     funcao menuPrincipal(){
     	cadeia opcaoMenu="0"

     	escreva("\n:::::: Jogo de adivinhação ..................:")
     	escreva("\n:::::: Escolha uma das opções abaixo ........:")
     	escreva("\n:::::: 1- básico, 5 chances e 10 numeros.....:")
     	escreva("\n:::::: 2- médio, 7 chances e 50 numeros .....:")
     	escreva("\n:::::: 3- avançado, 8 chances e 100 numeros..:")
     	escreva("\n:::::: Entre com uma opção o qualquer tecla para sair .:")
     	//lendo o valor digitado
     	leia(opcaoMenu)

     	//validar as opções do jogo 
     	se(opcaoMenu=="1" ou opcaoMenu=="2" ou opcaoMenu=="3"){
     		limpa()

     		//se o usuario digitar 1 ou 2 ou 3 
     		nivelJogo(opcaoMenu)
     	}senao{
     		limpa()
     		//não acontece nada ..
     		//sai do jogo 
     	}
     }//fim função menu principal
	
	//funcao niveis do jogo
	funcao nivelJogo(cadeia opcaoMenu){
		inteiro qtdChances=0,qtdNumeros=0
 
		//define o valor das variaives qtd...
		se(opcaoMenu=="1"){
			//definindo o nivel 1
			qtdChances=5
			qtdNumeros=10
		}senao se(opcaoMenu=="2"){
			qtdChances=7
			qtdNumeros=50
		}senao se(opcaoMenu=="3"){
			qtdChances=8
			qtdNumeros=100
		}senao{
			
		}
	}//fim função niveis do jogo 
	
	funcao inicio()
	{
		//jogo de avinhação com portugol Studio
		//Se inscreva no canal e ajude o canal mandando 
		//um pix!!!
		menuPrincipal()
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1234; 
 * @DOBRAMENTO-CODIGO = [4];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {opcaoMenu, 6, 13, 9}-{opcaoMenu, 31, 25, 9}-{qtdChances, 32, 10, 10}-{qtdNumeros, 32, 23, 10};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */