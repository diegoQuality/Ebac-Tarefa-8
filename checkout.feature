#language: pt

Funcionalidade: Checkout

Contexto: 
Dado que estou na página do Checkout

Cenário: Cadastrar com todos os dados obrigatórios
Quando preencho todos os campos obrigatórios marcados com asterisco
E clico no botão "Finalizar compra"
Então minha compra deve ser finalizada

Cenário: Checkout com e-mail inválido
Quando eu preencher o campo e-mail com algum formato inválido
E clicar em "Finalizar compra"
Então deve aparecer uma mensagem de erro informando que o formato do e-mail está inválido

Cenário: Tentativa de checkout com campos vazios
Quando eu clico em "Finalizar Compra" sem preencher os campos obrigatórios
Então deve aparecer uma mensagem de erro informando que os campos obrigatórios devem ser preenchidos