m8-us02.feature
#language: pt

Funcionalidade: Login na plataforma 
Como cliente da EBAC-SHOP 
Quero fazer o login na plataforma   
Para visualizar meus pedidos 

Contexto:
Dado que eu acesse a página de autenticação

Cenário: Autenticação válida
Quando eu digitar "joao@teste.com"
E a senha "senha@123"
Então deve exibir a mensagem "Checkout realizado!"

Cenário: Usuário inválido
Quando eu digitar "abcdef@teste.com"
E a senha "senha@123"
Então deve exibir a mensagem "Usuário ou senha inválidos!"

Cenário:  Autenticar multiplos usuários
            Quando eu digitar <usuario>
            E a <senha>
            Então deve exibir a <mensagem>

            Exemplos:
            | usuario          | senha       | mensagem              |
            | "joao@teste.com" | "senha@123" | "Checkout realizado!" |
            | "maria@teste.com"| "senha@123" | "Checkout realizado!" |
            | "caio@teste.com" | "senha@123" | "Checkout realizado!" |
            | "Pedro@teste.com"| "senha@123" | "Checkout realizado!" |