Algoritmo "MONTY HALL"

Var
        num_one_car, num_two, num_three, aux: inteiro  // variaveis com valor atribuido aleatoriamente
        port: inteiro // porta atribuida ao carro
        port_alt_one: inteiro // primeira escolha da pessoa
        port_alt_two: caractere // segunda escolha da pessoa
Inicio
        // escolha de onde o carro ficar�
        aleatorio 1,3  // aleatoriza a porta onde o carro estar�
        leia(num_one_car)
        aleatorio off
        num_one_car <- 1

        limpatela
        
        // apresenta��o do programa
        //timer 300
        
        escreval("Seja Bem-vindo ao:")
        escreval("_      _  ______  _     _  _______        ")
        escreval("|\    /| |      | |\    |     |     \    /")
        escreval("| \  / | |      | | \   |     |      \  / ")
        escreval("|  \/  | |      | |  \  |     |       \/  ")
        escreval("|      | |      | |   \ |     |       /   ")
        escreval("|      | |______| |    \|     |      /    ")
        escreval()
        escreval("          _____                 ")
        escreval("|     |  /     \  |       |     ")
        escreval("|     |  |     |  |       |     ")
        escreval("|-----|  |_____|  |       |     ")
        escreval("|     |  |     |  |       |     ")
        escreval("|     |  |     |  |_____  |_____")
        escreval()
        
        //timer 2000
        
        limpatela
        
        //timer 150
        
        escreval(" ___________    ___________    ___________ ")
        escreval("|           |  |           |  |           |")
        escreval("|           |  |           |  |           |")
        escreval("|           |  |           |  |           |")
        escreval("|  Porta 1  |  |  Porta 2  |  |  Porta 3  |")
        escreval("|           |  |           |  |           |")
        escreval("|           |  |           |  |           |")
        escreval("|___________|  |___________|  |___________|")
        escreval()
        
        timer 0
        
        // fim da apresenta��o e hora de escolha da porta
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

                            se (num_two = 3) entao
                               escreval(" ___________    ___________    ___________    ")
                               escreval("|           |  |           |  |  __   __  |\  ")
                               escreval("|           |  |           |  |   _\_/_   | \ ")
                               escreval("|           |  |           |  |  | o o |  |  \")
                               escreval("|  Porta 1  |  |  Porta 2  |  |  |  v  |  |  |")
                               escreval("|           |  |           |  |   \_-_/   |  |")
                               escreval("|           |  |           |  |    /|\    |  |")
                               escreval("|___________|  |___________|  |___________|  |")
                               escreval("                                           \ |")
                               escreval("                                            \|")
                               escreval()
                            senao
                                 se (num_two = 2) entao
                                    escreval(" ___________    ___________       ___________ ")
                                    escreval("|           |  |  __   __  |\    |           |")
                                    escreval("|           |  |   _\_/_   | \   |           |")
                                    escreval("|           |  |  | o o |  |  \  |           |")
                                    escreval("|  Porta 1  |  |  |  v  |  |  |  |  Porta 3  |")
                                    escreval("|           |  |   \_-_/   |  |  |           |")
                                    escreval("|           |  |    /|\    |  |  |           |")
                                    escreval("|___________|  |___________|  |  |___________|")
                                    escreval("                            \ |               ")
                                    escreval("                             \|               ")
                                    escreval()
                            fimse
                            fimse
                            
                            escreval("*PORTA ESCOLHIDA: N�", port_alt_one,"*")
                            escreval()

                            escreval("A porta n�mero",num_two," possui um bode.")
                            escreval()

                            escreval("Voc� deseja trocar sua porta pela outra que ainda est� fechada? (obs: sim ou n�o)")
                            leia(port_alt_two)

                            limpatela

                            escreval(" ____________      ___________       ___________    ")
                            escreval("|           |\    |  __   __  |\    |  __   __  |\  ")
                            escreval("|           | \   |   _\_/_   | \   |   _\_/_   | \ ")
                            escreval("|    _______|  \  |  | o o |  |  \  |  | o o |  |  \")
                            escreval("|   /  / / /|  |  |  |  v  |  |  |  |  |  v  |  |  |")
                            escreval("| _/_/_/_/__|  |  |   \_-_/   |  |  |   \_-_/   |  |")
                            escreval("||_0_|===|_0|  |  |    /|\    |  |  |    /|\    |  |")
                            escreval("||_-_|===|_-|  |  |___________|  |  |___________|  |")
                            escreval("             \ |               \ |               \ |")
                            escreval("              \|                \|                \|")
                            escreval()

                            se (port_alt_two = "sim") ou (port_alt_two = "SIM") ou (port_alt_two = "Sim") entao
                               escreval("*PORTA FINAL ESCOLHIDA: N� 1*")
                               escreval()

                               escreval("Parab�ns, voc� ganhou um carro!")
                               senao
                               se (port_alt_two = "n�o") ou (port_alt_two = "N�o") ou (port_alt_two = "N�O") ou (port_alt_two = "nao") ou (port_alt_two = "Nao") ou (port_alt_two = "NAO") entao
                                 escreval("*PORTA FINAL ESCOLHIDA: N�", port_alt_one,"*")
                                 escreval()
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
                                    aux <- 3
                                 senao
                                      se (num_three % 2 <> 0) entao
                                         num_two <- 3
                                         aux <- 2
                                 fimse
                                 fimse
                                 
                                 se (num_two = 3) entao
                               escreval(" ___________    ___________    ___________    ")
                               escreval("|           |  |           |  |  __   __  |\  ")
                               escreval("|           |  |           |  |   _\_/_   | \ ")
                               escreval("|           |  |           |  |  | o o |  |  \")
                               escreval("|  Porta 1  |  |  Porta 2  |  |  |  v  |  |  |")
                               escreval("|           |  |           |  |   \_-_/   |  |")
                               escreval("|           |  |           |  |    /|\    |  |")
                               escreval("|___________|  |___________|  |___________|  |")
                               escreval("                                           \ |")
                               escreval("                                            \|")
                               escreval()
                            senao
                                 se (num_two = 2) entao
                                    escreval(" ___________    ___________       ___________ ")
                                    escreval("|           |  |  __   __  |\    |           |")
                                    escreval("|           |  |   _\_/_   | \   |           |")
                                    escreval("|           |  |  | o o |  |  \  |           |")
                                    escreval("|  Porta 1  |  |  |  v  |  |  |  |  Porta 3  |")
                                    escreval("|           |  |   \_-_/   |  |  |           |")
                                    escreval("|           |  |    /|\    |  |  |           |")
                                    escreval("|___________|  |___________|  |  |___________|")
                                    escreval("                            \ |               ")
                                    escreval("                             \|               ")
                                    escreval()
                            fimse
                            fimse
                                 escreval("*PORTA ESCOLHIDA: N�", port_alt_one,"*")
                                 escreval()
                                 
                                 escreval("A porta n�mero",num_two," possui um bode.")
                                 escreval()
                                 
                                 escreval("Voc� deseja trocar sua porta pela outra que ainda est� fechada?")
                                 escreval("(obs: sim ou n�o)")
                                 leia(port_alt_two)

                                 limpatela
                                 
                                 escreval(" ____________      ___________       ___________    ")
                                 escreval("|           |\    |  __   __  |\    |  __   __  |\  ")
                                 escreval("|           | \   |   _\_/_   | \   |   _\_/_   | \ ")
                                 escreval("|    _______|  \  |  | o o |  |  \  |  | o o |  |  \")
                                 escreval("|   /  / / /|  |  |  |  v  |  |  |  |  |  v  |  |  |")
                                 escreval("| _/_/_/_/__|  |  |   \_-_/   |  |  |   \_-_/   |  |")
                                 escreval("||_0_|===|_0|  |  |    /|\    |  |  |    /|\    |  |")
                                 escreval("||_-_|===|_-|  |  |___________|  |  |___________|  |")
                                 escreval("             \ |               \ |               \ |")
                                 escreval("              \|                \|                \|")
                                 escreval()

                                 se (port_alt_two = "sim") ou (port_alt_two = "SIM") ou (port_alt_two = "Sim") entao
                                    escreval("*PORTA ESCOLHIDA: N�", aux,"*")
                                    escreval()

                                    escreval("Que pena, voc� errou. Mas ganha um bode de consola��o!")
                                    interrompa
                                 senao
                                      se (port_alt_two = "n�o") ou (port_alt_two = "N�o") ou (port_alt_two = "N�O") ou (port_alt_two = "nao") ou (port_alt_two = "Nao") ou (port_alt_two = "NAO") entao
                                         escreval("*PORTA FINAL ESCOLHIDA: N� 1*")
                                         escreval()

                                         escreval("Parab�ns, voc� ganhou um carro!")
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