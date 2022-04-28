require_relative "file_helper.rb"

class PageHelper < SitePrism::Page
  include FileHelper

  element :loading_bar, "#loading-bar"

  def initialize
    @loguin = LoguinPage.new
  end

  def acessar_home
    @loguin.load
    @loguin.realizar_loguin
  end

  def mudar_foco
    switch_to_window(windows.last)
  end

  def nr_random
    SecureRandom.random_number(11 ** 10)
  end

  def aguardar_carregamento
    puts "Aguardando carregamento"
    wait_until_loading_bar_invisible
  end

  def validar_dias_uteis(dias)
    puts "Validando data com cinco dias úteis"
    calendar = Business::Calendar.new(
      working_days: %w( mon tue wed thu fri ),
      #holidays: ["01/01/2020", "25/12/2019"],
    )
    date = Time.now
    date.strftime("%d/%m/%Y")
    calendar.add_business_days(date, dias).strftime("%d/%m/%Y")
  end


  def clicar_botao_cancelar
    puts 'clicar no botão cancelar'
    click_button("Cancelar")
  end
  

  def clicar_botao_confirmar
    puts 'clicar no botão confirmar'
    click_button("Confirmar")
  end

  def clicar_botao_generico(name)
    puts "clicar no botão: #{name}"
    click_button(name)
  end

end
