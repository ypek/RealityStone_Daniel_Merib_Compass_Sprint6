require 'faker'
class Products < SitePrism::Section
    element :name, 'card-title negrito' #elemento que contém o nome do produto
    element :price, 'card-subtitle mb-2 text-muted' #elemento que contém o preço do produto
end

class Home < SitePrism::Page
    set_url '/' #setando a url da página
    element :PesquisarProdutos, 'input[type="search"]' #elemento que contém o campo PesquisarProdutos
    element :Pesquisar, :xpath, '//*[@id="root"]/div/div/div[1]/div/div[3]/button' #elemento que contém o botão Pesquisar
    element :btn_add_lista, 'button[class="btn btn-primary"]' #elemento que contém botao de add a lista
end

class Login < SitePrism::Page
    set_url'/login' #setando a url da página
    element :email, '#email' #elemento que contém o campo email
    element :password, '#password' #elemento que contém o campo password
    element :submit, 'button[type="submit"]' #elemento que contém o botão submit
end
class ListaProdutos < SitePrism::Page
    set_url '/minhaListaDeProdutos' #setando a url da página
    element :btn_limpa_lsita, '#root > div > div > div > button' #elemento que contém o botão limpar lista

end

class Cadastro < SitePrism::Page
    set_url '/cadastrarusuarios'    #setando a url da página
    element :name, '#nome' #elemento que contém o campo nome
    element :email, '#email' #elemento que contém o campo email
    element :password, '#password' #elemento que contém o campo password
    element :btn_cadastrar, xpath: '//*[@id="root"]/div/div/form/div[8]/button' #elemento que contém o botão cadastrar
end

class CadastroAdm < SitePrism::Page
    set_url '/cadastrarusuarios'   #setando a url da página
    element :name, '#nome' #elemento que contém o campo nome
    element :email, '#email' #elemento que contém o campo email
    element :password, '#password' #elemento que contém o campo password
    element :btn_cadastrar, xpath: '//*[@id="root"]/div/div/form/div[8]/button' #elemento que contém o botão cadastrar
    element :checkbox, '#administrador' #elemento que contém o checkbox cadastrar como administrador
end

class CadastroProduto < SitePrism::Page
    set_url '/admin/cadastrarprodutos'  #setando a url da página
    element :name, '#nome' #elemento que contém o campo nome
    element :description, '#description' #elemento que contém o campo descrição
    element :price, '#price' #elemento que contém o campo preço
    element :quantity, '#quantity' #elemento que contém o campo quantidade
    element :btn_cadastrar, '#root > div > div > div > form > div:nth-child(8) > div > button' #elemento que contém o botão cadastrar
    element :btn_entrar_cadastro, '#root > div > div > p.row > div:nth-child(4) > div > div > a' #elemento que contém o botão entrar cadastro
end

class GenerateLogin < SitePrism::Page
    def generate_email #usando a lib Faker para gerar um email
        Faker::Internet.email
    end
    def generate_product_name #usando a lib Faker para gerar um nome de produto
        Faker::Commerce.product_name
    end
    def generate_name #usando a lib Faker para gerar um nome
        Faker::Name.name
    end
    def generate_password #usando a lib Faker para gerar uma senha
        Faker::Internet.password
    end
end

class CadastroPessoaAdm < SitePrism::Page 
    set_url '/admin/cadastrarusuarios' #setando a url da página
    element :name, '#nome' #elemento que contém o campo nome
    element :email, '#email' #elemento que contém o campo email
    element :password, '#password' #elemento que contém o campo password
    element :btn_cadastrar_usuario , '#root > div > div > div > form > div:nth-child(7) > div > button' #elemento que contém o botão cadastrar
end



