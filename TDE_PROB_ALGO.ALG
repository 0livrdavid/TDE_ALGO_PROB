Algoritmo "MONTY HALL"

Var
        num_one_car, num_two, num_three: inteiro  // variaveis com valor atribuido aleatoriamente
        port: inteiro // porta atribuida ao carro
        port_alt_one: inteiro // primeira escolha da pessoa
        port_alt_two: caractere // segunda escolha da pessoa
Inicio
        aleatorio 1,3  // aleatoriza a porta onde o carro estar�
        leia(num_one_car)
        aleatorio off

        limpatela
        
        escreval("Seja Bem-vindo ao:")
        escreval()
        escreval()
        escreval(" _      _   ______   _     _  _______                         _____                 ")
        escreval(" |\    /|  |      |  |\    |     |     \    /       |     |  /     \  |       |     ")
        escreval(" | \  / |  |      |  | \   |     |      \  /        |     |  |     |  |       |     ")
        escreval(" |  \/  |  |      |  |  \  |     |       \/         |-----|  |_____|  |       |     ")
        escreval(" |      |  |      |  |   \ |     |       /          |     |  |     |  |       |     ")
        escreval(" |      |  |______|  |    \|     |      /           |     |  |     |  |_____  |_____")
        escreval()
        escreval()
        
        escolha(num_one_car) // permite que dependendo de qual porta o carro esteja seja realizado a��es distintas
                    caso 1
                         port <- 1

                         escreval("Escolha uma das portas: ")
                         leia(port_alt_one)
                         
                         se (port_alt_one <> port) entao //se o n�mero da porta escolhida for diferente da porta do carro
                            repita
                                  aleatorio 1,3
                                  leia(num_two)
                                  aleatorio off
                               
                                  limpatela
                            ate (port_alt_one <> port) e (port_alt_one <> num_two) e (port <> num_two) // permitir escolher um n�mero diferente da onde a porta com o carro est� e uma porta diferente da escolhida

                            escreval("A porta n�mero",num_two," possui um bode.")
                            escreval()

                            escreval("Voc� deseja trocar sua porta pelaoutra que ainda est� fechada? (obs: sim ou n�o)")
                            leia(port_alt_two)

                            limpatela

                            se (port_alt_two = "sim") entao
                               escreval("Parab�ns, voc� ganhou um carro!")
                               senao
                               se (port_alt_two = "n�o") entao
                                 escreval("Que pena, voc� errou. Mas ganha um bode de consola��o!")
                            fimse
                            fimse
                            
                            interrompa
                         
                         senao
                              se (port_alt_one = port) entao //se o n�mero da porta escolhida for igual da porta do carro
                                 aleatorio 1,10
                                 leia(num_three)
                                 aleatorio off
                                 
                                 limpatela
                                 
                                 se (num_three % 2 = 0) entao
                                    num_two <- 2
                                 senao
                                      se (num_three % 2 <> 0) entao
                                         num_two <- 3
                                 fimse
                                 fimse
                                 
                                 escreval("A porta n�mero",num_two," possui um bode.")
                                 escreval()
                                 
                                 escreval("Voc� deseja trocar sua porta pela outra que ainda est� fechada? (obs: sim ou n�o)")
                                 leia(port_alt_two)

                                 limpatela
                                 
                                 se (port_alt_two = "sim") entao
                                    escreval("Que pena, voc� errou. Mas ganha um bode de consola��o!")
                                    interrompa
                                 senao
                                      se (port_alt_two = "n�o") entao
                                         escreval("Parab�ns, voc� ganhou um carro!"
                                         interrompa
                                 fimse
                                 fimse

                         fimse
                         fimse
                         
                    caso 2
                    
                         port <- 2

                         escreval("Escolha uma das portas: ")
                         leia(port_alt_one)

                         se (port_alt_one <> port) entao //se o n�mero da porta escolhida for diferente da porta do carro
                            repita
                                  aleatorio 1,3
                                  leia(num_two)
                                  aleatorio off

                                  limpatela
                            ate (port_alt_one <> port) e (port_alt_one <> num_two) e (port <> num_two) // permitir escolher um n�mero diferente da onde a porta com o carro est� e uma porta diferente da escolhida

                            escreval("A porta n�mero",num_two," possui um bode.")
                            escreval()

                            escreval("Voc� deseja trocar sua porta pela outra que ainda est� fechada? (obs: sim ou n�o)")
                            leia(port_alt_two)

                            limpatela

                            se (port_alt_two = "sim") entao
                               escreval("Parab�ns, voc� ganhou um carro!")
                               senao
                               se (port_alt_two = "n�o") entao
                                 escreval("Que pena, voc� errou. Mas ganha um bode de consola��o!")
                            fimse
                            fimse

                            interrompa

                         senao
                              se (port_alt_one = port) entao //se o n�mero da porta escolhida for igual da porta do carro
                                 aleatorio 1,10
                                 leia(num_three)
                                 aleatorio off

                                 limpatela

                                 se (num_three % 2 = 0) entao
                                    num_two <- 2
                                 senao
                                      se (num_three % 2 <> 0) entao
                                         num_two <- 3
                                 fimse
                                 fimse

                                 escreval("A porta n�mero",num_two," possui um bode.")
                                 escreval()

                                 escreval("Voc� deseja trocar sua porta pela outra que ainda est� fechada? (obs: sim ou n�o)")
                                 leia(port_alt_two)

                                 limpatela

                                 se (port_alt_two = "sim") entao
                                    escreval("Que pena, voc� errou. Mas ganha um bode de consola��o!")
                                    interrompa
                                 senao
                                      se (port_alt_two = "n�o") entao
                                         escreval("Parab�ns, voc� ganhou um carro!")
                                         interrompa
                                 fimse
                                 fimse

                         fimse
                         fimse

                    caso 3
                    
                         port <- 3

                         escreval("Escolha uma das portas: ")
                         leia(port_alt_one)

                         se (port_alt_one <> port) entao //se o n�mero da porta escolhida for diferente da porta do carro
                            repita
                                  aleatorio 1,3
                                  leia(num_two)
                                  aleatorio off

                                  limpatela
                            ate (port_alt_one <> port) e (port_alt_one <> num_two) e (port <> num_two) // permitir escolher um n�mero diferente da onde a porta com o carro est� e uma porta diferente da escolhida

                            escreval("A porta n�mero",num_two," possui um bode.")
                            escreval()

                            escreval("Voc� deseja trocar sua porta pela outra que ainda est� fechada? (obs: sim ou n�o)")
                            leia(port_alt_two)

                            limpatela

                            se (port_alt_two = "sim") entao
                               escreval("Parab�ns, voc� ganhou um carro!")
                               senao
                               se (port_alt_two = "n�o") entao
                                 escreval("Que pena, voc� errou. Mas ganha um bode de consola��o!")
                            fimse
                            fimse

                            interrompa

                         senao
                              se (port_alt_one = port) entao //se o n�mero da porta escolhida for igual da porta do carro
                                 aleatorio 1,10
                                 leia(num_three)
                                 aleatorio off

                                 limpatela

                                 se (num_three % 2 = 0) entao
                                    num_two <- 2
                                 senao
                                      se (num_three % 2 <> 0) entao
                                         num_two <- 3
                                 fimse
                                 fimse

                                 escreval("A porta n�mero",num_two," possui um bode.")
                                 escreval()

                                 escreval("Voc� deseja trocar sua porta pela outra que ainda est� fechada? (obs: sim ou n�o)")
                                 leia(port_alt_two)

                                 limpatela

                                 se (port_alt_two = "sim") entao
                                    escreval("Que pena, voc� errou. Mas ganha um bode de consola��o!")
                                    interrompa
                                 senao
                                      se (port_alt_two = "n�o") entao
                                         escreval("Parab�ns, voc� ganhou um carro!")
                                         interrompa
                                 fimse
                                 fimse

                         fimse
                         fimse
                         
        fimescolha
Fimalgoritmo