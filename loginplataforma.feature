Feature: Login na plataforma
    Como cliente da EBAC-SHOP
    Quero fazer o login (autenticação) na plataforma
    Para visualizar meus pedidos

    # 1 – Ao inserir dados válidos deve ser direcionado para a tela de checkout
    # 2 – Ao inserir um dos campos inválidos deve exibir uma mensagem de alerta “Usuário ou senha inválidos”

    Background:
        Given ao entrar na página de login da plataforma

    Scenario: Autenticação válida
        When eu digitar o usuario 'exemplo@ebac.com'
        And a senha 'exemplo@123'
        Then devo ser direcionado para a tela de checkout

    Scenario Outline: Autenticação Inválida
        When eu digitar o <usuario>
        E a <senha>
        Then deve exibir uma <mensagem> de alerta

        Examples:
            | usuario          | senha       | mensagem                   |
            | XXXXX@ebac.com   | exemplo@123 | Usuário ou senha inválidos |
            | exemplo@ebac.com | XXXXX@123   | Usuário ou senha inválidos |