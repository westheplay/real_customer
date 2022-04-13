# Real Customer

Dado("que eu acesso a página de loguin") do
  @logar = LoguinPage.new
  @logar.load
end

Entao('o sistema deve exibir a mensagem {string}') do |string|
  LoguinPage.new.validar_mensagem(string)
end

Dado("que esteja logado no sistema com usuário {string}") do |string|
  @logar = LoguinPage.new
  @logar.load
  @logar.logar_usuario_aleatorio(string)
end

Quando('clico no botão Entrar') do
  LoguinPage.new.clicar_botao_entrar
end

Entao('deve ser apresentado {int} mensagens de campos obrigatórios') do |int|
  LoguinPage.new.validar_msg_campos_obrigatorios(int)
end

Quando('eu clico em Esqueci minha senha') do
  LoguinPage.new.clicar_esqueci_minha_senha
end

Quando('clico no botãp Recuperar') do
  LoguinPage.new.clicar_botao_recuperar
end

Quando('preencho o campo email com {string}') do |string|
  LoguinPage.new.preencher_email(string)
end

Quando('iformo a senha {string}') do |string|
  LoguinPage.new.preencher_senha(string)
end

Quando('informo o domínio {string}') do |string|
  LoguinPage.new.preencher_dominio(string)
end