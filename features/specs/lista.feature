#language: pt
@AllTests
@AddProduto
Funcionalidade: Adiconar produto a lista de compra
    Como usuário do e-commerce Front - ServeRest
    Quero Adiconar um produto a lista de compra
    Para Personalizar minhas compras


    Cenário: Adicionar produto a lista de compra
    Dado que eu tenho um usuário cadastrado
    Quando clicar em adicionar a lista
    Então devo ver uma lista de compras com o produto "Logitech MX Vertical" adicionado




