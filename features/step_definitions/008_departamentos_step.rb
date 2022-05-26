Dado('que eu esteja logado no sistema com um usuario autorizado') do
    @loguin = LoguinPage.new
    @loguin.load
    @loguin.logar_usuario_admin
end

Quando('eu acesso o menu departamentos') do
    MenuPage.new.clicar_menu_departamentos
end
  
Quando('clico no botão Adicionar departamento') do
    DepartamentosPage.new.clicar_btn_adicionar_departamento
end
  
Quando('informo o Nome {string}') do |string|
    DepartamentosPage.new.informar_nome(string)
end


Quando('informo os dados do departamento') do
    DepartamentosPage.new.informar_dados_departamento
end