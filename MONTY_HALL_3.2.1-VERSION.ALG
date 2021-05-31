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
        port_alt_two, help: caractere // segunda escolha de porta da pessoa
        
        temp, apres, temp_logo, aleat_on, aleat_on_geral, hab_inst: logico // valores lógicos que remetem a configuração
Inicio
        // CONFIGURAÇÃO:
        // 1_Temporizador está ligado?
        temp <- falso
        // 2_Modo apresentação está ligada?
        apres <- falso
        // 3_Temporizador da logo está ligado?
        temp_logo <- falso
        // 4_Definir porta aleatóriamente?
        aleat_on <- verdadeiro
        // 5_Caso "definir porta aleatoriamente" esteja desligado, qual porta deseja que caia?
        num_one_car <- 1
        // end
        // 6_Definir portas apresentada aleatóriamente?
        aleat_on_geral <- verdadeiro
        // 7_Caso "definir portas apresentada aleatoriamente" esteja desligado, qual porta deseja que caia?
        num_two <- 2
        // 8_Habilitar instruções?
        hab_inst <- falso
        // end

        para XS de 1 ate 55 faca
             leia(notepad[XS])
        fimpara

        limpatela

        // comando de escolha de onde o carro ficará¡
        se (aleat_on = verdadeiro) entao
           aleatorio 1,3  // aleatoriza a porta onde o carro estará¡
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
                escreval(notepad[xs])
           fimpara
           
           escreval()
        fimse
        
        se (hab_inst = verdadeiro) entao
          escreval("    Gostaria de ter acesso as instruçÃµes? (obs: sim ou não)")
          escreva("    -> ")
          leia(help)
        
          limpatela
        
          //mensagens de instrução ao participante
          se (help = "sim") ou (help = "SIM") ou (help = "Sim") entao
            se (temp = verdadeiro) entao
              timer 30
            fimse
           
            se (apres = verdadeiro) entao
              para xs de 48 ate 55 faca
                escreval(notepad[xs])
              fimpara
           
              limpatela
           
              para xs de 48 ate 52 faca
                escreval(notepad[xs])
              fimpara
              escreval()
              escreval()
              para xs de 52 ate 55 faca
                escreval(notepad[xs])
              fimpara
            
              limpatela
            
              para xs de 48 ate 52 faca
                escreval(notepad[xs])
              fimpara
              escreval()
              escreval()
              escreval()
              escreval()
              para xs de 52 ate 55 faca
                escreval(notepad[xs])
              fimpara
            
              limpatela
            
              para xs de 48 ate 52 faca
                escreval(notepad[xs])
              fimpara
              escreval()
              escreval()
              escreval()
              escreval()
              escreval()
              escreval()
              para xs de 52 ate 55 faca
                escreval(notepad[xs])
              fimpara
            
              limpatela
           
              para xs de 48 ate 52 faca
                escreval(notepad[xs])
              fimpara
              escreval()
              escreval()
              escreval()
              escreval()
              escreval()
              escreval()
              escreval()
              escreval()
              para xs de 52 ate 55 faca
                escreval(notepad[xs])
              fimpara

              limpatela
            fimse
           
            se (temp = verdadeiro) entao
              timer 200
            fimse
           
            se (apres = verdadeiro) entao
              para xs de 48 ate 52 faca
                escreval(notepad[xs])
              fimpara
            fimse
           
            se (temp = verdadeiro) entao
              timer 500
            fimse
           
            escreval("----------------------------------------------------------------")
            escreval("1- De primeiro momento aparecem 3 portas ao jogador;")
            escreval("2- Duas portas contém bodes, enquanto a outra contém um carro;")
            escreval("3- Você pode escolher, portanto, uma porta, de forma que concorra ao prémio;")
            escreval("4- Logo após, você passa a ver o que tem dentro de uma porta aleatória;")
            escreval("5- É perguntado se você gostaria de trocar de porta;")
            escreval("6- A troca, ou não, gerá o resultado se você é ou não o ganhador.")
            escreval("----------------------------------------------------------------")

            se (temp = verdadeiro) entao
              timer 70
            fimse
           
            se (apres = verdadeiro) entao
              para xs de 52 ate 55 faca
                escreval(notepad[xs])
              fimpara
            fimse
           
            escreval()
            escreval()
            escreval("                  *Para sair pressione F9*                      ")

            se (temp = verdadeiro) entao
              timer 0
            fimse
           
            pausa
          fimse
        fimse
        
        limpatela
        
        se (temp = verdadeiro) entao
           timer 100
        fimse
        
        escreval("          ",notepad[1], notepad[1], notepad[1])
        escreval("          ",notepad[2], notepad[2], notepad[2])
        escreval("          ",notepad[2], notepad[2], notepad[2])
        escreval("          ",notepad[2], notepad[2], notepad[2])
        escreval("          ",notepad[3], notepad[4], notepad[5])
        escreval("          ",notepad[2], notepad[2], notepad[2])
        escreval("          ",notepad[2], notepad[2], notepad[2])
        escreval("          ",notepad[6], notepad[6], notepad[6])
        escreval()
        
        timer 0
        
        escreval("Escolha uma das portas: ")
        leia(port_alt_one)

        se (port_alt_one <> port) entao // se o número da porta escolhida for diferente da porta do carro
           se (aleat_on_geral = verdadeiro) entao
              repita
                    aleatorio 1,3
                    leia(num_two)
                    aleatorio off

                    limpatela
              ate (port_alt_one <> port) e (port_alt_one <> num_two) e (port <> num_two)// permitir escolher um número diferente da onde a porta com o carro está e uma porta diferente da escolhida
           fimse
           
           repita
                 aleatorio 1,3
                 leia(port_alt_lock)
                 aleatorio off

                 limpatela
           ate (port_alt_lock <> port_alt_one) e (port_alt_lock <> num_two) // permite que a porta fechada mostrada para troca seja diferente da escolha e diferente da porta do carro
           
        senao
             se (port_alt_one = port) entao // se o número da porta escolhida for o mesmo da porta do carro
                repita
                      aleatorio 1,3
                      leia(num_two) // define onde o bode ficará¡
                      aleatorio off

                      limpatela
                ate (port_alt_one <> num_two) e (port <> num_two) // permitir escolher um número diferente da onde a porta com o carro está e uma porta diferente da escolhida
                
                repita
                      aleatorio 1,3
                      leia(port_alt_lock)
                      aleatorio off
                      
                      limpatela
                ate (port_alt_lock <> port_alt_one) e (num_two <> port_alt_lock) // permite que a porta fechada mostrada para troca seja diferente da escolha e diferente da porta do carro
        fimse
        fimse
         
        // fim da apresentação e hora de escolha da porta
        escolha(num_one_car) // permite que dependendo de qual porta o carro esteja seja realizado açÃµes distintas
                    caso 1
                         se (port_alt_one <> port) entao //se o número da porta escolhida for diferente da porta do carro
                            se (num_two = 3) entao
                               timer 120
                               
                               escreval("         ",notepad[1], notepad[1], notepad[8])
                               escreval("         ",notepad[2], notepad[2], notepad[9])
                               escreval("         ",notepad[2], notepad[2], notepad[10])
                               escreval("         ",notepad[2], notepad[2], notepad[11])
                               escreval("         ",notepad[3], notepad[4], notepad[12])
                               escreval("         ",notepad[2], notepad[2], notepad[13])
                               escreval("         ",notepad[2], notepad[2], notepad[14])
                               escreval("         ",notepad[6], notepad[6], notepad[15])
                               escreval("         ",notepad[7], notepad[7], notepad[16])
                               escreval("         ",notepad[7], notepad[7], notepad[17])
                               escreval()
                               
                               se (temp = verdadeiro) entao
                                  timer 0
                               fimse
                            senao
                                 se (num_two = 2) entao
                                    se (temp = verdadeiro) entao
                                       timer 120
                                    fimse
                                    
                                    escreval("         ",notepad[1], notepad[8], notepad[1])
                                    escreval("         ",notepad[2], notepad[9], notepad[2])
                                    escreval("         ",notepad[2], notepad[10], notepad[2])
                                    escreval("         ",notepad[2], notepad[11], notepad[2])
                                    escreval("         ",notepad[3], notepad[12], notepad[5])
                                    escreval("         ",notepad[2], notepad[13], notepad[2])
                                    escreval("         ",notepad[2], notepad[14], notepad[2])
                                    escreval("         ",notepad[6], notepad[15], notepad[6])
                                    escreval("         ",notepad[7], notepad[16], notepad[7])
                                    escreval("         ",notepad[7], notepad[17], notepad[7])
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
                            
                            escreval("      ",notepad[18], notepad[8], notepad[8])
                            escreval("      ",notepad[19], notepad[9], notepad[9])
                            escreval("      ",notepad[20], notepad[10], notepad[10])
                            escreval("      ",notepad[21], notepad[11], notepad[11])
                            escreval("      ",notepad[22], notepad[12], notepad[12])
                            escreval("      ",notepad[23], notepad[13], notepad[13])
                            escreval("      ",notepad[24], notepad[14], notepad[14])
                            escreval("      ",notepad[25], notepad[15], notepad[15])
                            escreval("      ",notepad[26], notepad[16], notepad[16])
                            escreval("      ",notepad[27], notepad[17], notepad[17])
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
                                    aux <- 3
                                 senao
                                      se (num_three % 2 <> 0) entao
                                         aux <- 2
                                 fimse
                                 fimse
                                 
                                 se (num_two = 3) entao
                                    se (temp = verdadeiro) entao
                                       timer 120
                                    fimse
                                    
                                    escreval("         ",notepad[1], notepad[1], notepad[8])
                                    escreval("         ",notepad[2], notepad[2], notepad[9])
                                    escreval("         ",notepad[2], notepad[2], notepad[10])
                                    escreval("         ",notepad[2], notepad[2], notepad[11])
                                    escreval("         ",notepad[3], notepad[4], notepad[12])
                                    escreval("         ",notepad[2], notepad[2], notepad[13])
                                    escreval("         ",notepad[2], notepad[2], notepad[14])
                                    escreval("         ",notepad[6], notepad[6], notepad[15])
                                    escreval("         ",notepad[7], notepad[7], notepad[16])
                                    escreval("         ",notepad[7], notepad[7], notepad[17])
                                    escreval()
                                    
                                    se (temp = verdadeiro) entao
                                       timer 0
                                    fimse
                                 senao
                                 se (num_two = 2) entao
                                    se (temp = verdadeiro) entao
                                       timer 120
                                    fimse
                                    
                                    escreval("         ",notepad[1], notepad[8], notepad[1])
                                    escreval("         ",notepad[2], notepad[9], notepad[2])
                                    escreval("         ",notepad[2], notepad[10], notepad[2])
                                    escreval("         ",notepad[2], notepad[11], notepad[2])
                                    escreval("         ",notepad[3], notepad[12], notepad[5])
                                    escreval("         ",notepad[2], notepad[13], notepad[2])
                                    escreval("         ",notepad[2], notepad[14], notepad[2])
                                    escreval("         ",notepad[6], notepad[15], notepad[6])
                                    escreval("         ",notepad[7], notepad[16], notepad[7])
                                    escreval("         ",notepad[7], notepad[17], notepad[7])
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
                                 
                                 escreval("      ",notepad[18], notepad[8], notepad[8])
                                 escreval("      ",notepad[19], notepad[9], notepad[9])
                                 escreval("      ",notepad[20], notepad[10], notepad[10])
                                 escreval("      ",notepad[21], notepad[11], notepad[11])
                                 escreval("      ",notepad[22], notepad[12], notepad[12])
                                 escreval("      ",notepad[23], notepad[13], notepad[13])
                                 escreval("      ",notepad[24], notepad[14], notepad[14])
                                 escreval("      ",notepad[25], notepad[15], notepad[15])
                                 escreval("      ",notepad[26], notepad[16], notepad[16])
                                 escreval("      ",notepad[27], notepad[17], notepad[17])
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
                         se (port_alt_one <> port) entao //se o número da porta escolhida for diferente da porta do carro
                            se (num_two = 1) entao
                               se (temp = verdadeiro) entao
                                  timer 120
                               fimse
                               
                               escreval("         ",notepad[8], notepad[1], notepad[1])
                               escreval("         ",notepad[9], notepad[2], notepad[2])
                               escreval("         ",notepad[10], notepad[2], notepad[2])
                               escreval("         ",notepad[11], notepad[2], notepad[2])
                               escreval("         ",notepad[12], notepad[4], notepad[5])
                               escreval("         ",notepad[13], notepad[2], notepad[2])
                               escreval("         ",notepad[14], notepad[2], notepad[2])
                               escreval("         ",notepad[15], notepad[6], notepad[6])
                               escreval("         ",notepad[16], notepad[7], notepad[7])
                               escreval("         ",notepad[17], notepad[7], notepad[7])
                               escreval()
                               
                               se (temp = verdadeiro) entao
                                  timer 0
                               fimse
                            senao
                                 se (num_two = 3) entao
                                    se (temp = verdadeiro) entao
                                       timer 120
                                    fimse
                                    
                                    escreval("         ",notepad[1], notepad[1], notepad[8])
                                    escreval("         ",notepad[2], notepad[2], notepad[9])
                                    escreval("         ",notepad[2], notepad[2], notepad[10])
                                    escreval("         ",notepad[2], notepad[2], notepad[11])
                                    escreval("         ",notepad[3], notepad[4], notepad[12])
                                    escreval("         ",notepad[2], notepad[2], notepad[13])
                                    escreval("         ",notepad[2], notepad[2], notepad[14])
                                    escreval("         ",notepad[6], notepad[6], notepad[15])
                                    escreval("         ",notepad[7], notepad[7], notepad[16])
                                    escreval("         ",notepad[7], notepad[7], notepad[17])
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
                            
                            escreval("      ",notepad[8], notepad[18], notepad[8])
                            escreval("      ",notepad[9], notepad[19], notepad[9])
                            escreval("      ",notepad[10], notepad[20], notepad[10])
                            escreval("      ",notepad[11], notepad[21], notepad[11])
                            escreval("      ",notepad[12], notepad[22], notepad[12])
                            escreval("      ",notepad[13], notepad[23], notepad[13])
                            escreval("      ",notepad[14], notepad[24], notepad[14])
                            escreval("      ",notepad[15], notepad[25], notepad[15])
                            escreval("      ",notepad[16], notepad[26], notepad[16])
                            escreval("      ",notepad[17], notepad[27], notepad[17])
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
                                    aux <- 3
                                 senao
                                      se (num_three % 2 <> 0) entao
                                         aux <- 2
                                 fimse
                                 fimse

                                 se (num_two = 3) entao
                                    se (temp = verdadeiro) entao
                                       timer 120
                                    fimse
                                    
                                    escreval("         ",notepad[1], notepad[1], notepad[8])
                                    escreval("         ",notepad[2], notepad[2], notepad[9])
                                    escreval("         ",notepad[2], notepad[2], notepad[10])
                                    escreval("         ",notepad[2], notepad[2], notepad[11])
                                    escreval("         ",notepad[3], notepad[4], notepad[12])
                                    escreval("         ",notepad[2], notepad[2], notepad[13])
                                    escreval("         ",notepad[2], notepad[2], notepad[14])
                                    escreval("         ",notepad[6], notepad[6], notepad[15])
                                    escreval("         ",notepad[7], notepad[7], notepad[16])
                                    escreval("         ",notepad[7], notepad[7], notepad[17])
                                    escreval()
                                    
                                    se (temp = verdadeiro) entao
                                       timer 0
                                    fimse
                                 senao
                                 se (num_two = 1) entao
                                    se (temp = verdadeiro) entao
                                       timer 120
                                    fimse
                                    
                                    escreval("         ",notepad[8], notepad[1], notepad[1])
                                    escreval("         ",notepad[9], notepad[2], notepad[2])
                                    escreval("         ",notepad[10], notepad[2], notepad[2])
                                    escreval("         ",notepad[11], notepad[2], notepad[2])
                                    escreval("         ",notepad[12], notepad[4], notepad[5])
                                    escreval("         ",notepad[13], notepad[2], notepad[2])
                                    escreval("         ",notepad[14], notepad[2], notepad[2])
                                    escreval("         ",notepad[15], notepad[6], notepad[6])
                                    escreval("         ",notepad[16], notepad[7], notepad[7])
                                    escreval("         ",notepad[17], notepad[7], notepad[7])
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
                                 
                                 escreval("      ",notepad[8], notepad[18], notepad[8])
                                 escreval("      ",notepad[9], notepad[19], notepad[9])
                                 escreval("      ",notepad[10], notepad[20], notepad[10])
                                 escreval("      ",notepad[11], notepad[21], notepad[11])
                                 escreval("      ",notepad[12], notepad[22], notepad[12])
                                 escreval("      ",notepad[13], notepad[23], notepad[13])
                                 escreval("      ",notepad[14], notepad[24], notepad[14])
                                 escreval("      ",notepad[15], notepad[25], notepad[15])
                                 escreval("      ",notepad[16], notepad[26], notepad[16])
                                 escreval("      ",notepad[17], notepad[27], notepad[17])
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
                         se (port_alt_one <> port) entao //se o número da porta escolhida for diferente da porta do carro
                            se (num_two = 1) entao
                               se (temp = verdadeiro) entao
                                  timer 120
                               fimse
                               
                               escreval("         ",notepad[8], notepad[1], notepad[1])
                               escreval("         ",notepad[9], notepad[2], notepad[2])
                               escreval("         ",notepad[10], notepad[2], notepad[2])
                               escreval("         ",notepad[11], notepad[2], notepad[2])
                               escreval("         ",notepad[12], notepad[4], notepad[5])
                               escreval("         ",notepad[13], notepad[2], notepad[2])
                               escreval("         ",notepad[14], notepad[2], notepad[2])
                               escreval("         ",notepad[15], notepad[6], notepad[6])
                               escreval("         ",notepad[16], notepad[7], notepad[7])
                               escreval("         ",notepad[17], notepad[7], notepad[7])
                               escreval()
                               
                               se (temp = verdadeiro) entao
                                  timer 0
                               fimse
                            senao
                                 se (num_two = 2) entao
                                    se (temp = verdadeiro) entao
                                       timer 120
                                    fimse
                                    
                                    escreval("         ",notepad[1], notepad[8], notepad[1])
                                    escreval("         ",notepad[2], notepad[9], notepad[2])
                                    escreval("         ",notepad[2], notepad[10], notepad[2])
                                    escreval("         ",notepad[2], notepad[11], notepad[2])
                                    escreval("         ",notepad[3], notepad[12], notepad[5])
                                    escreval("         ",notepad[2], notepad[13], notepad[2])
                                    escreval("         ",notepad[2], notepad[14], notepad[2])
                                    escreval("         ",notepad[6], notepad[15], notepad[6])
                                    escreval("         ",notepad[7], notepad[16], notepad[7])
                                    escreval("         ",notepad[7], notepad[17], notepad[7])
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
                            
                            escreval("      ",notepad[8], notepad[8], notepad[18])
                            escreval("      ",notepad[9], notepad[9], notepad[19])
                            escreval("      ",notepad[10], notepad[10], notepad[20])
                            escreval("      ",notepad[11], notepad[11], notepad[21])
                            escreval("      ",notepad[12], notepad[12], notepad[22])
                            escreval("      ",notepad[13], notepad[13], notepad[23])
                            escreval("      ",notepad[14], notepad[14], notepad[24])
                            escreval("      ",notepad[15], notepad[15], notepad[25])
                            escreval("      ",notepad[16], notepad[16], notepad[26])
                            escreval("      ",notepad[17], notepad[17], notepad[27])
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
                                    
                                    escreval("         ",notepad[8], notepad[1], notepad[1])
                                    escreval("         ",notepad[9], notepad[2], notepad[2])
                                    escreval("         ",notepad[10], notepad[2], notepad[2])
                                    escreval("         ",notepad[11], notepad[2], notepad[2])
                                    escreval("         ",notepad[12], notepad[4], notepad[5])
                                    escreval("         ",notepad[13], notepad[2], notepad[2])
                                    escreval("         ",notepad[14], notepad[2], notepad[2])
                                    escreval("         ",notepad[15], notepad[6], notepad[6])
                                    escreval("         ",notepad[16], notepad[7], notepad[7])
                                    escreval("         ",notepad[17], notepad[7], notepad[7])
                                    escreval()
                                    
                                    se (temp = verdadeiro) entao
                                       timer 0
                                    fimse
                                 senao
                                 se (num_two = 2) entao
                                    se (temp = verdadeiro) entao
                                       timer 120
                                    fimse
                                    
                                    escreval("         ",notepad[1], notepad[8], notepad[1])
                                    escreval("         ",notepad[2], notepad[9], notepad[2])
                                    escreval("         ",notepad[2], notepad[10], notepad[2])
                                    escreval("         ",notepad[2], notepad[11], notepad[2])
                                    escreval("         ",notepad[3], notepad[12], notepad[5])
                                    escreval("         ",notepad[2], notepad[13], notepad[2])
                                    escreval("         ",notepad[2], notepad[14], notepad[2])
                                    escreval("         ",notepad[6], notepad[15], notepad[6])
                                    escreval("         ",notepad[7], notepad[16], notepad[7])
                                    escreval("         ",notepad[7], notepad[17], notepad[7])
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
                                 
                                 escreval("      ",notepad[8], notepad[8], notepad[18])
                                 escreval("      ",notepad[9], notepad[9], notepad[19])
                                 escreval("      ",notepad[10], notepad[10], notepad[20])
                                 escreval("      ",notepad[11], notepad[11], notepad[21])
                                 escreval("      ",notepad[12], notepad[12], notepad[22])
                                 escreval("      ",notepad[13], notepad[13], notepad[23])
                                 escreval("      ",notepad[14], notepad[14], notepad[24])
                                 escreval("      ",notepad[15], notepad[15], notepad[25])
                                 escreval("      ",notepad[16], notepad[16], notepad[26])
                                 escreval("      ",notepad[17], notepad[17], notepad[27])
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