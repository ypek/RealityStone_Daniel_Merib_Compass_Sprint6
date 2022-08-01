Dado('esteja logado como administrador') do
    @login = Login.new #instanciando o objeto Login
    @login.load #carregando a página
    @login.email.set 'adm@adm.com' #setando conta de administrador EMAIL
    @login.password.set '123' #setando senha de administrador PASSWORD
    @login.submit.click #click no botão submit
  end
  
  Quando('acessar a área Cadastrar Usuários') do
    find('#root > div > div > p.row > div:nth-child(2) > div > div > a').click #click no link 'Cadastrar Usuários'
  end
  
  Quando('preencher todos os dados corretamente') do
    @GenerateLogin = GenerateLogin.new #instanciando o objeto GenerateLogin
    @CadastroPessoaAdm = CadastroPessoaAdm.new #instanciando o objeto CadastroProduto
    @CadastroPessoaAdm.name.set @GenerateLogin.generate_name #setando o valor do campo name com um nome aleatório
    @CadastroPessoaAdm.email.set @GenerateLogin.generate_email #setando o valor do campo email com um email aleatório
    @CadastroPessoaAdm.password.set @GenerateLogin.generate_password #setando o valor do campo password com uma senha aleatória
    @CadastroPessoaAdm.btn_cadastrar_usuario.click #click no botão submit
  end
  
  Então('o usuário deve ser cadastrado com sucesso') do
    expect(@CadastroPessoaAdm).to have_content 'Lista dos usuários' #verificando se a mensagem é exibida
  end