Feature: Submitting "Cadastro do fornecedor" form
	As a supplier
	In order to submit a requirement to become a supplier of BrasilPrev
	I want to be able to submit this forms

	Background:
		Given I open the url "/fornecedores"

	Scenario: Test with correct data
		When  I add "30.306.392/0001-82" to the inputfield "#content input[name=cnpj]"
            And   I add "Skynet Bots & Co." to the inputfield "#content input[name=razao-social]"
            And   I add "Terminator" to the inputfield "#content input[name=nome-fantasia]"
            And   I add "6201-5/02" to the inputfield "#content input[name=cnae]"
            And   I add "WEB DESIGN" to the inputfield "#content input[name=ramo-negocio]"
            And   I add "8070197,20" to the inputfield "#content input[name=faturamento-mensal]"
            And   I add "929302040,01" to the inputfield "#content input[name=capital-social]"
            And   I add "Sarah Connor" to the inputfield "#content input[name=nome-responsavel]"
            And   I add "747.435.880-81" to the inputfield "#content input[name=cpf]"
            And   I add "Travessa The Cure, S/N" to the inputfield "#content input[name=endereco]"
            And   I add "Bairro? Aqui é zona rural" to the inputfield "#content input[name=bairro]"
            And   I add "58475-000" to the inputfield "#content input[name=cep]"
            And   I add "Queimadas" to the inputfield "#content input[name=cidade]"
            And   I select the option with the value "PB" for element "#content input[name=estado]"
            And   I add "21" to the inputfield "#content [name=ddd]"
            And   I add "33220000" to the inputfield "#content [name=telefone]"
            And   I add "theend@skynet.me" to the inputfield "#content [name=email]"
            And   I add "https://example.com" to the inputfield "#content [name=website]"
            And   I click on the element "#optante-cprb-nao"
            And   I click on the element "#label-coc"

            And   I click on the button "#content .button.medium"
	  	Then  I wait on element ".popup-message" to be visible
            And   I expect that element ".formBox .popup-message" contains the text "Mensagem enviada."

	Scenario: Test all empty fields
		When  I click on the button "#content .button.medium"
	  	Then  I expect that element "#content .fieldBox.cnpj .inputBox" has the class "invalid"
            And   I expect that element "#content .razao-social .inputBox" has the class "invalid"
            And   I expect that element "#content .nome-fantasia .inputBox" has the class "invalid"
            And   I expect that element "#content .cnae .inputBox" has the class "invalid"
            And   I expect that element "#content .ramo-negocio .inputBox" has the class "invalid"
            And   I expect that element "#content .faturamento-mensal .inputBox" has the class "invalid"
            And   I expect that element "#content .capital-social .inputBox" has the class "invalid"
            And   I expect that element "#content .nome-responsavel .inputBox" has the class "invalid"
            And   I expect that element "#content .cpf .inputBox" has the class "invalid"
            And   I expect that element "#content .endereco .inputBox" has the class "invalid"
            And   I expect that element "#content .bairro .inputBox" does not have the class "invalid"
            And   I expect that element "#content .cep .inputBox" has the class "invalid"
            And   I expect that element "#content .cidade .inputBox" has the class "invalid"
            And   I expect that element "#content .input--estado select" has the class "invalid"
            And   I expect that element "#content .input-phone .input--ddd" has the class "invalid"
            And   I expect that element "#content .input-phone .input--number" has the class "invalid"
            And   I expect that element "#content .email .inputBox" has the class "invalid"
            And   I expect that element "#content .website .inputBox" does not have the class "invalid"
            And   I expect that element "#content input[name=cprb]" has the class "invalid"
            And   I expect that element "#optante-cprb-sim input" has the class "invalid"
            And   I expect that element "#optante-cprb-nao input" has the class "invalid"
            And   I expect that element "#content [name=receber-resposta]" does not have the class "invalid"
            And   I expect that element "#content [name=coc]" has the class "invalid"
