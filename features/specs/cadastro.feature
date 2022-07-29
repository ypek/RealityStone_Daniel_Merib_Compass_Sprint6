#language: pt
@AllTests
@Cadastro
Funcionalidade: Cadastro de usuário
    Como usuário do e-commerce Front - ServeRest
    Quero realizar cadastro 
    Para logar na aplicação

    Contexto: 
        Dado que esteja na tela de cadastro

    Esquema do Cenário: Validar o cadastro de usuários
        Quando o usuário preencher os campos "<Digite seu nome>", "<Digite seu email>" e "<Digite sua senha>"
        Então a mensagem  é exibida "<msg>"
        Exemplos:
        |Digite seu nome |Digite seu email          |Digite sua senha |msg                                                  |
        |                |nanate1044@kahase.com     |@Teste123        |Nome não pode ficar em branco                        |
        |Pedro           |                          |@Teste123        |Email é obrigatório                                  |
        |Pedro           |nanate1044@kahase         |@Teste123        |Email deve ser um email válido                       |
        |Pedro           |nanate1044@kahase.com     |                 |Password não pode ficar em branco                    |
        |Pedro           |nanate1044@kahase.com     |@Teste123        |Já é cadastrado?Entrar                               |
        |rodrigofaro     |dancagatinho@cavalo.com   |123              |Este email já está sendo usado                       |

    Cenário: Registrado com Sucesso
    Quando o usuário preencher os campos "<Digite seu nome>" e "<Digite sua senha>" e Digite sua senha
        Então a mensagem de cadastro com sucesso é exibida "<msg>"
        Exemplos:
        |Digite seu nome           |Digite sua senha |msg                                                  |
        |Cavaluuu                  |@Teste123        |Cadastro realizado com sucesso                       |

    
    
