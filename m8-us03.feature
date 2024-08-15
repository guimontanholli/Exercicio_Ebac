            #language: pt

            Funcionalidade: Tela de cadastro
            Como cliente da EBAC-SHOP
            Quero concluir meu cadastro
            Para finalizar minha compra

            Contexto:
            Dado que eu acesse a página de Checkout

            Cenário: Cadastro válido
            Quando eu digitar "João"
            E digitar "Silva"
            E digitar "Brasil"
            E digitar "Rua 1"
            E digitar "Osasco"
            E digitar "00000-123"
            E digitar "11 91234-0000"
            E digitar "joao.silva@teste.com"
            Então ao finalizar compra apresentar mensagem "Cadastro ok!"

            Cenário: email inválido
            Quando eu digitar "João"
            E digitar "Silva"
            E digitar "Brasil"
            E digitar "Rua 1"
            E digitar "Osasco"
            E digitar "00000-123"
            E digitar "11 91234-0000"
            E digitar "joao.silva.com"
            Então ao finalizar compra apresentar mensagem "E-mail inválido!"

            Cenário: Cadastro sem dados
            Quando eu digitar "João"
            E digitar "Silva"
            E digitar "Brasil"
            E digitar "Osasco"
            E digitar "00000-123"
            E digitar "joao.silva@teste.com"
            Então ao finalizar compra apresentar mensagem "Cadastro incompleto!"

            Cenário: Cadastro multiplos
            Quando eu preencher o dado <Nome>
            E dado <Sobrenome>
            E dado <Pais>
            E dado <Endereco>
            E dado <Cidade>
            E dado <CEP>
            E dado <Telefone>
            E dado <email>
            Então ao finalizar compra apresentar <mensagem>

            Exemplos:
            | "João" | "Silva" | "Brasil" | "Rua 1" | "Osasco" | "00000-123" | "11 91234-0000" | "joao.silva@teste.com" | "Cadastro ok!"         |
            | "João" | "Silva" | "Brasil" | "Rua 1" | "Osasco" | "00000-123" | "11 91234-0000" | "joao.silva.com"       | "E-mail inválido!"     |
            | "João" | "Silva" | "Brasil" | "Rua 1" | "Osasco" | "00000-123" | "11 91234-0000" | "joao.silva@teste.com" | "Cadastro ok!"         |
            | "João" | "Silva" | "Brasil" | " "     | "Osasco" | "00000-123" | " "             | "joao.silva@teste.com" | "Cadastro incompleto!" |



