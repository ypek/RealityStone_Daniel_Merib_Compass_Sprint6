
Dado('que esteja na tela de login') do
  @login = Login.new #instanciando o objeto Login
  @login.load #carregando a página
end 

Quando('o usuério preencher os campos {string} e {string}') do |string, string2|
  @login.email.set string #setando o valor do campo email
  @login.password.set string2 #setando o valor do campo password
  @login.submit.click #click no botão submit 
end

Então('mensagem é exibida {string}') do |string|
  expect(@login).to have_content string   #verificando se a mensagem é exibida
   
end

Quando('o usuário preencher campo {string} e NÃO preencher campo {string}') do |string, string2|
  @login.email.set string #setando o valor do campo email
  @login.submit.click #click no botão submit
  #@login.password.set string2
   
end


Quando('o usuário preencher campo {string} e {string}') do |string, string2|
  @login.email.set string #setando o valor do campo email
  @login.password.set string2 #setando o valor do campo password
  @login.submit.click #click no botão submit

end