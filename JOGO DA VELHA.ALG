Algoritmo "Jogo da Velha"
// Disciplina   : Programação Computacional
// Professor   : Ana Paula 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 08/05/2021
Var
        op1, op2: caractere

        form_1, form_2, form_3: caractere

        x, x1, x2, x3, x4, x5, x6, x7, x8, x9: caractere
        
        j1, j2, j3, j4, j5, j6, j7, j8, j9: caractere

Inicio
        op1 <- "X"
        op2 <- "O"

        form_1 <- "-----+-----+-----"
        form_2 <- "  |  "
        form_3 <- "  |  "
        
        x1 <- "1"
        x2 <- "2"
        x3 <- "3"
        x4 <- "4"
        x5 <- "5"
        x6 <- "6"
        x7 <- "7"
        x8 <- "8"
        x9 <- "9"
        
        escreval("  ",x1,form_2,x2,form_3,x3)
        escreval(form_1)
        escreval("  ",x4,form_2,x5,form_3,x6)
        escreval(form_1)
        escreval("  ",x7,form_2,x8,form_3,x9)

        escreval()
        escreval("Deseja jogar onde?")
        leia(j1)

        escolha j1
                caso "1"
                     x1 <- op1
                caso "2"
                     x2 <- op1
                caso "3"
                     x3 <- op1
                caso "4"
                     x4 <- op1
                caso "5"
                     x5 <- op1
                caso "6"
                     x6 <- op1
                caso "7"
                     x7 <- op1
                caso "8"
                     x8 <- op1
                caso "9"
                     x9 <- op1
        fimescolha

        limpatela

        escreval("  ",x1,form_2,x2,form_3,x3)
        escreval(form_1)
        escreval("  ",x4,form_2,x5,form_3,x6)
        escreval(form_1)
        escreval("  ",x7,form_2,x8,form_3,x9)

        escreval()
        escreval("Deseja jogar onde?")
        leia(j2)

        escolha j2
                caso "1"
                     x1 <- op2
                caso "2"
                     x2 <- op2
                caso "3"
                     x3 <- op2
                caso "4"
                     x4 <- op2
                caso "5"
                     x5 <- op2
                caso "6"
                     x6 <- op2
                caso "7"
                     x7 <- op2
                caso "8"
                     x8 <- op2
                caso "9"
                     x9 <- op2
        fimescolha

        limpatela
        
        escreval("  ",x1,form_2,x2,form_3,x3)
        escreval(form_1)
        escreval("  ",x4,form_2,x5,form_3,x6)
        escreval(form_1)
        escreval("  ",x7,form_2,x8,form_3,x9)

        escreval()
        escreval("Deseja jogar onde?")
        leia(j3)

        escolha j3
                caso "1"
                     x1 <- op1
                caso "2"
                     x2 <- op1
                caso "3"
                     x3 <- op1
                caso "4"
                     x4 <- op1
                caso "5"
                     x5 <- op1
                caso "6"
                     x6 <- op1
                caso "7"
                     x7 <- op1
                caso "8"
                     x8 <- op1
                caso "9"
                     x9 <- op1
        fimescolha

        limpatela

        escreval("  ",x1,form_2,x2,form_3,x3)
        escreval(form_1)
        escreval("  ",x4,form_2,x5,form_3,x6)
        escreval(form_1)
        escreval("  ",x7,form_2,x8,form_3,x9)

        escreval()
        escreval("Deseja jogar onde?")
        leia(j4)

        escolha j4
                caso "1"
                     x1 <- op2
                caso "2"
                     x2 <- op2
                caso "3"
                     x3 <- op2
                caso "4"
                     x4 <- op2
                caso "5"
                     x5 <- op2
                caso "6"
                     x6 <- op2
                caso "7"
                     x7 <- op2
                caso "8"
                     x8 <- op2
                caso "9"
                     x9 <- op2
        fimescolha

        limpatela
        
        escreval("  ",x1,form_2,x2,form_3,x3)
        escreval(form_1)
        escreval("  ",x4,form_2,x5,form_3,x6)
        escreval(form_1)
        escreval("  ",x7,form_2,x8,form_3,x9)

        escreval()
        escreval("Deseja jogar onde?")
        leia(j5)

        escolha j5
                caso "1"
                     x1 <- op1
                caso "2"
                     x2 <- op1
                caso "3"
                     x3 <- op1
                caso "4"
                     x4 <- op1
                caso "5"
                     x5 <- op1
                caso "6"
                     x6 <- op1
                caso "7"
                     x7 <- op1
                caso "8"
                     x8 <- op1
                caso "9"
                     x9 <- op1
        fimescolha
                
        limpatela
        
        // leitura de ganhador horizontalmente
        se (x1 = "X") e (x2 = "X") e (x3 = "X") entao
           escreva("Parabéns, Player 1 Ganhou!")

           interrompa
        senao
             se (x1 = "O") e (x2 = "O") e (x3 = "O") entao
                escreva("Parabéns, Player 2 Ganhou!")

                interrompa
        senao
             se (x4 = "X") e (x5 = "X") e (x6 = "X") entao
                escreva("Parabéns, Player 1 Ganhou!")

                interrompa
        senao
             se (x4 = "O") e (x5 = "O") e (x6 = "O") entao
                escreva("Parabéns, Player 2 Ganhou!")

                interrompa
        senao
             se (x7 = "X") e (x8 = "X") e (x9 = "X") entao
                escreva("Parabéns, Player 1 Ganhou!")

                interrompa
        senao
             se (x7 = "O") e (x8 = "O") e (x9 = "O") entao
                escreva("Parabéns, Player 2 Ganhou!")

                interrompa
        fimse
        fimse
        fimse
        fimse
        fimse
        fimse

        // leitura de ganhador verticalmente
        se (x1 = "X") e (x4 = "X") e (x7 = "X") entao
           escreva("Parabéns, Player 1 Ganhou!")
           interrompa
        senao
             se (x1 = "O") e (x4 = "O") e (x7 = "O") entao
                escreva("Parabéns, Player 2 Ganhou!")
                interrompa
        senao
             se (x2 = "X") e (x5 = "X") e (x8 = "X") entao
                escreva("Parabéns, Player 1 Ganhou!")
                interrompa
        senao
             se (x2 = "O") e (x5 = "O") e (x8 = "O") entao
                escreva("Parabéns, Player 2 Ganhou!")
                interrompa
        senao
             se (x3 = "X") e (x6 = "X") e (x9 = "X") entao
                escreva("Parabéns, Player 1 Ganhou!")
                interrompa
        senao
             se (x3 = "O") e (x6 = "O") e (x9 = "O") entao
                escreva("Parabéns, Player 2 Ganhou!")
                interrompa
        fimse
        fimse
        fimse
        fimse
        fimse
        fimse

        // leitura de ganhador diagonal
        se (x1 = "X") e (x5 = "X") e (x9 = "X") entao
           escreva("Parabéns, Player 1 Ganhou!")
           interrompa
        senao
             se (x1 = "O") e (x5 = "O") e (x9 = "O") entao
                escreva("Parabéns, Player 2 Ganhou!")
                interrompa
        senao
             se (x7 = "X") e (x5 = "X") e (x3 = "X") entao
                escreva("Parabéns, Player 1 Ganhou!")
                interrompa
        senao
             se (x7 = "O") e (x5 = "O") e (x3 = "O") entao
                escreva("Parabéns, Player 2 Ganhou!")
                interrompa
        fimse
        fimse
        fimse
        fimse

        escreval("  ",x1,form_2,x2,form_3,x3)
        escreval(form_1)
        escreval("  ",x4,form_2,x5,form_3,x6)
        escreval(form_1)
        escreval("  ",x7,form_2,x8,form_3,x9)

        escreval()
        escreval("Deseja jogar onde?")
        leia(j6)

        escolha j6
                caso "1"
                     x1 <- op2
                caso "2"
                     x2 <- op2
                caso "3"
                     x3 <- op2
                caso "4"
                     x4 <- op2
                caso "5"
                     x5 <- op2
                caso "6"
                     x6 <- op2
                caso "7"
                     x7 <- op2
                caso "8"
                     x8 <- op2
                caso "9"
                     x9 <- op2
        fimescolha

        limpatela
        
        // leitura de ganhador horizontalmente
        se (x1 = "X") e (x2 = "X") e (x3 = "X") entao
           escreva("Parabéns, Player 1 Ganhou!")
           interrompa
        senao
             se (x1 = "O") e (x2 = "O") e (x3 = "O") entao
                escreva("Parabéns, Player 2 Ganhou!")
                interrompa
        senao
             se (x4 = "X") e (x5 = "X") e (x6 = "X") entao
                escreva("Parabéns, Player 1 Ganhou!")
                interrompa
        senao
             se (x4 = "O") e (x5 = "O") e (x6 = "O") entao
                escreva("Parabéns, Player 2 Ganhou!")
                interrompa
        senao
             se (x7 = "X") e (x8 = "X") e (x9 = "X") entao
                escreva("Parabéns, Player 1 Ganhou!")
                interrompa
        senao
             se (x7 = "O") e (x8 = "O") e (x9 = "O") entao
                escreva("Parabéns, Player 2 Ganhou!")
                interrompa
        fimse
        fimse
        fimse
        fimse
        fimse
        fimse

        // leitura de ganhador verticalmente
        se (x1 = "X") e (x4 = "X") e (x7 = "X") entao
           escreva("Parabéns, Player 1 Ganhou!")
           interrompa
        senao
             se (x1 = "O") e (x4 = "O") e (x7 = "O") entao
                escreva("Parabéns, Player 2 Ganhou!")
                interrompa
        senao
             se (x2 = "X") e (x5 = "X") e (x8 = "X") entao
                escreva("Parabéns, Player 1 Ganhou!")
                interrompa
        senao
             se (x2 = "O") e (x5 = "O") e (x8 = "O") entao
                escreva("Parabéns, Player 2 Ganhou!")
                interrompa
        senao
             se (x3 = "X") e (x6 = "X") e (x9 = "X") entao
                escreva("Parabéns, Player 1 Ganhou!")
                interrompa
        senao
             se (x3 = "O") e (x6 = "O") e (x9 = "O") entao
                escreva("Parabéns, Player 2 Ganhou!")
                interrompa
        fimse
        fimse
        fimse
        fimse
        fimse
        fimse

        // leitura de ganhador diagonal
        se (x1 = "X") e (x5 = "X") e (x9 = "X") entao
           escreva("Parabéns, Player 1 Ganhou!")
           interrompa
        senao
             se (x1 = "O") e (x5 = "O") e (x9 = "O") entao
                escreva("Parabéns, Player 2 Ganhou!")
                interrompa
        senao
             se (x7 = "X") e (x5 = "X") e (x3 = "X") entao
                escreva("Parabéns, Player 1 Ganhou!")
                interrompa
        senao
             se (x7 = "O") e (x5 = "O") e (x3 = "O") entao
                escreva("Parabéns, Player 2 Ganhou!")
                interrompa
        fimse
        fimse
        fimse
        fimse
        
        escreval("  ",x1,form_2,x2,form_3,x3)
        escreval(form_1)
        escreval("  ",x4,form_2,x5,form_3,x6)
        escreval(form_1)
        escreval("  ",x7,form_2,x8,form_3,x9)

        escreval()
        escreval("Deseja jogar onde?")
        leia(j7)

        escolha j7
                caso "1"
                     x1 <- op1
                caso "2"
                     x2 <- op1
                caso "3"
                     x3 <- op1
                caso "4"
                     x4 <- op1
                caso "5"
                     x5 <- op1
                caso "6"
                     x6 <- op1
                caso "7"
                     x7 <- op1
                caso "8"
                     x8 <- op1
                caso "9"
                     x9 <- op1
        fimescolha

        limpatela
        
        // leitura de ganhador horizontalmente
        se (x1 = "X") e (x2 = "X") e (x3 = "X") entao
           escreva("Parabéns, Player 1 Ganhou!")
           interrompa
        senao
             se (x1 = "O") e (x2 = "O") e (x3 = "O") entao
                escreva("Parabéns, Player 2 Ganhou!")
                interrompa
        senao
             se (x4 = "X") e (x5 = "X") e (x6 = "X") entao
                escreva("Parabéns, Player 1 Ganhou!")
                interrompa
        senao
             se (x4 = "O") e (x5 = "O") e (x6 = "O") entao
                escreva("Parabéns, Player 2 Ganhou!")
                interrompa
        senao
             se (x7 = "X") e (x8 = "X") e (x9 = "X") entao
                escreva("Parabéns, Player 1 Ganhou!")
                interrompa
        senao
             se (x7 = "O") e (x8 = "O") e (x9 = "O") entao
                escreva("Parabéns, Player 2 Ganhou!")
                interrompa
        fimse
        fimse
        fimse
        fimse
        fimse
        fimse

        // leitura de ganhador verticalmente
        se (x1 = "X") e (x4 = "X") e (x7 = "X") entao
           escreva("Parabéns, Player 1 Ganhou!")
           interrompa
        senao
             se (x1 = "O") e (x4 = "O") e (x7 = "O") entao
                escreva("Parabéns, Player 2 Ganhou!")
                interrompa
        senao
             se (x2 = "X") e (x5 = "X") e (x8 = "X") entao
                escreva("Parabéns, Player 1 Ganhou!")
                interrompa
        senao
             se (x2 = "O") e (x5 = "O") e (x8 = "O") entao
                escreva("Parabéns, Player 2 Ganhou!")
                interrompa
        senao
             se (x3 = "X") e (x6 = "X") e (x9 = "X") entao
                escreva("Parabéns, Player 1 Ganhou!")
                interrompa
        senao
             se (x3 = "O") e (x6 = "O") e (x9 = "O") entao
                escreva("Parabéns, Player 2 Ganhou!")
                interrompa
        fimse
        fimse
        fimse
        fimse
        fimse
        fimse

        // leitura de ganhador diagonal
        se (x1 = "X") e (x5 = "X") e (x9 = "X") entao
           escreva("Parabéns, Player 1 Ganhou!")
           interrompa
        senao
             se (x1 = "O") e (x5 = "O") e (x9 = "O") entao
                escreva("Parabéns, Player 2 Ganhou!")
                interrompa
        senao
             se (x7 = "X") e (x5 = "X") e (x3 = "X") entao
                escreva("Parabéns, Player 1 Ganhou!")
                interrompa
        senao
             se (x7 = "O") e (x5 = "O") e (x3 = "O") entao
                escreva("Parabéns, Player 2 Ganhou!")
                interrompa
        fimse
        fimse
        fimse
        fimse

        escreval("  ",x1,form_2,x2,form_3,x3)
        escreval(form_1)
        escreval("  ",x4,form_2,x5,form_3,x6)
        escreval(form_1)
        escreval("  ",x7,form_2,x8,form_3,x9)

        escreval()
        escreval("Deseja jogar onde?")
        leia(j8)

        escolha j8
                caso "1"
                     x1 <- op2
                caso "2"
                     x2 <- op2
                caso "3"
                     x3 <- op2
                caso "4"
                     x4 <- op2
                caso "5"
                     x5 <- op2
                caso "6"
                     x6 <- op2
                caso "7"
                     x7 <- op2
                caso "8"
                     x8 <- op2
                caso "9"
                     x9 <- op2
        fimescolha

        limpatela
        
        // leitura de ganhador horizontalmente
        se (x1 = "X") e (x2 = "X") e (x3 = "X") entao
           escreva("Parabéns, Player 1 Ganhou!")
           interrompa
        senao
             se (x1 = "O") e (x2 = "O") e (x3 = "O") entao
                escreva("Parabéns, Player 2 Ganhou!")
                interrompa
        senao
             se (x4 = "X") e (x5 = "X") e (x6 = "X") entao
                escreva("Parabéns, Player 1 Ganhou!")
                interrompa
        senao
             se (x4 = "O") e (x5 = "O") e (x6 = "O") entao
                escreva("Parabéns, Player 2 Ganhou!")
                interrompa
        senao
             se (x7 = "X") e (x8 = "X") e (x9 = "X") entao
                escreva("Parabéns, Player 1 Ganhou!")
                interrompa
        senao
             se (x7 = "O") e (x8 = "O") e (x9 = "O") entao
                escreva("Parabéns, Player 2 Ganhou!")
                interrompa
        fimse
        fimse
        fimse
        fimse
        fimse
        fimse

        // leitura de ganhador verticalmente
        se (x1 = "X") e (x4 = "X") e (x7 = "X") entao
           escreva("Parabéns, Player 1 Ganhou!")
           interrompa
        senao
             se (x1 = "O") e (x4 = "O") e (x7 = "O") entao
                escreva("Parabéns, Player 2 Ganhou!")
                interrompa
        senao
             se (x2 = "X") e (x5 = "X") e (x8 = "X") entao
                escreva("Parabéns, Player 1 Ganhou!")
                interrompa
        senao
             se (x2 = "O") e (x5 = "O") e (x8 = "O") entao
                escreva("Parabéns, Player 2 Ganhou!")
                interrompa
        senao
             se (x3 = "X") e (x6 = "X") e (x9 = "X") entao
                escreva("Parabéns, Player 1 Ganhou!")
                interrompa
        senao
             se (x3 = "O") e (x6 = "O") e (x9 = "O") entao
                escreva("Parabéns, Player 2 Ganhou!")
                interrompa
        fimse
        fimse
        fimse
        fimse
        fimse
        fimse

        // leitura de ganhador diagonal
        se (x1 = "X") e (x5 = "X") e (x9 = "X") entao
           escreva("Parabéns, Player 1 Ganhou!")
           interrompa
        senao
             se (x1 = "O") e (x5 = "O") e (x9 = "O") entao
                escreva("Parabéns, Player 2 Ganhou!")
                interrompa
        senao
             se (x7 = "X") e (x5 = "X") e (x3 = "X") entao
                escreva("Parabéns, Player 1 Ganhou!")
                interrompa
        senao
             se (x7 = "O") e (x5 = "O") e (x3 = "O") entao
                escreva("Parabéns, Player 2 Ganhou!")
                interrompa
        fimse
        fimse
        fimse
        fimse
        
        escreval("  ",x1,form_2,x2,form_3,x3)
        escreval(form_1)
        escreval("  ",x4,form_2,x5,form_3,x6)
        escreval(form_1)
        escreval("  ",x7,form_2,x8,form_3,x9)

        escreval()
        escreval("Deseja jogar onde?")
        leia(j9)

        escolha j9
                caso "1"
                     x1 <- op2
                caso "2"
                     x2 <- op2
                caso "3"
                     x3 <- op2
                caso "4"
                     x4 <- op2
                caso "5"
                     x5 <- op2
                caso "6"
                     x6 <- op2
                caso "7"
                     x7 <- op2
                caso "8"
                     x8 <- op2
                caso "9"
                     x9 <- op2
        fimescolha
        
        limpatela
        
        // leitura de ganhador horizontalmente
        se (x1 = "X") e (x2 = "X") e (x3 = "X") entao
           escreva("Parabéns, Player 1 Ganhou!")
           interrompa
        senao
             se (x1 = "O") e (x2 = "O") e (x3 = "O") entao
                escreva("Parabéns, Player 2 Ganhou!")
                interrompa
        senao
             se (x4 = "X") e (x5 = "X") e (x6 = "X") entao
                escreva("Parabéns, Player 1 Ganhou!")
                interrompa
        senao
             se (x4 = "O") e (x5 = "O") e (x6 = "O") entao
                escreva("Parabéns, Player 2 Ganhou!")
                interrompa
        senao
             se (x7 = "X") e (x8 = "X") e (x9 = "X") entao
                escreva("Parabéns, Player 1 Ganhou!")
                interrompa
        senao
             se (x7 = "O") e (x8 = "O") e (x9 = "O") entao
                escreva("Parabéns, Player 2 Ganhou!")
                interrompa
        fimse
        fimse
        fimse
        fimse
        fimse
        fimse

        // leitura de ganhador verticalmente
        se (x1 = "X") e (x4 = "X") e (x7 = "X") entao
           escreva("Parabéns, Player 1 Ganhou!")
           interrompa
        senao
             se (x1 = "O") e (x4 = "O") e (x7 = "O") entao
                escreva("Parabéns, Player 2 Ganhou!")
                interrompa
        senao
             se (x2 = "X") e (x5 = "X") e (x8 = "X") entao
                escreva("Parabéns, Player 1 Ganhou!")
                interrompa
        senao
             se (x2 = "O") e (x5 = "O") e (x8 = "O") entao
                escreva("Parabéns, Player 2 Ganhou!")
                interrompa
        senao
             se (x3 = "X") e (x6 = "X") e (x9 = "X") entao
                escreva("Parabéns, Player 1 Ganhou!")
                interrompa
        senao
             se (x3 = "O") e (x6 = "O") e (x9 = "O") entao
                escreva("Parabéns, Player 2 Ganhou!")
                interrompa
        fimse
        fimse
        fimse
        fimse
        fimse
        fimse

        // leitura de ganhador diagonal
        se (x1 = "X") e (x5 = "X") e (x9 = "X") entao
           escreva("Parabéns, Player 1 Ganhou!")
           interrompa
        senao
             se (x1 = "O") e (x5 = "O") e (x9 = "O") entao
                escreva("Parabéns, Player 2 Ganhou!")
                interrompa
        senao
             se (x7 = "X") e (x5 = "X") e (x3 = "X") entao
                escreva("Parabéns, Player 1 Ganhou!")
                interrompa
        senao
             se (x7 = "O") e (x5 = "O") e (x3 = "O") entao
                escreva("Parabéns, Player 2 Ganhou!")
                interrompa
        fimse
        fimse
        fimse
        fimse
        
        escreval("RESULTADO:"
        escreval()
        escreval("  ",x1,form_2,x2,form_3,x3)
        escreval(form_1)
        escreval("  ",x4,form_2,x5,form_3,x6)
        escreval(form_1)
        escreval("  ",x7,form_2,x8,form_3,x9)
Fimalgoritmo