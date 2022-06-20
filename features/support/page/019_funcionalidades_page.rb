class FuncionalidadesPage < PageHelper

    # Pega a URL default
    set_url ""
   
    include Capybara::DSL
    include RSpec::Matchers
    
    # Elements
    
    
    element :swetch_desatribuicao, :xpath, '//*[contains(text(),"Desatribuição")]/../../div[2]'
    element :swetch_baixar, :xpath, '//*[contains(text(),"Baixar")]/../../div[2]/div[1]'
    element :swetch_filtro, :xpath, '//*[contains(text(),"Filtro")]/../../div[2]/div[1]'
    element :swetch_mascarar_dados, :xpath, '//*[contains(text(),"Mascarar")]/../../div[2]/div[1]'
    element :swetch_informacao_agente, :xpath, '//*[contains(text(),"Informação")]/../../div[2]/div[1]'
    element :swetch_insight, :xpath, '//*[contains(text(),"Insight")]/../../div[2]/div[1]'
    element :swetch_reabrir_conversa, :xpath, '//*[contains(text(),"Reabrir")]/../../div[2]/div[1]'
    element :swetch_tabulacao, :xpath, '//*[contains(text(),"Tabulação")]/../../div[2]/div[1]'
    
    
end   