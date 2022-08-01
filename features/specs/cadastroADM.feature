#language: pt
@AllTests
@CadastroAdm
Funcionalidade: Cadastro de administrador
    Como administrador do e-commerce Front - ServeRest
    Quero realizar cadastro 
    Para logar na aplicação

    Contexto: 
        Dado que esteja na tela de cadastro para administrador

    Esquema do Cenário: Validar o cadastro de administrador
        Quando o administrador preencher os campos "<Digite seu nome>", "<Digite seu email>" e "<Digite sua senha>" 
        Então a mensagem é exibida "<msg>"
        Exemplos:
        |Digite seu nome |Digite seu email     |Digite sua senha |msg                                       |
        |                |mariamu38@uorak.com  |@Teste123        |Nome não pode ficar em branco             |
        |Eduardo         |                     |@Teste123        |Email é obrigatório                       |
        |Eduardo         |mariamu38@uorak      |@Teste123        |Email deve ser um email válido            |
        |Eduardo         |mariamu38@uorak.com  |                 |Password não pode ficar em branco         |
        |Luis            |mariamu383@uorak.com |@Teste123        |Este email já está sendo usado            |
    
    