Feature: configurando produto
Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto
E escolher a quantidade
Para depois inserir no carrinho

#1 – Seleções de cor, tamanho e quantidade devem ser obrigatórios
#2 – Deve permitir apenas 10 produtos por venda
#3 – Quando eu clicar no botão “limpar” deve voltar ao estado original

Background:
Given que eu adicione um produto no carrinho 

Scenario: Cor, tamanho e quantidade obrigatórios
When eu escolher a cor, tamanho e quantidade
Then eu consigo adicionar meu produto no carrinho

Scenario: Quantidade maxima de 10 produtos
When eu adicionar 10 itens no carrinho
Then eu não consigo adicionar mais itens

Scenario: Limpar carrinho
When eu apertar o botão de Limpar
Then meu carrinho deve voltar ao estado original
