#language: pt
@AllTests
@CadastroProduto
Funcionalidade: Cadastrar um novo produto
    Como administrador do e-commerce Front - ServeRest
    Quero cadastrar um novo produto 
    Para os usuários poderem comprar

    Contexto: 
        Dado que esteja na tela de cadastro de produtos
        E logado como administrador

    Esquema do Cenário: Validar o cadastro de um novo produto
        Quando o usuário preencher os campos "<Nome:>", "<Preço:>", "<Descrição:>" e "<Quantidade:>"
        Então o Sistema Exibe a '<msg:>'
        Exemplos:
        |Nome:          |Preço:         |Descrição:                       |Quantidade:            |msg:                                                                              |
        |               |300            |Tira fotos com alta qualidade    |1000                   |Nome não pode ficar em branco                                                     |
        |Câmera         |               |Tira fotos com alta qualidade    |1000                   |Preco é obrigatório                                                               |
        |Câmera         |300            |                                 |1000                   |Descricao não pode ficar em branco                                                |
        |Câmera         |300            |Tira fotos com alta qualidade    |                       |Quantidade é obrigatório                                                          |
        |Câmera         |300            |Tira fotos com alta qualidade    |1000                   |Já existe produto com esse nome                                                   |

        Cenário: Cadastrar Produto com Sucesso
        Dado que esteja na tela de cadastro de produtos
        E logado como administrador
        Quando o usuário preencher os campos "<Preço:>", "<Descrição:>" e "<Quantidade:>" Corretamente
        Então o Sistema Exibe a '<msg:>'
        Exemplos:
        |Preço:         |Descrição:                       |Quantidade:            |msg:                          |
        |300            |Tira fotos com alta qualidade    |1000                   |Lista dos Produtos            |
