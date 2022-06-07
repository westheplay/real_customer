Dado('que eu esteja logado no sistema com um usuario autorizado') do
    @loguin = LoguinPage.new
    @loguin.load
    @loguin.logar_usuario_admin
end



Quando('eu acesso o menu usuarios') do
    MenuPage.new.clicar_menu_usuarios
end

Quando('clico no botão Buscar usuario') do
    UsuariosPage.new.clicar_btn_buscar
end


Quando('clico no botão Adicionar usuario') do
    UsuariosPage.new.clicar_btn_adicionar_usuario
end

Quando('informo os dados do usuario') do
    UsuariosPage.new.informar_dados_usuario
end

Quando('informo o nome do usuario') do
    UsuariosPage.new.informar_nome
end

Quando('clico em Editar usuario') do
    UsuariosPage.new.btn_editar_usuario
end

Quando('edito os dados do usuario') do
    UsuariosPage.new.alterar_dados_usuario
end

Quando('informo o nome na tela de consulta') do
    UsuariosPage.new.informar_nome_consulta
  end
