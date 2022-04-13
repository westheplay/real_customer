Before do |scenario|
  puts "Cenário em execução: " + scenario.name
end

After do |scenario|
  sufix = ("O cenário FALHOU!" if scenario.failed?) || "Cenário executado com Sucesso !\n\n"
  puts "#{sufix}"
  Capybara.reset!
end

# Exemplo
#After "@Cadastrar_Pessoa_tela_do_editor_de_texto_e_envolver_ao_caso_SISCART" do
#  @envolvidos = Envolvidos.new
#  @envolvidos.clicar_botao_salvar
#end

After do |scenario|
  #tira uma print
  file_name = scenario.name.tr(" ", "_").upcase
  sufix = ("FALHOU" if scenario.failed?) || "PASSOU"
  shot = "logs/shots/#{file_name}_#{sufix}.png"
  # page.switch_to_window(windows.last)
  puts "Tirando print da tela"
  page.save_screenshot(shot)
  #screenshot = Base64.encode64(File.open(capture_screenshot, "rb").read)
  #embed(screenshot, "image/png", "Clique aqui para ver o print da tela"
  Allure.add_attachment(name: file_name, source: File.open(shot), type: Allure::ContentType::PNG, test_case: false)
  #Capybara.reset!
end
