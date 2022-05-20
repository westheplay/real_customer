class LoguinPage < SitePrism::Page
 # Pega a URL default
  set_url ""

  include Capybara::DSL
  include RSpec::Matchers
  
  # Elements
  element :input_dominio_empresa, '#slug'
  element :input_email, '#email'
  element :input_senha, '#password'


  # buttons
  element :btn_entrar, 'button[type="submit"]'
  element :text_esqueci_minha_senha, 'a[class="text-muted"]'
  


  # methods
  def validar_mensagem(msg)
    puts "O sistema deve apresentar a mensagem: #{msg}"
    page.assert_text(msg)
  end

  def logar_usuario_aleatorio(cpf)
    puts "Logar com o usuário #{cpf}"
    input_email.set(cpf)
    senha.set("sem senha")
    btn_entrar.click
  end

  def logar_usuario_admin()
    puts "Logar com o usuário admin"
    input_dominio_empresa.set("porto")
    input_email.set("wesley.barros@tech4h.com.br")
    input_senha.set("Tech123*")
    btn_entrar.click
  end

  def preencher_dominio(dominio)
    puts "Preenhcer domínio com #{dominio}"
    input_dominio_empresa.set(dominio)
  end

  def preencher_email(email)
    puts "Prencher email com: #{email}"
    input_email.set(email)
  end

  def preencher_senha(senha)
    puts "Preencher senha com: #{senha}"
    input_senha.set(senha)
  end

  def clicar_botao_entrar
    puts 'Clicar no botão entrar'
    click_button('Entrar')
  end

  def clicar_botao_recuperar
    puts 'Clicar no botão Recuperar'
    click_button('Recuperar')
  end

  def clicar_esqueci_minha_senha
    puts 'Clicar em esqueci minha senha'
    text_esqueci_minha_senha.click
  end

  def validar_msg_campos_obrigatorios(qtd)
    puts 'Validar mensagens de campos obrigatórios e Preencha pelo menos um campo'
    page.all(:xpath, "//*[contains(text(), 'Campo obrigatório')]").count.should eql(qtd)
  end

  
end
