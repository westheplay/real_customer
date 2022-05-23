Dado('que eu esteja logado no sistema com um usuario admin') do
    @loguin = LoguinPage.new
    @loguin.load
    @loguin.logar_usuario_admin
end
  
Quando('eu acesso o menu mensagens predefidas') do
    MenuPage.new.clicar_menu_mensagens_predefinidas
end

Quando('clico no botão Adicionar mensagem predefinida') do
    MsgPreDefinidasPage.new.clicar_btn_adicionar_msg_predef
end
  
Quando('informo o Título {string}') do |string|
    MsgPreDefinidasPage.new.informar_titulo(string)
end
  
Quando('clico no botão Confirmar') do
    MsgPreDefinidasPage.new.clicar_btn_confirmar
end

Quando('informo os dados da mensagem') do
    MsgPreDefinidasPage.new.informar_dados_msg
end





Quando('clico no botão Buscar') do
    MsgPreDefinidasPage.new.clicar_btn_buscar
end

Quando('clico em Editar mensagem') do
    MsgPreDefinidasPage.new.clicar_btn_editar
end

Quando('edito os dados da mensgem') do
    MsgPreDefinidasPage.new.alterar_dados_msg
end




Quando('clico em deletar mensagem') do
    MsgPreDefinidasPage.new.clicar_btn_deletar
end

Quando('clico no botão delete sim') do
    MsgPreDefinidasPage.new.clicar_btn_delete_sim
end