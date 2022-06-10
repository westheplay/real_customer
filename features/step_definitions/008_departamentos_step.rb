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

Quando('clico em deletar departamento') do
    DepartamentosPage.new.clicar_btn_deletar
end


Quando('clico em Editar departamento') do
   DepartamentosPage.new.clicar_btn_editar
end

Quando('edito os dados do departamento') do
   DepartamentosPage.new.alterar_dados_departamento
end
Quando('eu acesso o menu Departamentos') do
  MenuPage.new.clicar_menu_departamentos
end


Quando('informo o nome na tela de conslta') do
    DepartamentosPage.new.informar_nome_incluir
end


Quando('informo o Nome') do
    DepartamentosPage.new.informar_nome
  end