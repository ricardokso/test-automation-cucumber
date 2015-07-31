Feature: Validate Brazil's Zip Code (CEP)
	 In order to validate Brazil Zip Code (CEP)
	 As a tester
	 I want validate Brazil Zip Code (CEP)

	Scenario Outline: Valid Zip Code
		Given I get a Brazil Zip Code <CEP>
		Then the response of Bairro should be "<Bairro>"
		And the response of Logradouro should be "<Logradouro>"
		And the response of UF should be "<UF>"
		And the response of Cidade should be "<Localidade>"

		Scenarios:
		|Bairro		      	|Logradouro	  	|CEP		  	|UF		|Localidade|
		|Vila Uberabinha  |Rua Tuim       |04514102   |SP 	|São Paulo |

	Scenario Outline: Incorrect Bairro
    Given I get a new Brazil zip code <CEP>
		Then the response Bairro should be "<Bairro>"
		And the response Logradouro should be "<Logradouro>"
		And the response UF should be "<UF>"
		And the response Cidade should be "<Localidade>"

    Scenarios:
		|Bairro		      	|Logradouro	  	|CEP		  	|UF		|Localidade|
		|Moema						|Rua Tuim       |04514103   |SP 	|São Paulo |


	Scenario Outline: Incorretc Brazil Zip Code
		Given I get not valid Brazil Zip Code <CEP>
    Then the response should be JSON:

"""
{"bairro": "Vila Uberabinha", "logradouro": "Rua Tuim", "cep": "04514102", "uf": "SP", "localidade": "S\u00e3o Paulo"}

"""

	Scenarios:
		|CEP		|
		|4514102|
