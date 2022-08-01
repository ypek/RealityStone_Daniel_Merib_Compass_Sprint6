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

#Reaproveitamento de codigo
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



