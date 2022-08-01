Dado('que esteja na Home') do
    @home = Home.new #instanciando o objeto Home
    @home.load #carregando a página
    end
    
    Dado('logado na aplicação') do
        @login = Login.new #instanciando o objeto Login
        @login.load #carregando a página
        @login.email.set 'normal@normal.com' #setando o valor do campo email para Login normal
        @login.password.set '123' #setando o valor do campo password para Login normal
        @login.submit.click #click no botão submit
      end

  
  Quando('buscar um produto por nome') do
    @home.PesquisarProdutos.set 'Notebook' #setando o valor do campo PesquisarProdutos
    @home.Pesquisar.click #click no botão Pesquisar
  end
  
  Então('o sistema deve mostrar o produto') do
    expect(@home).to have_xpath('//*[@id="root"]/div/div/div[2]/div/section/div[1]/div/div/a[2]/button') #verificando se a mensagem é exibida
  end
  
  Quando('realizar uma busca pelo produto {string}') do |string|
    @home.PesquisarProdutos.set string #setando o valor do campo PesquisarProdutos
    @home.Pesquisar.click #click no botão Pesquisar
  end
  
  Então('o sistema deve mostrar os produtos existentes') do
    expect(@home).to have_xpath('//*[@id="root"]/div/div/div[2]/div/section/div[1]/div/div/a[2]/button') #verificando se a mensagem é exibida
  end

  Quando('buscar um produto inexistente') do
    @home.PesquisarProdutos.set 'Algo inexistente' #setando o valor do campo PesquisarProdutos
    @home.Pesquisar.click #click no botão Pesquisar
  end
  
  Então('o sistema deve mostrar {string}') do |string|
    expect(@home).to have_content string #verificando se a mensagem é exibida
  end