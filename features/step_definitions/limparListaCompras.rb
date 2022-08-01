Dado('que tenha adicionado um produto a lista de compras') do
    @login = Login.new #instanciando o objeto Login
    @login.load #carregando a página
    @login.email.set 'normal@normal.com' #setando o valor do campo email para Login normal
    @login.password.set '123' #setando o valor do campo password para Login normal
    @login.submit.click #click no botão submit
    @home = Home.new #instanciando o objeto Home
    @home.PesquisarProdutos.set 'Logitech MX Vertical' #setando o valor do campo PesquisarProdutos
    @home.Pesquisar.click #click no botão Pesquisar
    @home.btn_add_lista.click #click no botão add a lista
  end
  
  Quando('clicar em limpar a lista') do
    @ListaProdutos = ListaProdutos.new #instanciando o objeto ListaProdutos
    @ListaProdutos.btn_limpa_lsita.click #click no botão limpar lista
  end
  
  Então('deve exibir a mensagem {string}') do |string|
    expect(@home).to have_content string #verificando se a mensagem é exibida
  end