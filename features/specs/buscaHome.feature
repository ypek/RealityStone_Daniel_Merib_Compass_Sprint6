#language: pt
@AllTests
@BuscaProduto
Funcionalidade: Busca de produtos por nome
    COMO um usuário do ecommerce front serverest
    QUERO poder buscar produtos por nome
    PARA poder personalizar minhas compras

    Contexto: Estar na Home
    Dado que esteja na Home
    E logado na aplicação

    Cenário: Buscar produto por nome
    Quando buscar um produto por nome
    Então o sistema deve mostrar o produto

    Esquema do Cenário: Buscar por produtos existentes
    Quando realizar uma busca pelo produto "<produto>"
    Então o sistema deve mostrar os produtos existentes

    Exemplos:
    | produto               |
    | Logitech MX Vertical  |
    | Samsung 60 polegadas  |
    | Air Force 1           |


    Cenário: Buscar produto inexistente
    Quando buscar um produto inexistente
    Então o sistema deve mostrar '<msg>'
    
    Exemplos:
    | produto                      | msg                           |
    | Algo inexistente             | Nenhum produto foi encontrado |
    
