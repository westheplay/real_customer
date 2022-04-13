module FileHelper
 # require 'pdf/reader'
  require "selenium/webdriver"
  def remover_acentos!(texto)
    texto.gsub!(/(á|à|ã|â|ä)/, "a")
    texto.gsub!(/(é|è|ê|ë)/, "e")
    texto.gsub!(/(í|ì|î|ï)/, "i")
    texto.gsub!(/(ó|ò|õ|ô|ö)/, "o")
    texto.gsub!(/(ú|ù|û|ü)/, "u")
    texto.gsub!(/(Á|À|Ã|Â|Ä)/, "A")
    texto.gsub!(/(É|È|Ê|Ë)/, "E")
    texto.gsub!(/(Í|Ì|Î|Ï)/, "I")
    texto.gsub!(/(Ó|Ò|Õ|Ô|Ö)/, "O")
    texto.gsub!(/(Ú|Ù|Û|Ü)/, "U")
    texto.gsub!(/(ñ|Ñ)/, "n")
    texto.gsub!(/(ç|Ç)/, "c")

    texto
  end

  def normalizar_path(path)
    path.tr!(" ", "_") if path.include?(" ")
    remover_acentos!(path)

    # ajustando caminho ao SO correspodente
    File.join(Dir.pwd, path).gsub(File::SEPARATOR, File::ALT_SEPARATOR || File::SEPARATOR)
  end

  def anexar(campo_anexar, path_file)
    @path_file = normalizar_path(path_file)
    attach_file(campo_anexar, @path_file, make_visible: true)
  end

  def gravar_dados(path, dados)
    @path = normalizar_path(path)
    File.open(@path, "w") do |file|
      file.puts(dados[4..15])
    end
  end

  def gravar_cpf(path, dados)
    @path = normalizar_path(path)
    File.open(@path, "w") do |file|
      file.puts(dados)
    end
  end

  def atualizar_conteudo(path, dados)
    @path = normalizar_path(path)
    File.open(@path, "a") do |file|
      file.puts(dados)
    end
  end

  def gravar_nome(path, dados)
    @path = normalizar_path(path)

    File.open(@path, "w") do |file|
      file.puts(dados)
    end
  end

  def recuperar_dados(file)
    File.readlines(file)
  end

  def recuperar_cpf(file)
    File.readlines(file).sample(1)[0]
  end

  def recuperar_nome(file)
    File.readlines(file).sample(1)[0]
  end
  # Tentativa de ler dados de um PDF
=begin  
  def recuperar_dados_pdf
    receiver = PDF::Reader::RegisterReceiver.new
    filename = File.expand_path(File.dirname(__FILE__)) + "/../arquivos/PDF_autenticado.pdf"
    puts filename
    PDF::Reader.open("PDF_autenticado.pdf") do |reader|
      PDF::Reader.open(filename) do |reader|
        reader.pages.each do |page|
          page.walk(receiver)
          receiver.callbacks.each do |cb|
            puts cb
          end
        end
      end
    end
   end
=end
  
  Capybara.register_driver :chrome do |app|
    profile['browser.download.dir'] = DownloadHelpers::PATH.to_s
   Capybara::Selenium::Driver.new(app, :browser => :chrome, :profile => profile)
  end  
end
