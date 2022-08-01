Dado('que esteja na tela de cadastro') do 
    @cadastro = Cadastro.new #Instanciando o objeto CadastroProduto
    @cadastro.load #carregando a página
    end

    Quando('o usuário preencher os campos {string}, {string} e {string}') do |string, string2, string3|
      @cadastro.name.set string #setando o valor do campo name
      @cadastro.email.set string2 #setando o valor do campo email
      @cadastro.password.set string3 #setando o valor do campo password
      find('button[type="submit"]').click #click no botão submit
    end

    Então('a mensagem  é exibida {string}') do |string|
      expect(@cadastro).to have_content string #verificando se a mensagem é exibida
    end

    Quando('o usuário preencher os campos {string} e {string} e Digite sua senha') do |string, string2|
      @GenerateLogin = GenerateLogin.new #instanciando o objeto GenerateLogin
      @cadastro.email.set @GenerateLogin.generate_email #Gerando Email
      @cadastro.password.set string2 #setando o valor do campo password
      @cadastro.name.set string #setando o valor do campo name
      find('button[type="submit"]').click #click no botão submit
    end

    Então('a mensagem de cadastro com sucesso é exibida {string}') do |string|
      expect(@cadastro).to have_content string #verificando se a mensagem é exibida
    end
    

    

