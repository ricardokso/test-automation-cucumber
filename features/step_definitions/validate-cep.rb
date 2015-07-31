#Com o CEP valido
Given(/^I get a Brazil Zip Code (\d+)$/) do |cep|

	begin

 		@response = HTTParty.get("http://cep.correiocontrol.com.br/"+ cep +".json")

	  rescue StandardError => exception

			puts "Erro: #{exception}"

	end

end

# Com o CEP valido, todos os campos do JSON validados


	 Then(/^the response of Bairro should be "([^"]*)"$/) do |bairro|

	 		if @response.code.should == 200

  			@response['bairro'].should == bairro

			else

				"Problema no acesso da API"

			end
		end

		Then(/^the response of Logradouro should be "([^"]*)"$/) do |logradouro|
    	@response['logradouro'].should == logradouro
		end

		Then(/^the response of UF should be "([^"]*)"$/) do |uf|
  	@response['uf'].should == uf
		end

		Then(/^the response of Cidade should be "([^"]*)"$/) do |localidade|
    @response['localidade'].should == localidade
		end


#Validando campos, bairro incorreto

Given(/^I get a new Brazil zip code (\d+)$/) do |cep|

begin

 		@response = HTTParty.get("http://cep.correiocontrol.com.br/"+ cep +".json")

	  rescue StandardError => exception

			puts "Erro: #{exception}"

	end

end

Then(/^the response Bairro should be "([^"]*)"$/) do |bairro|

	 if @response.code.should == 200

		 @response['bairro'].should == bairro

	 else

		 "Problema no acesso da API"
	 end
end

 Then(/^the response Logradouro should be "([^"]*)"$/) do |logradouro|

 	 @response['logradouro'].should == logradouro
 end

 Then(/^the response UF should be "([^"]*)"$/) do |uf|
 @response['uf'].should == uf
 end

 Then(/^the response Cidade should be "([^"]*)"$/) do |localidade|
 @response['localidade'].should == localidade
 end



#CEP invalido

Given(/^I get not valid Brazil Zip Code (\d+)$/) do |cep|

    begin

 		@response = HTTParty.get("http://cep.correiocontrol.com.br/"+ cep +".json")

	  rescue StandardError => exception

			puts "Erro: #{exception}"

	end

end

Then(/^the response should be JSON:$/) do |json|

	if

	 @response.code.should == 200


	 #Para CEPs incorretos a API retorna no formato JSONP, entao eh extraido soh o JSON para comparar

		jsonresult = @response.body[/{.+}/]

		jsonresult.should == json


	else

	"Erro ao acessar a API!"

	end

end
