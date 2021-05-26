Algoritmo "MONTY HALL"
          // Aluno: David Gonçalves de Oliveira - 017293
          // Aluno: Guilherme de Oliveira Dias - 019730
          // Professora: Ana Paula Renno Costa; Lidiane Gomes da Silva
          // Matéria: Algoritmo e Lógica para Computação; Probabilidade e Estatistíca
          // Começo de produção: 07/05/2021
          // Finalização: /05/2021

arquivo "logo_monty_hall.txt"

Var
        num_one_car, num_two, num_three, num_four, aux: inteiro  // variaveis com valor atribuido aleatoriamente

        XS: inteiro
        notepad: vetor[1..55] de caractere

        port: inteiro // porta atribuida ao carro
        port_alt_one: inteiro // primeira escolha da pessoa
        port_alt_lock: inteiro // porta trancada
        port_alt_two, help: caractere // segunda escolha da pessoa
        
        temp, apres, temp_logo, aleat_on: logico

        log_1, log_2, log_3, log_4, log_5, log_6: caractere // partição da primeira parte da logo_monty_hall
        log_7, log_8, log_9, log_10, log_11, log_12: caractere // partição da segunda parte da logo_monty_hall
        
        log_reg_1, log_reg_2, log_reg_3, log_reg_4, log_reg_5, log_reg_6, log_reg_7, log_reg_8: caractere // partição da logo_regras
        
        log_er_1, log_er_2, log_er_3, log_er_4, log_er_5, log_er_6, log_er_7, log_er_8: caractere // partição da logo_erro

        pt_fec_cima, pt_fec_lado, pt_fec_baixo, pt_fec_esp, pt_fec_1, pt_fec_2, pt_fec_3: caractere // partições das portas fechadas
        pt_abrt_bode_1, pt_abrt_bode_2, pt_abrt_bode_3, pt_abrt_bode_4, pt_abrt_bode_5, pt_abrt_bode_6, pt_abrt_bode_7, pt_abrt_bode_8, pt_abrt_bode_9, pt_abrt_bode_10: caractere // partição das portas com bodes
        pt_abrt_carro_1, pt_abrt_carro_2, pt_abrt_carro_3, pt_abrt_carro_4, pt_abrt_carro_5, pt_abrt_carro_6, pt_abrt_carro_7, pt_abrt_carro_8, pt_abrt_carro_9, pt_abrt_carro_10: caractere // partição das portas com carros
Inicio
        // CONFIGURAÇÃO:
        // 1_Temporizador está ligado?
        temp <- verdadeiro
        // 2_Modo apresentação está ligada?
        apres <- verdadeiro
        // 3_Temporizador da logo está ligado?
        temp_logo <- verdadeiro
        // 4_Definir porta aleatóriamente?
        aleat_on <- verdadeiro
        // 5_Definir porta aleatóriamente está desligado, qual porta deseja que caia?
        num_one_car <- 1
        // end

        para XS de 1 ate 55 faca
             leia(notepad[XS])
        fimpara

        limpatela

        // comando de escolha de onde o carro ficará
        se (aleat_on = verdadeiro) entao
           aleatorio 1,3  // aleatoriza a porta onde o carro estará
           leia(num_one_car)
           aleatorio off
        
           limpatela
        fimse
             
        escolha num_one_car
                caso 1
                     port <- 1
                caso 2
                     port <- 2
                caso 3
                     port <- 3
        fimescolha
        
        se (temp_logo = verdadeiro) entao
           timer 150
        fimse

        escreval()
        escreval()

        se (apres = verdadeiro) entao
           para XS de 36 ate 47 faca
                escreval(notepad[XS])
           fimpara
        fimse
        
        se (temp_logo = verdadeiro) entao
           timer 2000

           timer 0
        fimse

        limpatela
        
        se (apres = verdadeiro) entao
           escreval()
           escreval()

           para xs de 48 ate 55 faca
                escreva(notepad[xs])
           fimpara
           
           escreval()
        fimse
        
        escreval("    Gostaria de ter acesso as instruções? (obs: sim ou não)")
        escreva("    -> ")
        leia(help)
        
        limpatela
        
        //mensagens de instrução ao participante
        se (help = "sim") ou (help = "SIM") ou (help = "Sim") entao
           se (temp = verdadeiro) entao
              timer 30
           fimse
           
           se (apres = verdadeiro) entao
              escreval(log_reg_1)
              escreval(log_reg_2)
              escreval(log_reg_3)
              escreval(log_reg_4)
              escreval(log_reg_5)
              escreval(log_reg_6)
              escreval(log_reg_7)
              escreval(log_reg_8)
           
              limpatela
           
              escreval(log_reg_1)
              escreval(log_reg_2)
              escreval(log_reg_3)
              escreval(log_reg_4)
              escreval()
              escreval()
              escreval(log_reg_5)
              escreval(log_reg_6)
              escreval(log_reg_7)
              escreval(log_reg_8)
           
              limpatela
           
              escreval(log_reg_1)
              escreval(log_reg_2)
              escreval(log_reg_3)
              escreval(log_reg_4)
              escreval()
              escreval()
              escreval()
              escreval()
              escreval(log_reg_5)
              escreval(log_reg_6)
              escreval(log_reg_7)
              escreval(log_reg_8)
           
              limpatela
           
              escreval(log_reg_1)
              escreval(log_reg_2)
              escreval(log_reg_3)
              escreval(log_reg_4)
              escreval()
              escreval()
              escreval()
              escreval()
              escreval()
              escreval()
              escreval(log_reg_5)
              escreval(log_reg_6)
              escreval(log_reg_7)
              escreval(log_reg_8)
           
              limpatela
           
              escreval(log_reg_1)
              escreval(log_reg_2)
              escreval(log_reg_3)
              escreval(log_reg_4)
              escreval()
              escreval()
              escreval()
              escreval()
              escreval()
              escreval()
              escreval()
              escreval()
              escreval(log_reg_5)
              escreval(log_reg_6)
              escreval(log_reg_7)
              escreval(log_reg_8)

              limpatela
           fimse
           
           se (temp = verdadeiro) entao
              timer 200
           fimse
           
           se (apres = verdadeiro) entao
              escreval(log_reg_1)
              escreval(log_reg_2)
              escreval(log_reg_3)
              escreval(log_reg_4)
           fimse
           
           se (temp = verdadeiro) entao
              timer 500
           fimse
           
           escreval("----------------------------------------------------------------")
           escreval("1- De primeiro momento aparecem 3 portas ao jogador;")
           escreval("2- Duas portas contém bodes, enquanto a outra contém um carro;")
           escreval("3- Você pode escolher, portanto, uma porta, de forma que concorra ao prêmio;")
           escreval("4- Logo após, você passa a ver o que tem dentro de uma porta aleatória;")
           escreval("5- É perguntado se você gostaria de trocar de porta;")
           escreval("6- A troca, ou não, gerá o resultado se você for o ganhador ou não.")
           escreval("----------------------------------------------------------------")

           se (temp = verdadeiro) entao
              timer 200
           fimse
           
           se (apres = verdadeiro) entao
              escreval(log_reg_5)
              escreval(log_reg_6)
              escreval(log_reg_7)
              escreval(log_reg_8)
           fimse
           
           escreval()
           escreval("                  *Para sair pressione F9*                      ")

           se (temp = verdadeiro) entao
              timer 0
           fimse
           
           pausa
        fimse
        
        limpatela
        
        se (temp = verdadeiro) entao
           timer 100
        fimse
        
        escreval("          ",pt_fec_cima, pt_fec_cima, pt_fec_cima)
        escreval("          ",pt_fec_lado, pt_fec_lado, pt_fec_lado)
        escreval("          ",pt_fec_lado, pt_fec_lado, pt_fec_lado)
        escreval("          ",pt_fec_lado, pt_fec_lado, pt_fec_lado)
        escreval("          ",pt_fec_1, pt_fec_2, pt_fec_3)
        escreval("          ",pt_fec_lado, pt_fec_lado, pt_fec_lado)
        escreval("          ",pt_fec_lado, pt_fec_lado, pt_fec_lado)
        escreval("          ",pt_fec_baixo, pt_fec_baixo, pt_fec_baixo)
        escreval()
        
        se (temp = verdadeiro) entao
           timer 0
        fimse
        
        // fim da apresentaï¿½ï¿½o e hora de escolha da porta
        escolha(num_one_car) // permite que dependendo de qual porta o carro esteja seja realizado aï¿½ï¿½es distintas
                    caso 1
                         port <- 1

                         escreval("Escolha uma das portas: ")
                         escreva("-> ")
                         leia(port_alt_one)
                         
                         se (port_alt_one <> port) entao //se o nï¿½mero da porta escolhida for diferente da porta do carro
                            repita
                                  aleatorio 1,3
                                  leia(num_two)
                                  aleatorio off
                               
                                  limpatela
                            ate (port_alt_one <> port) e (port_alt_one <> num_two) e (port <> num_two) // permitir escolher um nï¿½mero diferente da onde a porta com o carro estï¿½ e uma porta diferente da escolhida

                            repita
                                  aleatorio 1,3
                                  leia(port_alt_lock)
                                  aleatorio off

                                  limpatela
                            ate (port_alt_one <> port_alt_lock) e (num_two <> port_alt_lock)

                            se (num_two = 3) entao
                               se (temp = verdadeiro) entao
                                  timer 120
                               fimse

                               escreval("         ",pt_fec_cima, pt_fec_cima, pt_abrt_bode_1)
                               escreval("         ",pt_fec_lado, pt_fec_lado, pt_abrt_bode_2)
                               escreval("         ",pt_fec_lado, pt_fec_lado, pt_abrt_bode_3)
                               escreval("         ",pt_fec_lado, pt_fec_lado, pt_abrt_bode_4)
                               escreval("         ",pt_fec_1, pt_fec_2, pt_abrt_bode_5)
                               escreval("         ",pt_fec_lado, pt_fec_lado, pt_abrt_bode_6)
                               escreval("         ",pt_fec_lado, pt_fec_lado, pt_abrt_bode_7)
                               escreval("         ",pt_fec_baixo, pt_fec_baixo, pt_abrt_bode_8)
                               escreval("         ",pt_fec_esp, pt_fec_esp, pt_abrt_bode_9)
                               escreval("         ",pt_fec_esp, pt_fec_esp, pt_abrt_bode_10)
                               escreval()
                               
                               se (temp = verdadeiro) entao
                                  timer 0
                               fimse
                            senao
                                 se (num_two = 2) entao
                                    se (temp = verdadeiro) entao
                                       timer 120
                                    fimse
                                    
                                    escreval("         ",pt_fec_cima, pt_abrt_bode_1, pt_fec_cima)
                                    escreval("         ",pt_fec_lado, pt_abrt_bode_2, pt_fec_lado)
                                    escreval("         ",pt_fec_lado, pt_abrt_bode_3, pt_fec_lado)
                                    escreval("         ",pt_fec_lado, pt_abrt_bode_4, pt_fec_lado)
                                    escreval("         ",pt_fec_1, pt_abrt_bode_5, pt_fec_3)
                                    escreval("         ",pt_fec_lado, pt_abrt_bode_6, pt_fec_lado)
                                    escreval("         ",pt_fec_lado, pt_abrt_bode_7, pt_fec_lado)
                                    escreval("         ",pt_fec_baixo, pt_abrt_bode_8, pt_fec_baixo)
                                    escreval("         ",pt_fec_esp, pt_abrt_bode_9, pt_fec_esp)
                                    escreval("         ",pt_fec_esp, pt_abrt_bode_10, pt_fec_esp)
                                    escreval()
                                    se (temp = verdadeiro) entao
                                       timer 0
                                    fimse
                            fimse
                            fimse
                            
                            escreval("*PORTA ESCOLHIDA: Nº", port_alt_one,"*")
                            escreval()

                            escreval("A porta número",num_two," possui um bode.")
                            escreval()
                            
                            escreval("Deseja trocar a porta (",port_alt_one," ) pela que ainda está fechada (",port_alt_lock," )?")
                            escreval("(obs: sim ou não)")
                            escreva("-> ")
                            leia(port_alt_two)

                            limpatela

                            se (temp = verdadeiro) entao
                               timer 120
                            fimse
                            
                            escreval("      ",pt_abrt_carro_1, pt_abrt_bode_1, pt_abrt_bode_1)
                            escreval("      ",pt_abrt_carro_2, pt_abrt_bode_2, pt_abrt_bode_2)
                            escreval("      ",pt_abrt_carro_3, pt_abrt_bode_3, pt_abrt_bode_3)
                            escreval("      ",pt_abrt_carro_4, pt_abrt_bode_4, pt_abrt_bode_4)
                            escreval("      ",pt_abrt_carro_5, pt_abrt_bode_5, pt_abrt_bode_5)
                            escreval("      ",pt_abrt_carro_6, pt_abrt_bode_6, pt_abrt_bode_6)
                            escreval("      ",pt_abrt_carro_7, pt_abrt_bode_7, pt_abrt_bode_7)
                            escreval("      ",pt_abrt_carro_8, pt_abrt_bode_8, pt_abrt_bode_8)
                            escreval("      ",pt_abrt_carro_9, pt_abrt_bode_9, pt_abrt_bode_9)
                            escreval("      ",pt_abrt_carro_10, pt_abrt_bode_10, pt_abrt_bode_10)
                            escreval()

                            se (temp = verdadeiro) entao
                               timer 0
                            fimse
                            
                            se (port_alt_two = "sim") ou (port_alt_two = "SIM") ou (port_alt_two = "Sim") entao
                               escreval("*PORTA FINAL ESCOLHIDA: Nº 1*")
                               escreval()

                               escreval("Parabéns, você ganhou um carro!")
                               senao
                               se (port_alt_two = "não") ou (port_alt_two = "Não") ou (port_alt_two = "NÃO") ou (port_alt_two = "nao") ou (port_alt_two = "Nao") ou (port_alt_two = "NAO") entao
                                 escreval("*PORTA FINAL ESCOLHIDA: Nº", port_alt_one,"*")
                                 escreval()
                                 escreval("Que pena, você errou. Mas ganha um bode de consolação!")
                            fimse
                            fimse
                            
                            interrompa
                         
                         senao
                              se (port_alt_one = port) entao //se o número da porta escolhida for igual da porta do carro
                                 aleatorio 1,10  // o acaso da mesma porta do carro ser escolhido se faz necessario uma escolha aleatoria sobre as duas portas consequentes
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
                                    se (temp = verdadeiro) entao
                                       timer 120
                                    fimse
                                    
                                    escreval("         ",pt_fec_cima, pt_fec_cima, pt_abrt_bode_1)
                                    escreval("         ",pt_fec_lado, pt_fec_lado, pt_abrt_bode_2)
                                    escreval("         ",pt_fec_lado, pt_fec_lado, pt_abrt_bode_3)
                                    escreval("         ",pt_fec_lado, pt_fec_lado, pt_abrt_bode_4)
                                    escreval("         ",pt_fec_1, pt_fec_2, pt_abrt_bode_5)
                                    escreval("         ",pt_fec_lado, pt_fec_lado, pt_abrt_bode_6)
                                    escreval("         ",pt_fec_lado, pt_fec_lado, pt_abrt_bode_7)
                                    escreval("         ",pt_fec_baixo, pt_fec_baixo, pt_abrt_bode_8)
                                    escreval("         ",pt_fec_esp, pt_fec_esp, pt_abrt_bode_9)
                                    escreval("         ",pt_fec_esp, pt_fec_esp, pt_abrt_bode_10)
                                    escreval()
                                    
                                    se (temp = verdadeiro) entao
                                       timer 0
                                    fimse
                                 senao
                                 se (num_two = 2) entao
                                    se (temp = verdadeiro) entao
                                       timer 120
                                    fimse
                                    
                                    escreval("         ",pt_fec_cima, pt_abrt_bode_1, pt_fec_cima)
                                    escreval("         ",pt_fec_lado, pt_abrt_bode_2, pt_fec_lado)
                                    escreval("         ",pt_fec_lado, pt_abrt_bode_3, pt_fec_lado)
                                    escreval("         ",pt_fec_lado, pt_abrt_bode_4, pt_fec_lado)
                                    escreval("         ",pt_fec_1, pt_abrt_bode_5, pt_fec_3)
                                    escreval("         ",pt_fec_lado, pt_abrt_bode_6, pt_fec_lado)
                                    escreval("         ",pt_fec_lado, pt_abrt_bode_7, pt_fec_lado)
                                    escreval("         ",pt_fec_baixo, pt_abrt_bode_8, pt_fec_baixo)
                                    escreval("         ",pt_fec_esp, pt_abrt_bode_9, pt_fec_esp)
                                    escreval("         ",pt_fec_esp, pt_abrt_bode_10, pt_fec_esp)
                                    escreval()
                                    
                                    se (temp = verdadeiro) entao
                                       timer 0
                                    fimse
                                 fimse
                                 fimse

                                 escreval("*PORTA ESCOLHIDA: Nº", port_alt_one,"*")
                                 escreval()

                                 escreval("A porta número",num_two," possui um bode.")
                                 escreval()

                                 escreval("Deseja trocar a porta (",port_alt_one," ) pela que ainda está fechada (",port_alt_lock," )?")
                                 escreval("(obs: sim ou não)")
                                 escreva("-> ")
                                 leia(port_alt_two)

                                 limpatela
                                 
                                 se (temp = verdadeiro) entao
                                    timer 120
                                 fimse
                                 
                                 escreval("      ",pt_abrt_carro_1, pt_abrt_bode_1, pt_abrt_bode_1)
                                 escreval("      ",pt_abrt_carro_2, pt_abrt_bode_2, pt_abrt_bode_2)
                                 escreval("      ",pt_abrt_carro_3, pt_abrt_bode_3, pt_abrt_bode_3)
                                 escreval("      ",pt_abrt_carro_4, pt_abrt_bode_4, pt_abrt_bode_4)
                                 escreval("      ",pt_abrt_carro_5, pt_abrt_bode_5, pt_abrt_bode_5)
                                 escreval("      ",pt_abrt_carro_6, pt_abrt_bode_6, pt_abrt_bode_6)
                                 escreval("      ",pt_abrt_carro_7, pt_abrt_bode_7, pt_abrt_bode_7)
                                 escreval("      ",pt_abrt_carro_8, pt_abrt_bode_8, pt_abrt_bode_8)
                                 escreval("      ",pt_abrt_carro_9, pt_abrt_bode_9, pt_abrt_bode_9)
                                 escreval("      ",pt_abrt_carro_10, pt_abrt_bode_10, pt_abrt_bode_10)
                                 escreval()

                                 se (temp = verdadeiro) entao
                                    timer 0
                                 fimse
                                 
                                 se (port_alt_two = "sim") ou (port_alt_two = "SIM") ou (port_alt_two = "Sim") entao
                                    escreval("*PORTA ESCOLHIDA: Nº", aux,"*")
                                    escreval()

                                    escreval("Que pena, você errou. Mas ganha um bode de consolação!")
                                    interrompa
                                 senao
                                      se (port_alt_two = "não") ou (port_alt_two = "Não") ou (port_alt_two = "NÃO") ou (port_alt_two = "nao") ou (port_alt_two = "Nao") ou (port_alt_two = "NAO") entao
                                         escreval("*PORTA FINAL ESCOLHIDA: Nº 1*")
                                         escreval()

                                         escreval("Parabéns, você ganhou um carro!")
                                         interrompa
                                 fimse
                                 fimse

                         fimse
                         fimse
                         
                    caso 2
                         port <- 2

                         escreval("Escolha uma das portas: ")
                         leia(port_alt_one)

                         se (port_alt_one <> port) entao //se o nï¿½mero da porta escolhida for diferente da porta do carro
                            repita
                                  aleatorio 1,3
                                  leia(num_two)
                                  aleatorio off

                                  limpatela
                            ate (port_alt_one <> port) e (port_alt_one <> num_two) e (port <> num_two) // permitir escolher um nï¿½mero diferente da onde a porta com o carro estï¿½ e uma porta diferente da escolhida

                            repita
                                  aleatorio 1,3
                                  leia(port_alt_lock)
                                  aleatorio off

                                  limpatela
                            ate (port_alt_one <> port_alt_lock) e (num_two <> port_alt_lock)

                            se (num_two = 1) entao
                               se (temp = verdadeiro) entao
                                  timer 120
                               fimse
                               
                               escreval("         ",pt_abrt_bode_1, pt_fec_cima, pt_fec_cima)
                               escreval("         ",pt_abrt_bode_2, pt_fec_lado, pt_fec_lado)
                               escreval("         ",pt_abrt_bode_3, pt_fec_lado, pt_fec_lado)
                               escreval("         ",pt_abrt_bode_4, pt_fec_lado, pt_fec_lado)
                               escreval("         ",pt_abrt_bode_5, pt_fec_2, pt_fec_3)
                               escreval("         ",pt_abrt_bode_6, pt_fec_lado, pt_fec_lado)
                               escreval("         ",pt_abrt_bode_7, pt_fec_lado, pt_fec_lado)
                               escreval("         ",pt_abrt_bode_8, pt_fec_baixo, pt_fec_baixo)
                               escreval("         ",pt_abrt_bode_9, pt_fec_esp, pt_fec_esp)
                               escreval("         ",pt_abrt_bode_10, pt_fec_esp, pt_fec_esp)
                               escreval()
                               
                               se (temp = verdadeiro) entao
                                  timer 0
                               fimse
                            senao
                                 se (num_two = 3) entao
                                    se (temp = verdadeiro) entao
                                       timer 120
                                    fimse
                                    
                                    escreval("         ",pt_fec_cima, pt_fec_cima, pt_abrt_bode_1)
                                    escreval("         ",pt_fec_lado, pt_fec_lado, pt_abrt_bode_2)
                                    escreval("         ",pt_fec_lado, pt_fec_lado, pt_abrt_bode_3)
                                    escreval("         ",pt_fec_lado, pt_fec_lado, pt_abrt_bode_4)
                                    escreval("         ",pt_fec_1, pt_fec_2, pt_abrt_bode_5)
                                    escreval("         ",pt_fec_lado, pt_fec_lado, pt_abrt_bode_6)
                                    escreval("         ",pt_fec_lado, pt_fec_lado, pt_abrt_bode_7)
                                    escreval("         ",pt_fec_baixo, pt_fec_baixo, pt_abrt_bode_8)
                                    escreval("         ",pt_fec_esp, pt_fec_esp, pt_abrt_bode_9)
                                    escreval("         ",pt_fec_esp, pt_fec_esp, pt_abrt_bode_10)
                                    escreval()
                                    
                                    se (temp = verdadeiro) entao
                                       timer 0
                                    fimse
                            fimse
                            fimse

                            escreval("*PORTA ESCOLHIDA: Nº", port_alt_one,"*")
                            escreval()

                            escreval("A porta número",num_two," possui um bode.")
                            escreval()

                            escreval("Deseja trocar a porta (",port_alt_one," ) pela que ainda está fechada (",port_alt_lock," )?")
                            escreval("(obs: sim ou não)")
                            escreva("-> ")
                            leia(port_alt_two)

                            limpatela

                            se (temp = verdadeiro) entao
                               timer 120
                            fimse
                            
                            escreval("      ",pt_abrt_bode_1, pt_abrt_carro_1, pt_abrt_bode_1)
                            escreval("      ",pt_abrt_bode_2, pt_abrt_carro_2, pt_abrt_bode_2)
                            escreval("      ",pt_abrt_bode_3, pt_abrt_carro_3, pt_abrt_bode_3)
                            escreval("      ",pt_abrt_bode_4, pt_abrt_carro_4, pt_abrt_bode_4)
                            escreval("      ",pt_abrt_bode_5, pt_abrt_carro_5, pt_abrt_bode_5)
                            escreval("      ",pt_abrt_bode_6, pt_abrt_carro_6, pt_abrt_bode_6)
                            escreval("      ",pt_abrt_bode_7, pt_abrt_carro_7, pt_abrt_bode_7)
                            escreval("      ",pt_abrt_bode_8, pt_abrt_carro_8, pt_abrt_bode_8)
                            escreval("      ",pt_abrt_bode_9, pt_abrt_carro_9, pt_abrt_bode_9)
                            escreval("      ",pt_abrt_bode_10, pt_abrt_carro_10, pt_abrt_bode_10)
                            escreval()

                            se (temp = verdadeiro) entao
                               timer 0
                            fimse
                            
                            se (port_alt_two = "sim") ou (port_alt_two = "SIM") ou (port_alt_two = "Sim") entao
                               escreval("*PORTA FINAL ESCOLHIDA: Nº 2*")
                               escreval()

                               escreval("Parabéns, você ganhou um carro!")
                               senao
                               se (port_alt_two = "não") ou (port_alt_two = "Não") ou (port_alt_two = "NÃO") ou (port_alt_two = "nao") ou (port_alt_two = "Nao") ou (port_alt_two = "NAO") entao
                                 escreval("*PORTA FINAL ESCOLHIDA: Nº", port_alt_one,"*")
                                 escreval()
                                 escreval("Que pena, você errou. Mas ganha um bode de consolação!")
                            fimse
                            fimse

                            interrompa

                         senao
                              se (port_alt_one = port) entao //se o número da porta escolhida for igual da porta do carro
                                 aleatorio 1,10  // o acaso da mesma porta do carro ser escolhido se faz necessario uma escolha aleatoria sobre as duas portas consequentes
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
                                    se (temp = verdadeiro) entao
                                       timer 120
                                    fimse
                                    
                                    escreval("         ",pt_fec_cima, pt_fec_cima, pt_abrt_bode_1)
                                    escreval("         ",pt_fec_lado, pt_fec_lado, pt_abrt_bode_2)
                                    escreval("         ",pt_fec_lado, pt_fec_lado, pt_abrt_bode_3)
                                    escreval("         ",pt_fec_lado, pt_fec_lado, pt_abrt_bode_4)
                                    escreval("         ",pt_fec_1, pt_fec_2, pt_abrt_bode_5)
                                    escreval("         ",pt_fec_lado, pt_fec_lado, pt_abrt_bode_6)
                                    escreval("         ",pt_fec_lado, pt_fec_lado, pt_abrt_bode_7)
                                    escreval("         ",pt_fec_baixo, pt_fec_baixo, pt_abrt_bode_8)
                                    escreval("         ",pt_fec_esp, pt_fec_esp, pt_abrt_bode_9)
                                    escreval("         ",pt_fec_esp, pt_fec_esp, pt_abrt_bode_10)
                                    escreval()
                                    
                                    se (temp = verdadeiro) entao
                                       timer 0
                                    fimse
                                 senao
                                 se (num_two = 1) entao
                                    se (temp = verdadeiro) entao
                                       timer 120
                                    fimse
                                    
                                    escreval("         ",pt_abrt_bode_1, pt_fec_cima, pt_fec_cima)
                                    escreval("         ",pt_abrt_bode_2, pt_fec_lado, pt_fec_lado)
                                    escreval("         ",pt_abrt_bode_3, pt_fec_lado, pt_fec_lado)
                                    escreval("         ",pt_abrt_bode_4, pt_fec_lado, pt_fec_lado)
                                    escreval("         ",pt_abrt_bode_5, pt_fec_2, pt_fec_3)
                                    escreval("         ",pt_abrt_bode_6, pt_fec_lado, pt_fec_lado)
                                    escreval("         ",pt_abrt_bode_7, pt_fec_lado, pt_fec_lado)
                                    escreval("         ",pt_abrt_bode_8, pt_fec_baixo, pt_fec_baixo)
                                    escreval("         ",pt_abrt_bode_9, pt_fec_esp, pt_fec_esp)
                                    escreval("         ",pt_abrt_bode_10, pt_fec_esp, pt_fec_esp)
                                    escreval()
                                    
                                    se (temp = verdadeiro) entao
                                       timer 0
                                    fimse
                                 fimse
                                 fimse

                                 escreval("*PORTA ESCOLHIDA: Nº", port_alt_one,"*")
                                 escreval()

                                 escreval("A porta número",num_two," possui um bode.")
                                 escreval()

                                 escreval("Deseja trocar a porta (",port_alt_one," ) pela que ainda está fechada (",port_alt_lock," )?")
                                 escreval("(obs: sim ou não)")
                                 escreva("-> ")
                                 leia(port_alt_two)

                                 limpatela

                                 se (temp = verdadeiro) entao
                                    timer 120
                                 fimse
                                 
                                 escreval("      ",pt_abrt_bode_1, pt_abrt_carro_1, pt_abrt_bode_1)
                                 escreval("      ",pt_abrt_bode_2, pt_abrt_carro_2, pt_abrt_bode_2)
                                 escreval("      ",pt_abrt_bode_3, pt_abrt_carro_3, pt_abrt_bode_3)
                                 escreval("      ",pt_abrt_bode_4, pt_abrt_carro_4, pt_abrt_bode_4)
                                 escreval("      ",pt_abrt_bode_5, pt_abrt_carro_5, pt_abrt_bode_5)
                                 escreval("      ",pt_abrt_bode_6, pt_abrt_carro_6, pt_abrt_bode_6)
                                 escreval("      ",pt_abrt_bode_7, pt_abrt_carro_7, pt_abrt_bode_7)
                                 escreval("      ",pt_abrt_bode_8, pt_abrt_carro_8, pt_abrt_bode_8)
                                 escreval("      ",pt_abrt_bode_9, pt_abrt_carro_9, pt_abrt_bode_9)
                                 escreval("      ",pt_abrt_bode_10, pt_abrt_carro_10, pt_abrt_bode_10)
                                 escreval()

                                 se (temp = verdadeiro) entao
                                    timer 0
                                 fimse
                                 
                                 se (port_alt_two = "sim") ou (port_alt_two = "SIM") ou (port_alt_two = "Sim") entao
                                    escreval("*PORTA ESCOLHIDA: Nº", aux,"*")
                                    escreval()

                                    escreval("Que pena, você errou. Mas ganha um bode de consolação!")
                                    interrompa
                                 senao
                                      se (port_alt_two = "não") ou (port_alt_two = "Não") ou (port_alt_two = "NÃO") ou (port_alt_two = "nao") ou (port_alt_two = "Nao") ou (port_alt_two = "NAO") entao
                                         escreval("*PORTA FINAL ESCOLHIDA: Nº 2*")
                                         escreval()

                                         escreval("Parabéns, você ganhou um carro!")
                                         interrompa
                                 fimse
                                 fimse

                         fimse
                         fimse

                    caso 3
                         port <- 3

                         escreval("Escolha uma das portas: ")
                         leia(port_alt_one)

                         se (port_alt_one <> port) entao //se o nï¿½mero da porta escolhida for diferente da porta do carro
                            repita
                                  aleatorio 1,3
                                  leia(num_two)
                                  aleatorio off

                                  limpatela
                            ate (port_alt_one <> port) e (port_alt_one <> num_two) e (port <> num_two) // permitir escolher um nï¿½mero diferente da onde a porta com o carro estï¿½ e uma porta diferente da escolhida

                            repita
                                  aleatorio 1,3
                                  leia(port_alt_lock)
                                  aleatorio off

                                  limpatela
                            ate (port_alt_one <> port_alt_lock) e (num_two <> port_alt_lock)

                            se (num_two = 1) entao
                               se (temp = verdadeiro) entao
                                  timer 120
                               fimse
                               
                               escreval("         ",pt_abrt_bode_1, pt_fec_cima, pt_fec_cima)
                               escreval("         ",pt_abrt_bode_2, pt_fec_lado, pt_fec_lado)
                               escreval("         ",pt_abrt_bode_3, pt_fec_lado, pt_fec_lado)
                               escreval("         ",pt_abrt_bode_4, pt_fec_lado, pt_fec_lado)
                               escreval("         ",pt_abrt_bode_5, pt_fec_2, pt_fec_3)
                               escreval("         ",pt_abrt_bode_6, pt_fec_lado, pt_fec_lado)
                               escreval("         ",pt_abrt_bode_7, pt_fec_lado, pt_fec_lado)
                               escreval("         ",pt_abrt_bode_8, pt_fec_baixo, pt_fec_baixo)
                               escreval("         ",pt_abrt_bode_9, pt_fec_esp, pt_fec_esp)
                               escreval("         ",pt_abrt_bode_10, pt_fec_esp, pt_fec_esp)
                               escreval()
                               
                               se (temp = verdadeiro) entao
                                  timer 0
                               fimse
                            senao
                                 se (num_two = 2) entao
                                    se (temp = verdadeiro) entao
                                       timer 120
                                    fimse
                                    
                                    escreval("         ",pt_fec_cima, pt_abrt_bode_1, pt_fec_cima)
                                    escreval("         ",pt_fec_lado, pt_abrt_bode_2, pt_fec_lado)
                                    escreval("         ",pt_fec_lado, pt_abrt_bode_3, pt_fec_lado)
                                    escreval("         ",pt_fec_lado, pt_abrt_bode_4, pt_fec_lado)
                                    escreval("         ",pt_fec_1, pt_abrt_bode_5, pt_fec_3)
                                    escreval("         ",pt_fec_lado, pt_abrt_bode_6, pt_fec_lado)
                                    escreval("         ",pt_fec_lado, pt_abrt_bode_7, pt_fec_lado)
                                    escreval("         ",pt_fec_baixo, pt_abrt_bode_8, pt_fec_baixo)
                                    escreval("         ",pt_fec_esp, pt_abrt_bode_9, pt_fec_esp)
                                    escreval("         ",pt_fec_esp, pt_abrt_bode_10, pt_fec_esp)
                                    escreval()
                                    
                                    se (temp = verdadeiro) entao
                                       timer 0
                                    fimse
                            fimse
                            fimse

                            escreval("*PORTA ESCOLHIDA: Nº", port_alt_one,"*")
                            escreval()

                            escreval("A porta número",num_two," possui um bode.")
                            escreval()

                            escreval("Deseja trocar a porta (",port_alt_one," ) pela que ainda está fechada (",port_alt_lock," )?")
                            escreval("(obs: sim ou não)")
                            escreva("-> ")
                            leia(port_alt_two)

                            limpatela

                            se (temp = verdadeiro) entao
                               timer 120
                            fimse
                            
                            escreval("      ",pt_abrt_bode_1, pt_abrt_bode_1, pt_abrt_carro_1)
                            escreval("      ",pt_abrt_bode_2, pt_abrt_bode_2, pt_abrt_carro_2)
                            escreval("      ",pt_abrt_bode_3, pt_abrt_bode_3, pt_abrt_carro_3)
                            escreval("      ",pt_abrt_bode_4, pt_abrt_bode_4, pt_abrt_carro_4)
                            escreval("      ",pt_abrt_bode_5, pt_abrt_bode_5, pt_abrt_carro_5)
                            escreval("      ",pt_abrt_bode_6, pt_abrt_bode_6, pt_abrt_carro_6)
                            escreval("      ",pt_abrt_bode_7, pt_abrt_bode_7, pt_abrt_carro_7)
                            escreval("      ",pt_abrt_bode_8, pt_abrt_bode_8, pt_abrt_carro_8)
                            escreval("      ",pt_abrt_bode_9, pt_abrt_bode_9, pt_abrt_carro_9)
                            escreval("      ",pt_abrt_bode_10, pt_abrt_bode_10, pt_abrt_carro_10)
                            escreval()

                            se (temp = verdadeiro) entao
                               timer 0
                            fimse
                            
                            se (port_alt_two = "sim") ou (port_alt_two = "SIM") ou (port_alt_two = "Sim") entao
                               escreval("*PORTA FINAL ESCOLHIDA: Nº 3*")
                               escreval()

                               escreval("Parabéns, você ganhou um carro!")
                               senao
                               se (port_alt_two = "não") ou (port_alt_two = "Não") ou (port_alt_two = "NÃO") ou (port_alt_two = "nao") ou (port_alt_two = "Nao") ou (port_alt_two = "NAO") entao
                                 escreval("*PORTA FINAL ESCOLHIDA: Nº", port_alt_one,"*")
                                 escreval()
                                 escreval("Que pena, você errou. Mas ganha um bode de consolação!")
                            fimse
                            fimse

                            interrompa

                         senao
                              se (port_alt_one = port) entao //se o número da porta escolhida for igual da porta do carro
                                 aleatorio 1,10  // o acaso da mesma porta do carro ser escolhido se faz necessario uma escolha aleatoria sobre as duas portas consequentes
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
                                    se (temp = verdadeiro) entao
                                       timer 120
                                    fimse
                                    
                                    escreval("         ",pt_abrt_bode_1, pt_fec_cima, pt_fec_cima)
                                    escreval("         ",pt_abrt_bode_2, pt_fec_lado, pt_fec_lado)
                                    escreval("         ",pt_abrt_bode_3, pt_fec_lado, pt_fec_lado)
                                    escreval("         ",pt_abrt_bode_4, pt_fec_lado, pt_fec_lado)
                                    escreval("         ",pt_abrt_bode_5, pt_fec_2, pt_fec_3)
                                    escreval("         ",pt_abrt_bode_6, pt_fec_lado, pt_fec_lado)
                                    escreval("         ",pt_abrt_bode_7, pt_fec_lado, pt_fec_lado)
                                    escreval("         ",pt_abrt_bode_8, pt_fec_baixo, pt_fec_baixo)
                                    escreval("         ",pt_abrt_bode_9, pt_fec_esp, pt_fec_esp)
                                    escreval("         ",pt_abrt_bode_10, pt_fec_esp, pt_fec_esp)
                                    escreval()
                                    
                                    se (temp = verdadeiro) entao
                                       timer 0
                                    fimse
                                 senao
                                 se (num_two = 2) entao
                                    se (temp = verdadeiro) entao
                                       timer 120
                                    fimse
                                    
                                    escreval("         ",pt_fec_cima, pt_abrt_bode_1, pt_fec_cima)
                                    escreval("         ",pt_fec_lado, pt_abrt_bode_2, pt_fec_lado)
                                    escreval("         ",pt_fec_lado, pt_abrt_bode_3, pt_fec_lado)
                                    escreval("         ",pt_fec_lado, pt_abrt_bode_4, pt_fec_lado)
                                    escreval("         ",pt_fec_1, pt_abrt_bode_5, pt_fec_3)
                                    escreval("         ",pt_fec_lado, pt_abrt_bode_6, pt_fec_lado)
                                    escreval("         ",pt_fec_lado, pt_abrt_bode_7, pt_fec_lado)
                                    escreval("         ",pt_fec_baixo, pt_abrt_bode_8, pt_fec_baixo)
                                    escreval("         ",pt_fec_esp, pt_abrt_bode_9, pt_fec_esp)
                                    escreval("         ",pt_fec_esp, pt_abrt_bode_10, pt_fec_esp)
                                    escreval()
                                    
                                    se (temp = verdadeiro) entao
                                       timer 0
                                    fimse
                                 fimse
                                 fimse

                                 escreval("*PORTA ESCOLHIDA: Nº", port_alt_one,"*")
                                 escreval()

                                 escreval("A porta número",num_two," possui um bode.")
                                 escreval()

                                 escreval("Deseja trocar a porta (",port_alt_one," ) pela que ainda está fechada (",port_alt_lock," )?")
                                 escreval("(obs: sim ou não)")
                                 escreva("-> ")
                                 leia(port_alt_two)

                                 limpatela

                                 se (temp = verdadeiro) entao
                                    timer 120
                                 fimse
                                 
                                 escreval("      ",pt_abrt_bode_1, pt_abrt_bode_1, pt_abrt_carro_1)
                                 escreval("      ",pt_abrt_bode_2, pt_abrt_bode_2, pt_abrt_carro_2)
                                 escreval("      ",pt_abrt_bode_3, pt_abrt_bode_3, pt_abrt_carro_3)
                                 escreval("      ",pt_abrt_bode_4, pt_abrt_bode_4, pt_abrt_carro_4)
                                 escreval("      ",pt_abrt_bode_5, pt_abrt_bode_5, pt_abrt_carro_5)
                                 escreval("      ",pt_abrt_bode_6, pt_abrt_bode_6, pt_abrt_carro_6)
                                 escreval("      ",pt_abrt_bode_7, pt_abrt_bode_7, pt_abrt_carro_7)
                                 escreval("      ",pt_abrt_bode_8, pt_abrt_bode_8, pt_abrt_carro_8)
                                 escreval("      ",pt_abrt_bode_9, pt_abrt_bode_9, pt_abrt_carro_9)
                                 escreval("      ",pt_abrt_bode_10, pt_abrt_bode_10, pt_abrt_carro_10)
                                 escreval()

                                 se (temp = verdadeiro) entao
                                    timer 0
                                 fimse
                                 
                                 se (port_alt_two = "sim") ou (port_alt_two = "SIM") ou (port_alt_two = "Sim") entao
                                    escreval("*PORTA ESCOLHIDA: Nº", aux,"*")
                                    escreval()

                                    escreval("Que pena, você errou. Mas ganha um bode de consolação!")
                                    interrompa
                                 senao
                                      se (port_alt_two = "não") ou (port_alt_two = "Não") ou (port_alt_two = "NÃO") ou (port_alt_two = "nao") ou (port_alt_two = "Nao") ou (port_alt_two = "NAO") entao
                                         escreval("*PORTA FINAL ESCOLHIDA: Nº 3*")
                                         escreval()

                                         escreval("Parabéns, você ganhou um carro!")
                                         interrompa
                                 fimse
                                 fimse

                         fimse
                         fimse

        fimescolha
Fimalgoritmo