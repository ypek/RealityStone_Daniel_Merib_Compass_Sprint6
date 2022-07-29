#language: pt
@AllTests
@CadastroPessoaAdm
Funcionalidade: Cadastrar uma nova Pessoa
    Como administrador do e-commerce Front - ServeRest
    Quero cadastrar um novo usuário 
    Para logar na aplicação

    Cenário: Cadastrar um novo usuário
    Dado esteja logado como administrador
    Quando acessar a área Cadastrar Usuários
    E preencher todos os dados corretamente
    Então o usuário deve ser cadastrado com sucesso



