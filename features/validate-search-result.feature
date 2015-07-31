Feature: Validate search result
	In order to test search result
	As a user
	I want to search product in the Walmart website

	Scenario: Search a TV product
		Given I am on the Walmart homepage
		Then I will search for "tv"
        And I will click button Procurar
		Then I expect see "Samsung 40H5100 Full HD Função Futebol ConnectShare Movie"
		And I will click the TV link
        And I will click button Adicionar ao carrinho
        And I will click button Continuar
        And I will click Meu carrinho
        Then I expect see "Samsung 40H5100 Full HD Função Futebol ConnectShare Movie"
