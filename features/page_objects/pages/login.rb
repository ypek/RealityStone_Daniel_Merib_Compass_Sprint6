class Login < SitePrism::Page
    set_url'/login' #setando a url da página
    element :email, '#email' #elemento que contém o campo email
    element :password, '#password' #elemento que contém o campo password
    element :submit, 'button[type="submit"]' #elemento que contém o botão submit
end