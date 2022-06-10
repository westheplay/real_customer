Dado('que eu esteja logado no sistema com um usuario autorizado') do
    @loguin = LoguinPage.new
    @loguin.load
    @loguin.logar_usuario_admin
end


Quando('eu acesso o menu perfis') do
  MenuPage.new.clicar_menu_perfis
end
  
Quando('clico no botão Adicionar perfil') do
  PerfisPage.new.clicar_btn_adicionar_perfil
end
  
Quando('informo os dados do perfil') do
  PerfisPage.new.informar_dados_perfil
end
  
Quando('clico em Editar perfil') do
  PerfisPage.new.click_btn_editar
end
  
Quando('edito os dados do perfil') do
  PerfisPage.new.alterar_dados_perfil
end
  
Quando('clico em deletar perfil') do
  PerfisPage.new.click_btn_deletar
end

Quando('informo o nome na tela de conslta perfil') do
  PerfisPage.new.informar_nome_consulta_perfil
end

Quando('informo o nome do perfil') do
  PerfisPage.new.informar_nome_perfil
end