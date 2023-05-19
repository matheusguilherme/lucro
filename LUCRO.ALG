Algoritmo "lucro"
// 
//  
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 18/05/2023
Var

  lucro, porcentagem,totalCOMPRA,totalVENDA, lucroTOTAL : real
  n,i,abaixo,entre,acima : inteiro
  nome: vetor[0..99] de caractere
  precoC : vetor[0..99] de real
  precoV : vetor[0..99] de real
Inicio

    escreva ("Quantos produtos serão catalogados? ")
    leia(n)
    
    
    para i de 0 ate n-1 faca
     escreval ("PRODUTO ", i+1)
     escreva (" NOME: ")
     leia(nome[i])
     escreva ("Preço de compra: ")
     leia(precoC[i])
     escreva ("Preço de venda: ")
     leia(precoV[i])
    fimpara
    
 lucro <- 0
 porcentagem <- 0
 abaixo <- 0
 entre <- 0
 acima <- 0
 totalCOMPRA <- 0
 totalVENDA  <- 0
 lucroTOTAL <- 0
 para i de 0 ate n-1 faca

    totalCOMPRA <- totalCOMPRA + precoC[i]
    totalVENDA <- totalVENDA + precoV[i]
    lucro <- precoV[i] - precoC[i]
    lucroTOTAL <- lucroTOTAL + lucro
    porcentagem <- (lucro * 100) / precoC[i]
    se porcentagem < 10 entao
      abaixo <- abaixo + 1
    senao
      se (porcentagem >= 10) e (porcentagem <= 20) entao
         entre <- entre + 1
       senao
         se porcentagem > 20 entao
          acima <- acima + 1
         fimse
       fimse
    fimse
    
    escreval ("Lucro abaixo de 10% = ",abaixo)
    escreval ("Lucro entre 10% e 20% = ",entre)
    escreval ("Lucro acima de 20% = ", acima)
    escreval ("O valor total de compra foi = ", totalCOMPRA:3:2)
    escreval ("O valor total de venda foi = ", totalVENDA:3:2)
    escreval ("O lucro total foi de: ", lucroTOTAL:1:2)
 fimpara

Fimalgoritmo