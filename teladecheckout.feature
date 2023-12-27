Feature: tela de checkout
Como cliente da EBAC-SHOP
Quero fazer concluir meu cadastro   
Para finalizar minha compra

#1 – Deve ser cadastrado com todos os dados obrigatórios, marcado com asteriscos
#2 – Não deve permitir campo e-mail com formato inválido. Sistema deve inserir uma mensagem de erro
#3 – Ao tentar cadastrar com campos vazios, deve exibir mensagem de alerta. 

Background:
Given ao entrar na página de cadastro

Scenario: Dados obrigatórios para cadastro
When eu colocar todos os meus dados nos campos marcados com asteriscos
Then devo concluir meu cadastro para finalizar minha compra

Scenario: Emails com formatos inválidos
When eu colocar um email invalido 
Then sistema deve inserir uma mensagem de erro

Scenario: Campos vazios
When eu tentar cadastrar sem escrever em nenhum campo
Then sistema deve exibir uma mensagem de alerta
