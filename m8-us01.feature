#language: pt

Funcionalidade: Configurar produto
Como cliente da EBAC-SHOP 
Quero configurar meu produto de acordo com meu tamanho e gosto 
Escolher a quantidade 
Para depois inserir no carrinho 

Contexto:
Dado que eu selecione o produto

Cenário: Selecionar produto válido
Quando eu selecionar a cor "rosa" do produto 
E o tamanho "M" do produto
E a quantidade "5" do produto
Então ao adicionar no carrinho deve exibir a mensagem "Adicionado ao carrinho!"

Cenário: Selecionar produto sem cor
Quando não eu selecionar a cor produto 
E o tamanho "M" do produto
E a quantidade "5" do produto
Então ao adicionar no carrinho deve exibir a mensagem "É necessário selecionar a cor do produto."

Cenário: Selecionar produto sem tamanho
Quando eu selecionar a cor "rosa" do produto 
E não selecionar o tamanho do produto
E a quantidade "5" do produto
Então ao adicionar no carrinho deve exibir a mensagem "É necessário selecionar o tamanho do produto."

Cenário: Selecionar produto sem quantidade
Quando eu selecionar a cor "rosa" do produto 
E o tamanho "M" do produto
E a quantidade "0" do produto
Então ao adicionar no carrinho deve exibir a mensagem "É necessário selecionar a quantidade do produto."

Cenário: Selecionar quantidade inválida
Quando eu selecionar a cor "rosa" do produto 
E o tamanho "M" do produto
E a quantidade "11" do produto
Então Então ao adicionar no carrinho deve exibir a mensagem "A quantidade máxima de produtos deve ser 10, não adicionado ao carrinho!"

Cenário: Limpando produtos 
Quando eu selecionar a cor "rosa" do produto 
E o tamanho "M" do produto
E a quantidade "5" do produto
Então clicar no botão "Limpar" deve apagar o tamanho e a cor e a quantidade

Cenário: Validação de produtos
Quando eu selecionar <cor>
E <tamanho>
E <quantidade>
Então ao adicionar no carrinho deve exibir a <mensagem>

Exemplos:
            | "Rosa" | "M" | "1"  | "Adicionado ao carrinho!"                                                  |
            | "Azul" | "M" | "5"  | "Adicionado ao carrinho!"                                                  |
            | "Rosa" | "P" | "1"  | "Adicionado ao carrinho!"                                                  |
            | "Azul" | "P" | "10" | "Adicionado ao carrinho!"                                                  |
            | "Rosa" | "M" | "11" | "A quantidade máxima de produtos deve ser 10, não adicionado ao carrinho!" |
            | "Rosa" | "p" | "12" | "A quantidade máxima de produtos deve ser 10, não adicionado ao carrinho!" |
            | "    " | "P" | "10" | "É necessário selecionar a cor do produto."                                |
            | "Rosa" | " " | "10" | "É necessário selecionar o tamanho do produto."                            |
            | "Rosa" | "P" | "0"  | "É necessário selecionar a quantidade do produto."                         |
