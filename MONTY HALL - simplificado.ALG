Algoritmo "Monty Hall"
// Disciplina   : Programação Computacional
// Professor   : Ana Paula
// Autor(a)    : Cauã Willian Assis de Oliveira
// Data atual  : 29/05/2021
Var
   aleat_1, aleat_2, port_esc_1, port_fechada, resp_int: inteiro
   x1, x2, x3, resp_caractere: caractere

Inicio
      x1 <- "1"
      x2 <- "2"
      x3 <- "3"

      aleatorio 1,3
      leia(aleat_1)
      aleatorio off
      
      limpatela
      
      escreval("OBSERVAÇÕES:")
      escreval("- os bodes são representados por B;")
      escreval("- o carro é representado por C;")
      
      timer 4000
      
      timer 0
      
      limpatela
      
      escreval(" ___    ___    ___ ")
      escreval("|   |  |   |  |   |")
      escreval("| ",x1," |  | ",x2," |  | ",x3," |")
      escreval("|___|  |___|  |___|")
      escreval("")

      escreval("Escolha uma porta:")
      leia(port_esc_1)
      
      repita
            aleatorio 1,3
            leia(aleat_2)
            aleatorio off
            
            limpatela
            
            x1 <- "1"
            x2 <- "2"
            x3 <- "3"
            
            se (aleat_2 = 1) entao
               x1 <- "B"
            senao
                 se (aleat_2 = 2) entao
                  x2 <- "B"
            senao
                 se (aleat_2 = 3) entao
                  x3 <- "B"
            fimse
            fimse
            fimse
            
            repita
                  aleatorio 1,3
                  leia(port_fechada)
                  aleatorio off

                  limpatela
            ate (port_fechada <> aleat_2) e (port_fechada <> port_esc_1)
      ate (aleat_2 <> aleat_1) e (aleat_2 <> port_esc_1)
      
      escreval(" ___    ___    ___ ")
      escreval("|   |  |   |  |   |")
      escreval("| ",x1," |  | ",x2," |  | ",x3," |")
      escreval("|___|  |___|  |___|")
      escreval("")
      
      escreval("Deseja trocar sua porta escolhida (", port_esc_1," ) para a fechada (", port_fechada," )?")
      leia(resp_caractere)
      
      se (resp_caractere = "sim") ou  (resp_caractere = "s") entao
         resp_int <- port_fechada
      senao
           se (resp_caractere = "não") ou  (resp_caractere = "n") entao
              resp_int <- port_esc_1
      fimse
      fimse
      
      limpatela
      
      x1 <- "B"
      x2 <- "B"
      x3 <- "B"
      
      se (aleat_1 = 1) entao
         x1 <- "C"
      senao
           se (aleat_1 = 2) entao
              x2 <- "C"
      senao
           se (aleat_1 = 3) entao
              x3 <- "C"
      fimse
      fimse
      fimse

      escreval(" ___    ___    ___ ")
      escreval("|   |  |   |  |   |")
      escreval("| ",x1," |  | ",x2," |  | ",x3," |")
      escreval("|___|  |___|  |___|")
      escreval("")
      escreval("")
      
      se (aleat_1 = resp_int) entao
         escreval("Parabéns! Você ganhou!")
      senao
           se (aleat_1 <> resp_int) entao
              escreval("Infelizmente não foi dessa vez, quem sabe da proxima vez.")
      fimse
      fimse
Fimalgoritmo