class FuncionalidadesPage < PageHelper

    # Pega a URL default
    set_url ""
   
    include Capybara::DSL
    include RSpec::Matchers
    
    # Elements
    
    
    element :swetch_desatribuicao, '//*[contains(text(),"Desatribuição")]/../../div[2]'
    element :swetch_baixar, '//*[contains(text(),"Baixar")]/../../div[2]/div[1]'
    element :swetch_filtro, '//*[contains(text(),"Filtro")]/../../div[2]/div[1]'
    element :swetch_mascarar_dados, '//*[contains(text(),"Mascarar")]/../../div[2]/div[1]'
    element :swetch_informacao_agente, '//*[contains(text(),"Informação")]/../../div[2]/div[1]'
    element :swetch_insight, '//*[contains(text(),"Insight")]/../../div[2]/div[1]'
    element :swetch_reabrir_conversa, '//*[contains(text(),"Reabrir")]/../../div[2]/div[1]'
    element :swetch_tabulacao, '//*[contains(text(),"Tabulação")]/../../div[2]/div[1]'
    
    
end   