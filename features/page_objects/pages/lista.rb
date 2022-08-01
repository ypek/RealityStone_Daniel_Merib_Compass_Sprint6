class ListaProdutos < SitePrism::Page
    set_url '/minhaListaDeProdutos' #setando a url da página
    element :btn_limpa_lsita, '#root > div > div > div > button' #elemento que contém o botão limpar lista
end