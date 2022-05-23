require "pg"

class Database

  # Conexão com o banco
  def initialize  
    @host = "dbpgsqlqa.poupex.com.br"
    @port = 9999
    @dbname = "pgqa"
    @user = "user_central_negociacao_app"
    @password = "E3yTyONhUPSE4ZS"
  end

  def delete_solicitacao(cpf)
    @lista = %[delete from central_negociacao.documento_objeto where id_documento in (select id_documento from central_negociacao.documento where id_solicitacao in (select id_solicitacao from central_negociacao.solicitacao where cpf_cliente = '#{cpf}'));
      delete from central_negociacao.documento where id_solicitacao in (select id_solicitacao from central_negociacao.solicitacao where cpf_cliente = '#{cpf}');
      delete from central_negociacao.andamento_tarefa where id_solicitacao in (select id_solicitacao from central_negociacao.solicitacao where cpf_cliente = '#{cpf}');
      delete from central_negociacao.mensagem_file where id_mensagem in (select id_mensagem from central_negociacao.mensagem where id_solicitacao in (select id_solicitacao from central_negociacao.solicitacao where cpf_cliente = '#{cpf}'));
      delete from central_negociacao.mensagem where id_solicitacao in (select id_solicitacao from central_negociacao.solicitacao where cpf_cliente = '#{cpf}');
      delete from central_negociacao.atendimento_solicitacao where id_solicitacao in (select id_solicitacao from central_negociacao.solicitacao where cpf_cliente = '#{cpf}');
      delete from central_negociacao.solicitacao_grupo where id_solicitacao in (select id_solicitacao from central_negociacao.solicitacao where cpf_cliente = '#{cpf}');
      delete from central_negociacao.ultima_alteracao_solicitacao where id_solicitacao in (select id_solicitacao from central_negociacao.solicitacao where cpf_cliente = '#{cpf}');
      delete from central_negociacao.anotacao where id_solicitacao in (select id_solicitacao from central_negociacao.solicitacao where cpf_cliente = '#{cpf}');
      delete from central_negociacao.solicitacao_etiqueta where id_solicitacao in (select id_solicitacao from central_negociacao.solicitacao where cpf_cliente = '#{cpf}');
      delete from central_negociacao.endereco_envolvido where id_envolvido in ((select id_envolvido from central_negociacao.envolvido where id_solicitacao in (select id_solicitacao from central_negociacao.solicitacao where cpf_cliente = '#{cpf}')));
      delete from central_negociacao.telefone_envolvido where id_envolvido in ((select id_envolvido from central_negociacao.envolvido where id_solicitacao in (select id_solicitacao from central_negociacao.solicitacao where cpf_cliente = '#{cpf}')));
      delete from  central_negociacao.email_envolvido  where id_envolvido in ((select id_envolvido from central_negociacao.envolvido where id_solicitacao in (select id_solicitacao from central_negociacao.solicitacao where cpf_cliente = '#{cpf}')));
      delete from central_negociacao.envolvido  where id_solicitacao in (select id_solicitacao from central_negociacao.solicitacao where cpf_cliente = '#{cpf}');
      delete from central_negociacao.dados_banc_env where id_envolvido in ((select id_envolvido from central_negociacao.envolvido where id_solicitacao in (select id_solicitacao from central_negociacao.solicitacao where cpf_cliente = '#{cpf}')));
      delete from central_negociacao.endereco_imovel  where id_imovel in ((select id_imovel from central_negociacao.imovel where id_solicitacao in (select id_solicitacao from central_negociacao.solicitacao where cpf_cliente = '#{cpf}')));
      delete from central_negociacao.cartorio_imovel where id_imovel in ((select id_imovel from central_negociacao.imovel where id_solicitacao in (select id_solicitacao from central_negociacao.solicitacao where cpf_cliente = '#{cpf}')));
      delete from central_negociacao.imovel where id_solicitacao in (select id_solicitacao from central_negociacao.solicitacao where cpf_cliente = '#{cpf}');
      delete from central_negociacao.simulacao_imob where id_solicitacao in (select id_solicitacao from central_negociacao.solicitacao where cpf_cliente = '#{cpf}');
      delete from central_negociacao.dados_adicionais_cliente where id_solicitacao in (select id_solicitacao from central_negociacao.solicitacao where cpf_cliente = '#{cpf}');
      delete from central_negociacao.solicitacao where cpf_cliente = '#{cpf}';]
      
   execute_script(@lista)
   puts 'Delete realizado com sucesso!'
  end

  def delete_imoveis_etapa1_cid(id_solicitacao)
    @lista = %[delete from central_negociacao.endereco_imovel where id_imovel = (select id_imovel from central_negociacao.imovel where id_solicitacao = '#{id_solicitacao}');
      delete from central_negociacao.cartorio_imovel where id_imovel = (select id_imovel from central_negociacao.imovel where id_solicitacao = '#{id_solicitacao}');
      delete from central_negociacao.imovel where id_solicitacao = '#{id_solicitacao}';]
      execute_script(@lista)
      puts 'Delete realizado com sucesso!'
    end

    def deletar_vendedor_etapa1_cid(id_solicitacao)
      @lista = %[delete from central_negociacao.dados_banc_env where id_envolvido in ((select id_envolvido from central_negociacao.envolvido where id_solicitacao = '#{id_solicitacao}'));
        delete from central_negociacao.endereco_envolvido where id_envolvido in ((select id_envolvido from central_negociacao.envolvido where id_solicitacao = '#{id_solicitacao}'));
        delete from central_negociacao.telefone_envolvido where id_envolvido in ((select id_envolvido from central_negociacao.envolvido where id_solicitacao = '#{id_solicitacao}'));
        delete from central_negociacao.email_envolvido where id_envolvido in ((select id_envolvido from central_negociacao.envolvido where id_solicitacao = '#{id_solicitacao}'));
        delete from central_negociacao.documento where id_solicitacao = '#{id_solicitacao}';
        delete from central_negociacao.envolvido where id_solicitacao = '#{id_solicitacao}';]
        execute_script(@lista)
        puts 'Delete de vendedores realizado com sucesso!'
    end

    def deletar_participante_vendedores_documentos_etapa1_cid(id_solicitacao)
      @lista = %[delete from central_negociacao.dados_banc_env where id_envolvido = (select id_envolvido from central_negociacao.envolvido where id_solicitacao = '#{id_solicitacao}');
        delete from central_negociacao.endereco_envolvido where id_envolvido = (select id_envolvido from central_negociacao.envolvido where id_solicitacao = '#{id_solicitacao}');
        delete from central_negociacao.telefone_envolvido where id_envolvido = (select id_envolvido from central_negociacao.envolvido where id_solicitacao = '#{id_solicitacao}');
        delete from central_negociacao.email_envolvido where id_envolvido = (select id_envolvido from central_negociacao.envolvido where id_solicitacao = '#{id_solicitacao}');
        delete from central_negociacao.documento where id_solicitacao = '#{id_solicitacao}';
        delete from central_negociacao.envolvido where id_solicitacao = '#{id_solicitacao}';]
        execute_script(@lista)
        puts 'Delete de participantes, vendedores e documentos realizado com sucesso!'
    end

    def resetar_docs_etapa2_cid(id_solicitacao)
      sql = "update central_negociacao.documento set objeto = null, st_documento = 2 where id_solicitacao = '#{id_solicitacao}' and id_tipo_documento not in (5,2);"
      execute_script(sql)
      puts 'Reset de documentos etapa 2 realizado com sucesso!'
    end

  def consultar_solicitacao(cpf)
    sql = "select count(*) from central_negociacao.solicitacao where cpf_cliente = '#{cpf}';"
    valor = execute_script(sql)
    puts "A quantidade de solicitações é:"
    puts valor.getvalue(0,0)
    if valor.getvalue(0,0).to_i <= 0
     incluir_solicitacao(cpf)
    end
  end

  def incluir_solicitacao(cpf)
      sql = "INSERT INTO central_negociacao.solicitacao (cpf_cliente, tp_solicitacao, st_solicitacao, dt_inicio) VALUES ('#{cpf}', '5', '1', current_timestamp)"
      execute_script(sql)
      puts 'Inclusão realizada'
  end

  def incluir_solicitacao_bens_duraveis(cpf, tipoDocumento)
    sql = "INSERT INTO central_negociacao.solicitacao (cpf_cliente, tp_solicitacao, st_solicitacao, dt_inicio) VALUES ('#{cpf}', '#{tipoDocumento}', '1', current_timestamp);"
    execute_script(sql)
    puts 'Inclusão realizada'
  end

  def alterar_status_solicitacao(status, cpf)
    puts 'Alterar status da solicitação'
    sql = "UPDATE central_negociacao.solicitacao SET st_solicitacao = '#{status}' WHERE cpf_cliente = '#{cpf}';"
    execute_script(sql)
    puts "Alteração de status realizada com sucesso! status #{status}"
    sleep 2
  end

  def incluir_pendencia(cpf)
    puts 'Consultar se existem pendências para a solicitação'
    sq = "select count(*) from central_negociacao.documento where id_solicitacao = (select id_solicitacao from  
    central_negociacao.solicitacao where cpf_cliente = '#{cpf}' order by dt_inicio desc limit 1);"
    con = execute_script(sq)
    if con.getvalue(0,0).to_i <= 0
      sql = "INSERT INTO central_negociacao.documento (id_solicitacao, id_tipo_documento, nome, st_documento, dt_cadastro) 
      values ((select id_solicitacao from  central_negociacao.solicitacao where cpf_cliente = '#{cpf}' order by dt_inicio desc limit 1), 6, 'testeWB', 2, current_timestamp);"
      execute_script(sql)
      puts 'Pendência incluída'
      else
        puts 'Já existem pendências para essa solicitação'
    end
  end

  def alterar_limite_solicitacoes
    puts 'Alterar o limite de solicitações para 1 por cliente'
    @lista = %[UPDATE central_negociacao.tipo_solicitacao SET limite = 1 WHERE id_tipo_solicitacao = 5;
    UPDATE central_negociacao.tipo_solicitacao SET limite = 1 WHERE id_tipo_solicitacao = 6;]
    execute_script(@lista)
    puts 'Limite de solicitações ajustado!'
  end

  def execute_script(script)
    begin
      @connection = PG::Connection.open(@host, @port, nil,  nil, @dbname, @user, @password)
      puts 'Conexão realizada'
      @value = @connection.exec(script) 
        puts 'Script executado'
      return @value
      ensure
        @connection.close if @connection
        puts 'Conexão fechada'
      end
  end
end