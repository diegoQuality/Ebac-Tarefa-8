#language: pt

Funcionalidade: Página do produto

Contexto:
Dado que estou na página do produto

Cenário: Verificar a obrigatoriedade das seleções
Quando tento adicionar um produto sem selecionar sua cor, tamanho e quantidade
Então deve aparecer uma mensagem de erro informando que eu preencha as sessões obrigatórias

Cenário: Limitar a quantidade de produtos por venda
Quando tento adicionar mais de 10 produtos no carrinho
Então deve aparecer uma mensagem de erro informando a quantidade máxima exigida

Cenário: Ao clicar em "Limpar" o carrinho deve voltar ao estado inicial
Quando eu clicar no botão LimparEntão 
Então todas as sessões de cor, tamanho e quantidade devem retomar ao estado inicial