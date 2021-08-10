#language: pt

Funcionalidade: Login
    Sendo um usuário cadastrado
    Quero acessar o sistema da Rocklov
    Para que eu possa anunciar meus equipamentos musicais

    @login
    Cenario: Login do usuário

        Dado que acesso a página principal
        Quando submeto minhas credenciais com "dieff.cruz@gmail.com" e "1234"
        Então sou redirecionado para o Dashboard

    Esquema do Cenario: Tentiva de login 

        Dado que acesso a página principal
        Quando submeto minhas credenciais com "<email_input>" e "<senha_input>"
        Então vejo a mensagem de alerta: "<mensagem_output>"

        Exemplos:
        |email_input          |senha_input |mensagem_output                 |
        |dieff.cruz@gmail.com |12345       |Usuário e/ou senha inválidos.   |
        |dieffe.cruz@gmail.com|1234        |Usuário e/ou senha inválidos.   |
        |dieff.cruz#gmail.com |1234        |Oops. Informe um email válido!  |
        |                     |1234        |Oops. Informe um email válido!  |
        |dieff.cruz@gmail.com |            |Oops. Informe sua senha secreta!|