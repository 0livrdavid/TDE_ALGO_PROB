Algoritmo "MONTY HALL"
          // Aluno: David Gon�alves de Oliveira - 017293
          // Aluno: Guilherme de Oliveira Dias - 019730
          // Professora: Ana Paula Renno Costa; Lidiane Gomes da Silva
          // Mat�ria: Algoritmo e L�gica para Computa��o; Probabilidade e Estatist�ca
          // Produzido: 07/05/2021
arquivo "logo_monty_hall.txt"

Var
        num_one_car, num_two, num_three, aux: inteiro  // variaveis com valor atribuido aleatoriamente
        port: inteiro // porta atribuida ao carro
        port_alt_one: inteiro // primeira escolha da pessoa
        port_alt_two, help: caractere // segunda escolha da pessoa
        log_1, log_2, log_3, log_4, log_5, log_6: caractere // primeira parte da logo
        log_7, log_8, log_9, log_10, log_11, log_12: caractere // segunda parte da logo
        porta_fechada_1_1, porta_fechada_1_2, porta_fechada_1_3, porta_fechada_1_4, porta_fechada_1_5, porta_fechada_1_6, porta_fechada_1_7, porta_fechada_1_8: caractere // oitos parti��es da Porta 1 fechada
        porta_fechada_2_1, porta_fechada_2_2, porta_fechada_2_3, porta_fechada_2_4, porta_fechada_2_5, porta_fechada_2_6, porta_fechada_2_7, porta_fechada_2_8: caractere // oitos parti��es da Porta 2 fechada
        porta_fechada_3_1, porta_fechada_3_2, porta_fechada_3_3, porta_fechada_3_4, porta_fechada_3_5, porta_fechada_3_6, porta_fechada_3_7, porta_fechada_3_8: caractere // oitos parti��es da Porta 3 fechada
        
Inicio
        // escolha de onde o carro ficar�
        aleatorio 1,3  // aleatoriza a porta onde o carro estar�
        leia(num_one_car)
        aleatorio off

        limpatela

        timer 200
        
        escreval("    Seja Bem-vindo ao:")
        escreval()
        leia(log_1)
        leia(log_2)
        leia(log_3)
        leia(log_4)
        leia(log_5)
        leia(log_6)
        escreval()
        leia(log_7)
        leia(log_8)
        leia(log_9)
        leia(log_10)
        leia(log_11)
        leia(log_12)
        
        timer 2000
        
        timer 0

        
        limpatela
        
        escreval("Gostaria de ter acesso as instru��es? (obs: sim ou n�o)")
        leia(help)
        
        limpatela
        
        //mensagens de instru��o ao participante
        se (help = "sim") ou (help = "SIM") ou (help = "Sim") entao
           escreval("-----------------------------REGRAS-------------------------------")
           escreval()
           escreval("1- De primeiro momento aparecem 3 portas ao jogador;")
           escreval("2- Duas das portas contem bodes, enquanto a outra contem um carro;")
           escreval("3- Voc� pode escolher, portanto, uma porta, de forma que concorra ao pr�mio;")
           escreval("4- Logo ap�s isso, voc� passa a ver o que tem dentro de uma outra porta;")
           escreval("5- � perguntado se voc� gostaria de trocar de porta;")
           escreval("6- A troca, ou n�o, ger� o resultado se voc� for o ganhador ou n�o.")
           escreval()
           escreval("*Para sair pressione F9*")
           
           pausa
        fimse
        
        limpatela
        
        timer 150
        
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
                               timer 150

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
                               
                               timer 0
                            senao
                                 se (num_two = 2) entao
                                    timer 150

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
                                    
                                    timer 0
                            fimse
                            fimse
                            
                            escreval("*PORTA ESCOLHIDA: N�", port_alt_one,"*")
                            escreval()

                            escreval("A porta n�mero",num_two," possui um bode.")
                            escreval()

                            escreval("Voc� deseja trocar sua porta pela outra que ainda est� fechada? (obs: sim ou n�o)")
                            leia(port_alt_two)

                            limpatela

                            timer 150

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
                            
                            timer 0

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

                            se (num_two = 1) entao
                               escreval(" ___________       ___________    ___________ ")
                               escreval("|  __   __  |\    |           |  |           |")
                               escreval("|   _\_/_   | \   |           |  |           |")
                               escreval("|  | o o |  |  \  |           |  |           |")
                               escreval("|  |  v  |  |  |  |  Porta 2  |  |  Porta 3  |")
                               escreval("|   \_-_/   |  |  |           |  |           |")
                               escreval("|    /|\    |  |  |           |  |           |")
                               escreval("|___________|  |  |___________|  |___________|")
                               escreval("             \ |                              ")
                               escreval("              \|                              ")
                               escreval()
                            senao
                                 se (num_two = 3) entao
                                    escreval(" ___________    ___________     ___________    ")
                                    escreval("|           |  |           |   |  __   __  |\  ")
                                    escreval("|           |  |           |   |   _\_/_   | \ ")
                                    escreval("|           |  |           |   |  | o o |  |  \")
                                    escreval("|  Porta 1  |  |  Porta 2  |   |  |  v  |  |  |")
                                    escreval("|           |  |           |   |   \_-_/   |  |")
                                    escreval("|           |  |           |   |    /|\    |  |")
                                    escreval("|___________|  |___________|   |___________|  |")
                                    escreval("                                            \ |")
                                    escreval("                                             \|")
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

                            escreval("   ___________       ____________      ___________    ")
                            escreval("  |  __   __  |\    |           |\    |  __   __  |\  ")
                            escreval("  |   _\_/_   | \   |           | \   |   _\_/_   | \ ")
                            escreval("  |  | o o |  |  \  |    _______|  \  |  | o o |  |  \")
                            escreval("  |  |  v  |  |  |  |   /  / / /|  |  |  |  v  |  |  |")
                            escreval("  |   \_-_/   |  |  | _/_/_/_/__|  |  |   \_-_/   |  |")
                            escreval("  |    /|\    |  |  ||_0_|===|_0|  |  |    /|\    |  |")
                            escreval("  |___________|  |  ||_-_|===|_-|  |  |___________|  |")
                            escreval("               \ |               \ |               \ |")
                            escreval("                \|                \|                \|")
                            escreval()

                            se (port_alt_two = "sim") ou (port_alt_two = "SIM") ou (port_alt_two = "Sim") entao
                               escreval("*PORTA FINAL ESCOLHIDA: N� 2*")
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
                                    num_two <- 1
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
                                 se (num_two = 1) entao
                                    escreval(" ___________       ___________    ___________ ")
                                    escreval("|  __   __  |\    |           |  |           |")
                                    escreval("|   _\_/_   | \   |           |  |           |")
                                    escreval("|  | o o |  |  \  |           |  |           |")
                                    escreval("|  |  v  |  |  |  |  Porta 2  |  |  Porta 3  |")
                                    escreval("|   \_-_/   |  |  |           |  |           |")
                                    escreval("|    /|\    |  |  |           |  |           |")
                                    escreval("|___________|  |  |___________|  |___________|")
                                    escreval("             \ |                              ")
                                    escreval("              \|                              ")
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

                                 escreval("   ___________       ____________      ___________    ")
                                 escreval("  |  __   __  |\    |           |\    |  __   __  |\  ")
                                 escreval("  |   _\_/_   | \   |           | \   |   _\_/_   | \ ")
                                 escreval("  |  | o o |  |  \  |    _______|  \  |  | o o |  |  \")
                                 escreval("  |  |  v  |  |  |  |   /  / / /|  |  |  |  v  |  |  |")
                                 escreval("  |   \_-_/   |  |  | _/_/_/_/__|  |  |   \_-_/   |  |")
                                 escreval("  |    /|\    |  |  ||_0_|===|_0|  |  |    /|\    |  |")
                                 escreval("  |___________|  |  ||_-_|===|_-|  |  |___________|  |")
                                 escreval("               \ |               \ |               \ |")
                                 escreval("                \|                \|                \|")
                                 escreval()

                                 se (port_alt_two = "sim") ou (port_alt_two = "SIM") ou (port_alt_two = "Sim") entao
                                    escreval("*PORTA ESCOLHIDA: N�", aux,"*")
                                    escreval()

                                    escreval("Que pena, voc� errou. Mas ganha um bode de consola��o!")
                                    interrompa
                                 senao
                                      se (port_alt_two = "n�o") ou (port_alt_two = "N�o") ou (port_alt_two = "N�O") ou (port_alt_two = "nao") ou (port_alt_two = "Nao") ou (port_alt_two = "NAO") entao
                                         escreval("*PORTA FINAL ESCOLHIDA: N� 2*")
                                         escreval()

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

                            se (num_two = 1) entao
                               escreval(" ___________       ___________    ___________ ")
                               escreval("|  __   __  |\    |           |  |           |")
                               escreval("|   _\_/_   | \   |           |  |           |")
                               escreval("|  | o o |  |  \  |           |  |           |")
                               escreval("|  |  v  |  |  |  |  Porta 2  |  |  Porta 3  |")
                               escreval("|   \_-_/   |  |  |           |  |           |")
                               escreval("|    /|\    |  |  |           |  |           |")
                               escreval("|___________|  |  |___________|  |___________|")
                               escreval("             \ |                              ")
                               escreval("              \|                              ")
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

                            escreval(" ___________       ___________       ____________     ")
                            escreval("|  __   __  |\    |  __   __  |\    |           |\    ")
                            escreval("|   _\_/_   | \   |   _\_/_   | \   |           | \   ")
                            escreval("|  | o o |  |  \  |  | o o |  |  \  |    _______|  \  ")
                            escreval("|  |  v  |  |  |  |  |  v  |  |  |  |   /  / / /|  |  ")
                            escreval("|   \_-_/   |  |  |   \_-_/   |  |  | _/_/_/_/__|  |  ")
                            escreval("|    /|\    |  |  |    /|\    |  |  ||_0_|===|_0|  |  ")
                            escreval("|___________|  |  |___________|  |  ||_-_|===|_-|  |  ")
                            escreval("             \ |               \ |               \ |  ")
                            escreval("              \|                \|                \|  ")
                            escreval()

                            se (port_alt_two = "sim") ou (port_alt_two = "SIM") ou (port_alt_two = "Sim") entao
                               escreval("*PORTA FINAL ESCOLHIDA: N� 3*")
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
                                         num_two <- 1
                                         aux <- 2
                                 fimse
                                 fimse

                                 se (num_two = 1) entao
                                    escreval(" ___________       ___________    ___________ ")
                                    escreval("|  __   __  |\    |           |  |           |")
                                    escreval("|   _\_/_   | \   |           |  |           |")
                                    escreval("|  | o o |  |  \  |           |  |           |")
                                    escreval("|  |  v  |  |  |  |  Porta 2  |  |  Porta 3  |")
                                    escreval("|   \_-_/   |  |  |           |  |           |")
                                    escreval("|    /|\    |  |  |           |  |           |")
                                    escreval("|___________|  |  |___________|  |___________|")
                                    escreval("             \ |                              ")
                                    escreval("              \|                              ")
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

                                 escreval(" ___________       ___________       ____________     ")
                                 escreval("|  __   __  |\    |  __   __  |\    |           |\    ")
                                 escreval("|   _\_/_   | \   |   _\_/_   | \   |           | \   ")
                                 escreval("|  | o o |  |  \  |  | o o |  |  \  |    _______|  \  ")
                                 escreval("|  |  v  |  |  |  |  |  v  |  |  |  |   /  / / /|  |  ")
                                 escreval("|   \_-_/   |  |  |   \_-_/   |  |  | _/_/_/_/__|  |  ")
                                 escreval("|    /|\    |  |  |    /|\    |  |  ||_0_|===|_0|  |  ")
                                 escreval("|___________|  |  |___________|  |  ||_-_|===|_-|  |  ")
                                 escreval("             \ |               \ |               \ |  ")
                                 escreval("              \|                \|                \|  ")
                                 escreval()

                                 se (port_alt_two = "sim") ou (port_alt_two = "SIM") ou (port_alt_two = "Sim") entao
                                    escreval("*PORTA ESCOLHIDA: N�", aux,"*")
                                    escreval()

                                    escreval("Que pena, voc� errou. Mas ganha um bode de consola��o!")
                                    interrompa
                                 senao
                                      se (port_alt_two = "n�o") ou (port_alt_two = "N�o") ou (port_alt_two = "N�O") ou (port_alt_two = "nao") ou (port_alt_two = "Nao") ou (port_alt_two = "NAO") entao
                                         escreval("*PORTA FINAL ESCOLHIDA: N� 3*")
                                         escreval()

                                         escreval("Parab�ns, voc� ganhou um carro!")
                                         interrompa
                                 fimse
                                 fimse

                         fimse
                         fimse

        fimescolha
Fimalgoritmo