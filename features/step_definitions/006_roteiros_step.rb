Dado('que eu esteja logado no sistema com um usuario valido') do
    @loguin = LoguinPage.new
    @loguin.load
    @loguin.logar_usuario_admin
end


Quando('eu acesso o menu roteiros') do
    MenuPage.new.clicar_menu_roteiros
end

Quando('clico no botão Adicionar roteiro') do
    RoteirosPage.new.clicar_btn_adicionar_roteiro
end 

Quando('adiciono o Título {string}') do |string|
    RoteirosPage.new.input_criar_titulo(string)
end

Quando('informo os dados do roteiro') do
    RoteirosPage.new.informar_dados_roteiro
end



Quando('clico em Editar roteiro') do
   RoteirosPage.new.clicar_btn_editar
end

Quando('edito os dados do roteiro') do
   RoteirosPage.new.alterar_dados_roteiro
end


Quando('clico em deletar roteiro') do
    RoteirosPage.new.clicar_btn_deletar
end

