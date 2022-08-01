class CadastroAdm < SitePrism::Page
    set_url '/cadastrarusuarios'   #setando a url da página
    element :name, '#nome' #elemento que contém o campo nome
    element :email, '#email' #elemento que contém o campo email
    element :password, '#password' #elemento que contém o campo password
    element :btn_cadastrar, xpath: '//*[@id="root"]/div/div/form/div[8]/button' #elemento que contém o botão cadastrar
    element :checkbox, '#administrador' #elemento que contém o checkbox cadastrar como administrador
end

class CadastroPessoaAdm < SitePrism::Page 
    set_url '/admin/cadastrarusuarios' #setando a url da página
    element :name, '#nome' #elemento que contém o campo nome
    element :email, '#email' #elemento que contém o campo email
    element :password, '#password' #elemento que contém o campo password
    element :btn_cadastrar_usuario , '#root > div > div > div > form > div:nth-child(7) > div > button' #elemento que contém o botão cadastrar
end