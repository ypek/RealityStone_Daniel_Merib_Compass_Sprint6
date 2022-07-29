Dado('que eu tenho um usuário cadastrado') do
    @login = Login.new #instanciando o objeto Login
    @login.load #carregando a página
    @login.email.set 'normal@normal.com' #setando o valor do campo email para Login normal
    @login.password.set '123' #setando o valor do campo password para Login normal 
  end
  
  Quando('clicar em adicionar a lista') do
    @home = Home.new #instanciando o objeto Home
    @home.btn_add_lista.click #click no botão add a lista
  end
  
  Então('devo ver uma lista de compras com o produto {string} adicionado') do |string|
    expect(@home).to have_content string #verificando se a mensagem é exibida
  end
