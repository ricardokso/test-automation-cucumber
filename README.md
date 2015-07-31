# pratical-test-qa - Ricardo Kriegler de Souza - 19/05/2015

Projeto de Automação de Testes


Criação de Projeto de Testes Automatizados - BDD com cucumber

O objetivo é criar um projeto de automação versionado no Github (https://github.com/), utilizando Cucumber, Capybara e HTTParty para automatizar cenários para as duas Features abaixo:

1 - No site do walmart.com.br, validar a seguinte sequência de ações:

  *   Procurar pelo termo "tv" na busca
  *   Validar que a busca teve resultados
  *   Clicar em um dos resultados e validar que a página do produto abriu corretamente
  *   Adicionar o Produto ao carrinho
  *   Abrir o carrinho e validar que o mesmo foi adicionado com sucesso

2 - Os correios possuem uma API pública, que dado um determinado CEP, ela te retorna as informações do mesmo. O modelo da chamada é o seguinte:

GET na url http://cep.correiocontrol.com.br/$CEP_A_SER_TESTADO.json - substitua $CEP_A_SER_TESTADO pelo cep que desejar validar.

Exemplo:

GET - http://cep.correiocontrol.com.br/13040089.json

Resposta:

{

    bairro: "Jardim Nova Europa",

    logradouro: "Rua Manoel Sylvestre de Freitas Filho",

    cep: "13040089",

    uf: "SP",

    localidade: "Campinas"

}

 A partir das informações acima, implemente cenários de teste que valide uma chamada com um cep válido e outra com cep inválido para essa API (implemente quantos cenários achar interessante, sempre validando o status code HTTP da resposta).

 ps: É importante validar individualmente cada campo do JSON de resposta.
