#language: pt

Funcionalidade: Remover Anúncios
    Sendo um anúnciante que possui um equipamento indesejado
    Quero poder remover esse anúncio
    Para que eu possa manter o meu Dashboard atualizado

    Contexto: Login
        * Login com "spider@gmail.com" e "1234"

    @remover_anuncio
    Cenario: Remover um anúncio

        Dado que eu tenho o seguinte anúncio indesejado:
            | thumb     | telecaster.jpg |
            | nome      | Telecaster     |
            | categoria | Cordas         |
            | preco     | 50             |
        Quando eu solicito a exlusão desse anúncio
            E confirmo a exclusão
        Então não devo ver esse anúncio no meu Dashboard

    @desistir_exclusao
    Cenario: Desistir exclusão

        Dado que eu tenho o seguinte anúncio indesejado:
            | thumb     | telecaster.jpg |
            | nome      | Telecaster     |
            | categoria | Cordas         |
            | preco     | 50             |
        Quando eu solicito a exlusão desse anúncio
            Mas não confirmo a exclusão
        Então esse item deve permanecer no meu Dashboard