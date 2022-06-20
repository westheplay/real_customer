class PesquisasPage < PageHelper

    # Pega a URL default
    set_url ""
   
    include Capybara::DSL
    include RSpec::Matchers
    
    # Elements
    



    element :input_criar_nome, :xpath, '//*[contains(text(),"Nome")]/..//input'
    element :input_criar_tipo, :xpath, '//*[contains(text(),"Tipo")]/../div//input'
    element :input_criar_info, :xpath, '//*[@type="textarea"]'
    element :input_name, :xpath, '//*[@class="form-control"]'
    element :input_tipo, :xpath, '//*[contains(text(),"Tipo")]/..//input'
    element :btn_buscar, :xpath, '//*[contains(text(),"Buscar")]'
    element :btn_adicionar_pesquisa, :xpath, '//*[contains(text(),"Adicionar ")]'
    element :btn_editar, "#edittooltip0"
    element :btn_deletar, "#deletetooltip0"


     # methods 


    def informo_nome_tela_consulta_pesquisa
        puts "informo o nome na tela de consulta pesquisa"
        @titulo = recuperar_dados("features/arquivos/pesquisas.txt")
        input_name.set(@titulo[0].to_s)
    end

    def informar_nome_pesquisa
        puts "editar dados pesquisa"
        @titulo = recuperar_dados("features/arquivos/pesquisas.txt")
        input_name.set(@titulo[0].to_s)
    end

     
    def preencher_input_name(conteudo)
        puts 'preencher no input name'
        input_name.set(conteudo)
    end
    
     
    def clicar_input_tipo
        puts 'clicar no input tipo'
        input_tipo.click
    end

    

    def clicar_btn_buscar
        puts 'clicar no btn buscar'
        btn_buscar.click
    end

    

    def clicar_btn_adicionar_pesquisa
        puts 'clicar no btn adicionar pesquisa'
        btn_adicionar_pesquisa.click
    end
    
    

    def clicar_btn_editar
        puts 'clicar no botao editar'
        btn_editar.click
    end
     
    

    def clicar_btn_deletar
        puts 'clicar no botao deletar'
        btn_deletar.click
    end
         
    
    def clicar_btn_confirmar
        puts "clicar btn confirmar"
        click_button('Confirmar')
    end

    def clicar_btn_cancelar
        puts "clicar btn cancelar"
        click_button('Cancelar')
    end


    def informar_dados_Pesquisa
        puts "informar dados pesquisa"
        variavel_nome = ['abb', 'aaa', 'fgj', 'fgy']
        variavel_rand = rand(5)
        @test = variavel_nome[variavel_rand]
        input_criar_nome.set("pesquisa teste #{@test}")
        @msg = "pesquisa teste #{@test}"
        gravar_dados("features/arquivos/pesquisas.txt", @msg)  
        input_criar_tipo.set("Pré-chat")
        input_criar_tipo.send_keys(:enter)
        input_criar_info.set('{
            "tries": 2,
            "timeout": 240,
            "questions": [
                {
                    "text": "Por gentileza, informe a sua matrícula de funcionário:",
                    "type": "textQuestion",
                    "label": "Matrícula"
                },
                {
                    "text": {
                        "items": [
                            {
                                "answers": [
                                    "salvador",
                                    "bahia",
                                    "savador",
                                    "salvado"
                                ],
                                "optionText": "Salvador"
                            },
                            {
                                "answers": [
                                    "pernambuco",
                                    "pernanbuco",
                                    "pernabuco"
                                ],
                                "optionText": "Pernambuco"
                            },
                            {
                                "answers": [
                                    "naosei",
                                    "nao sei",
                                    "não sei",
                                    "nao tenho informação"
                                ],
                                "optionText": "Não Informado"
                            }
                        ],
                        "question": "De qual região você é?♪♫"
                    },
                    "type": "multipleQuestion",
                    "label": "Região"
                },
                {
                    "text": {
                        "items": [
                            {
                                "answers": [
                                    "tech4hQA01",
                                    "01",
                                    "um",
                                    "primeiro"
                                ],
                                "default": false,
                                "optionText": "test",
                                "routingSkill": "c1e943cf-ab8d-40d4-9bd5-f52939912d10"
                            },
                            {
                                "answers": [
                                    "tech4hQA02",
                                    "02",
                                    "segundo",
                                    "dois"
                                ],
                                "default": false,
                                "optionText": "CHAT_NUCLEO",
                                "routingSkill": "3cb24cd9-5021-4224-b491-5c6400838295"
                            },
                            {
                                "answers": [
                                    "naosei",
                                    "nao sei",
                                    "outro",
                                    "outra coisa"
                                ],
                                "default": true,
                                "optionText": "Outros (Super App)",
                                "routingSkill": "88060a89-f028-4d62-ac39-d594f54b4ad2"
                            }
                        ],
                        "question": "Sobre qual assunto deseja falar?"
                    },
                    "type": "routing",
                    "label": "Skill/Assunto"
                }
            ],
            "triesAnswer": "Desculpe, você excedeu o número máximo de tentativas! Vou te transferir para nosso canal Geral.",
            "timeoutAnswer": "Essa pesquisa finalizou por exceder o tempo limite. Vou te transferir para nosso Canal Geral!",
            "unrecognizedAnswer": "Desculpe, não entendi sua resposta. Por favor responda com uma das opções"
        }')
    end

    
    def editar_dados_pesquisa
        puts "editar dados pesquisa"
        @titulo = recuperar_dados("features/arquivos/pesquisas.txt")
        input_name.set(@titulo[0].to_s)
        input_criar_tipo.set("Pós-chat")
        input_criar_tipo.send_keys(:enter)
        input_criar_info.set('{
            "tries": 2,
            "timeout": 240,
            "questions": [
                {
                    "text": "Por gentileza, informe a sua matrícula de funcionário:",
                    "type": "textQuestion",
                    "label": "Matrícula"
                },
                {
                    "text": {
                        "items": [
                            {
                                "answers": [
                                    "salvador",
                                    "bahia",
                                    "savador",
                                    "salvado"
                                ],
                                "optionText": "Salvador"
                            },
                            {
                                "answers": [
                                    "pernambuco",
                                    "pernanbuco",
                                    "pernabuco"
                                ],
                                "optionText": "Pernambuco"
                            },
                            {
                                "answers": [
                                    "naosei",
                                    "nao sei",
                                    "não sei",
                                    "nao tenho informação"
                                ],
                                "optionText": "Não Informado"
                            }
                        ],
                        "question": "De qual região você é?♪♫"
                    },
                    "type": "multipleQuestion",
                    "label": "Região"
                },
                {
                    "text": {
                        "items": [
                            {
                                "answers": [
                                    "tech4hQA01",
                                    "01",
                                    "um",
                                    "primeiro"
                                ],
                                "default": false,
                                "optionText": "test",
                                "routingSkill": "c1e943cf-ab8d-40d4-9bd5-f52939912d10"
                            },
                            {
                                "answers": [
                                    "tech4hQA02",
                                    "02",
                                    "segundo",
                                    "dois"
                                ],
                                "default": false,
                                "optionText": "CHAT_NUCLEO",
                                "routingSkill": "3cb24cd9-5021-4224-b491-5c6400838295"
                            },
                            {
                                "answers": [
                                    "naosei",
                                    "nao sei",
                                    "outro",
                                    "outra coisa"
                                ],
                                "default": true,
                                "optionText": "Outros (Super App)",
                                "routingSkill": "88060a89-f028-4d62-ac39-d594f54b4ad2"
                            }
                        ],
                        "question": "Sobre qual assunto deseja falar?"
                    },
                    "type": "routing",
                    "label": "Skill/Assunto"
                }
            ],
            "triesAnswer": "Desculpe, você excedeu o número máximo de tentativas! Vou te transferir para nosso canal Geral.",
            "timeoutAnswer": "Essa pesquisa finalizou por exceder o tempo limite. Vou te transferir para nosso Canal Geral!",
            "unrecognizedAnswer": "Desculpe, não entendi sua resposta. Por favor responda com uma das opções"
        }')
    end




end    
