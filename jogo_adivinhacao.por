programa
{
	//biclioteca que gera numeros aleatorios
	inclua biblioteca Util-->geraNumero

	//funcao novoJogo
     funcao novoJogo(){
     	cadeia novoJogoOpcao=""
     	escreva("Deseja jogar novamente ? \n")
     	escreva("\nS Para Sim ou Qualquer tecla para sair.:")
     	leia(novoJogoOpcao)
     	se(novoJogoOpcao=="S" ou novoJogoOpcao=="s"){
     		limpa()
     		menuPrincipal()
     	}senao{
     		limpa()
     	}
     	
     }//fimfuncao novoJogo
     
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
			
			//chamando a funcao jogo principal
			jogoPrincipal(qtdChances, qtdNumeros)
		}senao se(opcaoMenu=="2"){
			qtdChances=7
			qtdNumeros=50
			
			//chamando a funcao jogo principal
			jogoPrincipal(qtdChances, qtdNumeros)
		}senao se(opcaoMenu=="3"){
			qtdChances=8
			qtdNumeros=100
			
			//chamando a funcao jogo principal
			jogoPrincipal(qtdChances, qtdNumeros)
		}senao{
			
		}
	}//fim função niveis do jogo 

	//função jogo Principal
	funcao jogoPrincipal(inteiro qtdChances,inteiro qtdNumeros){
		
		inteiro numeroGerado=0,limiteDeChances=1,palpiteUsuario=0
		
		//biblioteca que gera o numero
		//troquei de quantidade chances para quantidade numeros
		numeroGerado=geraNumero.sorteia(1,qtdNumeros)

		//enquanto 
		enquanto(numeroGerado!=palpiteUsuario e limiteDeChances<=qtdChances){
			escreva("\nChance. ",limiteDeChances," de ",qtdChances)
			escreva("\nEntre com um numero entre 1 e ",qtdNumeros," ..:")
			leia(palpiteUsuario)
			//Dicas se é maior
			se(palpiteUsuario>numeroGerado){
				escreva("\n\n o numero é menor que ",palpiteUsuario)
			}senao se(palpiteUsuario<numeroGerado){
				escreva("\n\n o numero é maior que ",palpiteUsuario)
			}senao{
				limpa()
				escreva("\n\n Parabéns !! Você acertou !!\n")
				novoJogo()
			}
			
			limiteDeChances++
		}//fim lopp enquanto
		//daqui pra cá o usuário errou todas as chances
		se(limiteDeChances>=qtdChances){
			limpa()
			escreva("\nVOCÊ PERDEU ! :( ")
			escreva("\nO Número gerado era o, ",numeroGerado,"\n")
			novoJogo()
		}
		
	}//fimfuncao jogo Principal
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
 * @POSICAO-CURSOR = 2785; 
 * @DOBRAMENTO-CODIGO = [6, 21, 111];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {qtdChances, 49, 10, 10}-{qtdNumeros, 49, 23, 10}-{numeroGerado, 79, 10, 12}-{limiteDeChances, 79, 25, 15}-{palpiteUsuario, 79, 43, 14};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */