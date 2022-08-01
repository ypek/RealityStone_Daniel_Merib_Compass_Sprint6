#language: pt
@AllTests
@removeProductList
Funcionalidade: Limpar lista de compras de um usuário

    Cenário: Limpar lista de compras
    Dado que tenha adicionado um produto a lista de compras
    Quando clicar em limpar a lista
    Então deve exibir a mensagem 'Seu carrinho está vazio'