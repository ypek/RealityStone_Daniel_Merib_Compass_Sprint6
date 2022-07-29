Dado('que esteja na tela de cadastro para administrador') do
    @cadastroAdm = CadastroAdm.new #instanciando o objeto CadastroProduto
    @cadastroAdm.load #carregando a página
  end

  Quando('o administrador preencher os campos {string}, {string} e {string}') do |string, string2, string3|
    @cadastroAdm.name.set string #setando o valor do campo name
    @cadastroAdm.email.set string2 #setando o valor do campo email
    @cadastroAdm.password.set string3 #setando o valor do campo password
    @cadastroAdm.checkbox.click #click no checkbox 'cadastrar como administrador'
    find('button[type="submit"]').click #click no botão submit
  end

    Então('a mensagem é exibida {string}') do |string|
        expect(@cadastroAdm).to have_content string #verificando se a mensagem é exibida
        end

  
