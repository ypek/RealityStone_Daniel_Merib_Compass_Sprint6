  
  Dado('logado como administrador') do
    @login = Login.new #instanciando o objeto Login
    @login.load #carregando a página
    @login.email.set 'adm@adm.com' #setando conta de administrador EMAIL
    @login.password.set '123' #setando senha de administrador PASSWORD
    @login.submit.click #click no botão submit
    @cadastroProduto = CadastroProduto.new #instanciando o objeto CadastroProduto 
    @cadastroProduto.btn_entrar_cadastro.click #click no botão entrar no cadastro
  end

  Dado('que esteja na tela de cadastro de produtos') do
    @cadastroProduto = CadastroProduto.new #instanciando o objeto CadastroProduto
    end
  
  Quando('o usuário preencher os campos {string}, {string}, {string} e {string}') do |string, string2, string3, string4|
    @cadastroProduto.name.set string #setando o valor do campo name
    @cadastroProduto.price.set string2 #setando o valor do campo price
    @cadastroProduto.description.set string3 #setando o valor do campo description
    @cadastroProduto.quantity.set string4 #setando o valor do campo quantity
    @cadastroProduto.btn_cadastrar.click #click no botão cadastrar
  end

  Então('o Sistema Exibe a {string}') do |string|
    expect(@cadastroProduto).to have_content string #verificando se a mensagem é exibida
  end

  Quando('o usuário preencher os campos {string}, {string} e {string} Corretamente') do |string, string2, string3|
    @GenerateLogin = GenerateLogin.new #instanciando o objeto GenerateLogin
    @cadastroProduto.name.set @GenerateLogin.generate_product_name #Gerando produto NOME
    @cadastroProduto.price.set string #setando o valor do campo price
    @cadastroProduto.description.set string2 #setando o valor do campo description
    @cadastroProduto.quantity.set string3 #setando o valor do campo quantity
    @cadastroProduto.btn_cadastrar.click #click no botão cadastrar
  end