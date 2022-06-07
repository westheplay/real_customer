Dado('que eu esteja logado no sistema com um usuario autorizado') do
  @loguin = LoguinPage.new
  @loguin.load
  @loguin.logar_usuario_admin
end


Quando('eu acesso o menu grupos') do
  MenuPage.new.clicar_menu_grupos
end

Quando('clico no botão Adicionar grupo') do
  GruposPage.new.clicar_btn_adicionar_grupo
end

Quando('informo os dados do grupo') do
  GruposPage.new.informar_dados_grupo
end

Quando('informo o nome do grupo') do
  GruposPage.new.informar_nome
end

Quando('clico em Editar grupo') do
  GruposPage.new.clicar_btn_editar
end

Quando('edito os dados do grupo') do
  GruposPage.new.alterar_dados_grupo
end

Quando('informo o nome na tela de conslta grupo') do
  GruposPage.new.informar_nome_consulta
end

Quando('clico em deletar grupo') do
  GruposPage.new.clicar_btn_deletar
end