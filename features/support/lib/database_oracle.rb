class Database_oracle

  # Conexão BD

  def initialize
    @host = "dbOraclehomolog"
    @port = "1521"
    @dbname = "DESENV"
    @user = "USER_APLICATIVO_POUPEX"
    @password = "SBlkHmozIUEywHecQDqr"
  end

  def execute_script_oci(script)
    @connection = OCI8.new(@user, @password, 'dbOraclehomolog:1521/DESENV')
    puts 'Conexão oracle realizada'
    @value = @connection.exec(script) 
    puts 'Script executado'
    return @value  
  end

  def recuperar_codigo_verificacao(cpf)
    puts 'Recuperar Código de verificação'
    sql = "select COD_VER_SMS from APLICATIVO_POUPEX.TAB_NTF_DPV where NUM_CPF = '#{cpf}'"
    cod = execute_script_oci(sql)
    return cod
  end

end