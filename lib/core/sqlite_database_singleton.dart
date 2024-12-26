// import 'package:sqflite/sqflite.dart';

// class SqLiteDatabaseSingleton {
//   static late final Database _instance;
//   static bool _initialized = false;
//   SqLiteDatabaseSingleton._();

//   static Future<Database> get instance async {
//     if (!_initialized) {
//       _instance = await _createDatabase();
//       _initialized = true;
//     }
//     return _instance;
//   }

//   static Future<Database> _createDatabase() async {
//     String databasesPath = await getDatabasesPath();

//     String dbPath = '${databasesPath}dados.db';

//     Database database =
//         await openDatabase(dbPath, version: 1, onCreate: _createDb);
//     return database;
//   }

//   static void _createDb(Database database, int version) async {
//     if (version <= 1) {
//       await database.execute("CREATE TABLE IF NOT EXISTS categoriasDeCliente ("
//           "id INTEGER NOT NULL PRIMARY KEY,"
//           "descricao TEXT"
//           ")");
//       await database.execute("CREATE TABLE IF NOT EXISTS cidade ("
//           "id INTEGER NOT NULL PRIMARY KEY,"
//           "nome TEXT,"
//           "codIBGE TEXT,"
//           "uf TEXT,"
//           "paisId INTEGER NOT NULL,"
//           "paisNome TEXT,"
//           "lastChange TEXT"
//           ")");
//       await database.execute("CREATE TABLE IF NOT EXISTS colecao ("
//           "id INTEGER NOT NULL PRIMARY KEY,"
//           "descricao TEXT,"
//           "lastChange TEXT"
//           ")");

//       await database.execute("CREATE TABLE IF NOT EXISTS cor ("
//           "id INTEGER NOT NULL PRIMARY KEY,"
//           "descricao TEXT,"
//           "lastChange TEXT"
//           ")");

//       await database.execute("CREATE TABLE IF NOT EXISTS empresa ("
//           "id INTEGER NOT NULL PRIMARY KEY,"
//           "razaoSocial TEXT,"
//           "inativo varchar(1),"
//           "lastChange TEXT"
//           ")");

//       await database.execute("CREATE TABLE IF NOT EXISTS grade ("
//           "id INTEGER NOT NULL PRIMARY KEY,"
//           "descricao TEXT,"
//           "inativo varchar(1),"
//           "codigoVendaWeb INTEGER,"
//           "ultimoEnvioWeb TEXT,"
//           "lastChange TEXT"
//           ")");

//       await database.execute("CREATE TABLE IF NOT EXISTS localDeEstoque ("
//           "id INTEGER NOT NULL PRIMARY KEY,"
//           "descricao TEXT,"
//           "inativo varchar(1),"
//           "empresaId INTEGER NOT NULL,"
//           "empresaRazaoSocial TEXT,"
//           "lastChange TEXT"
//           ")");

//       await database.execute("CREATE TABLE IF NOT EXISTS marca ("
//           "id INTEGER NOT NULL PRIMARY KEY,"
//           "descricao TEXT,"
//           "inativo varchar(1),"
//           "lastChange TEXT"
//           ")");

//       await database.execute("CREATE TABLE IF NOT EXISTS planoPagamento ("
//           "id INTEGER NOT NULL PRIMARY KEY,"
//           "descricao TEXT,"
//           "acrescimo FLOAT,"
//           "desconto FLOAT,"
//           "dias TEXT,"
//           "valorMinimo FLOAT,"
//           "tipo TEXT,"
//           "lastChange TEXT"
//           ")");

//       await database.execute("CREATE TABLE IF NOT EXISTS secao ("
//           "id TEXT NOT NULL PRIMARY KEY,"
//           "descricao TEXT"
//           ")");

//       await database.execute("CREATE TABLE IF NOT EXISTS parametro ("
//           "id INTEGER NOT NULL PRIMARY KEY,"
//           "empresaId INTEGER,"
//           "estoqueId INTEGER,"
//           "enderecoBackEnd varchar(100),"
//           "tipoVenda varchar(50),"
//           "tipoConexao varchar(50),"
//           "vendedorId INTEGER,"
//           "lastMigrationCategoria TEXT,"
//           "lastMigrationCidade TEXT,"
//           "lastMigrationCliente TEXT,"
//           "lastMigrationColecao TEXT,"
//           "lastMigrationCor TEXT,"
//           "lastMigrationEmpresa TEXT,"
//           "lastMigrationGrade TEXT,"
//           "lastMigrationLocalEstoque TEXT,"
//           "lastMigrationMarca TEXT,"
//           "lastMigrationPlanoPgto TEXT,"
//           "lastMigrationProduto TEXT,"
//           "lastMigrationSecao TEXT,"
//           "lastMigrationSupervisor TEXT,"
//           "lastMigrationTabelaPreco TEXT,"
//           "lastMigrationTamanho TEXT,"
//           "lastMigrationUnidade TEXT,"
//           "lastMigrationVariedade TEXT,"
//           "lastMigrationVendedor TEXT,"
//           "versao VARCHAR(100)"
//           ")");

//       await database.execute("CREATE TABLE IF NOT EXISTS supervisor ("
//           "id INTEGER NOT NULL PRIMARY KEY,"
//           "nome TEXT,"
//           "lastChange TEXT"
//           ")");
//       await database.execute("CREATE TABLE IF NOT EXISTS tamanho ("
//           "id INTEGER NOT NULL PRIMARY KEY,"
//           "descricao TEXT,"
//           "lastChange TEXT"
//           ")");

//       await database.execute("CREATE TABLE IF NOT EXISTS unidade ("
//           "id TEXT NOT NULL PRIMARY KEY,"
//           "descricao TEXT,"
//           "lastChange TEXT"
//           ")");

//       await database.execute("CREATE TABLE IF NOT EXISTS variedade ("
//           "id INTEGER NOT NULL PRIMARY KEY,"
//           "descricao TEXT,"
//           "inativa varchar(1),"
//           "gradeId INTEGER NOT NULL,"
//           "lastChange TEXT"
//           ")");
//       await database.execute("CREATE TABLE IF NOT EXISTS vendedor ("
//           "id INTEGER NOT NULL PRIMARY KEY,"
//           "nome TEXT,"
//           "ativo varchar(1),"
//           "supervisorId INTEGER,"
//           "supervisorNome TEXT,"
//           "temComissao varchar(1),"
//           "lastChange TEXT"
//           ")");
//       await database.execute("CREATE TABLE IF NOT EXISTS cidadeVendedor ("
//           "vendedor_id INTEGER NOT NULL,"
//           "cidade_id INTEGER NOT NULL"
//           ")");
//       await database.execute("CREATE TABLE IF NOT EXISTS cliente ("
//           "id INTERGER,"
//           "cpfCNPJ TEXT,"
//           "nome TEXT,"
//           "nomeFantasia TEXT,"
//           "empresaId INTEGER,"
//           "tipoPessoa VARCHAR(1),"
//           "rgInscEst TEXT,"
//           "endereco TEXT,"
//           "bairro TEXT,"
//           "cidadeId TEXT,"
//           "cidadeNome TEXT,"
//           "codIBGE TEXT,"
//           "categoriaId INTEGER,"
//           "planoPagamentoId INTEGER,"
//           "cep TEXT,"
//           "fone1 TEXT,"
//           "celular TEXT,"
//           "vendedorId INTEGER,"
//           "pessoaContato TEXT,"
//           "latitude FLOAT,"
//           "longitude FLOAT,"
//           "inativo VARCHAR(1),"
//           "email TEXT,"
//           "bloqueado VARCHAR(1),"
//           "descricaoDoBloqueio TEXT,"
//           "transmitido VARCHAR(1),"
//           "atualizado VARCHAR(1),"
//           "registrationDate TEXT,"
//           "lastChange TEXT"
//           ")");

//       await database.execute("CREATE TABLE IF NOT EXISTS produto ("
//           "id INTEGER PRIMARY KEY NOT NULL,"
//           "descricao TEXT,"
//           "quantidade FLOAT,"
//           "preco FLOAT,"
//           "marcaId INTEGER,"
//           "marcaDescricao TEXT,"
//           "colecaoId INTEGER,"
//           "colecaoDescricao TEXT,"
//           "unidadeId TEXT,"
//           "unidadeDescricao TEXT,"
//           "corId INTEGER,"
//           "corDescricao TEXT,"
//           "tamanhoId INTEGER,"
//           "tamanhoDescricao TEXT,"
//           "secaoId TEXT,"
//           "secaoDescricao TEXT,"
//           "urlImagemPrincipal TEXT,"
//           "temVariedade TEXT,"
//           "produtoPaiId INTEGER,"
//           "valorDiferenteDoPai TEXT,"
//           "secaoDiferenteDoPai TEXT,"
//           "aparecePedEletronico VARCHAR(1),"
//           "inativo VARCHAR(1)"
//           ")");

//       await database.execute("CREATE TABLE IF NOT EXISTS tabelaPreco ("
//           "id INTEGER PRIMARY KEY NOT NULL,"
//           "descricao TEXT"
//           ")");

//       await database.execute("CREATE TABLE IF NOT EXISTS tabelaPrecoItem ("
//           "id INTEGER PRIMARY KEY NOT NULL,"
//           "tabelaPrecoId INTEGER NOT NULL,"
//           "percentPrazo FLOAT,"
//           "percentVista FLOAT,"
//           "produtoId INTEGER,"
//           "secaoId TEXT,"
//           "valorPrazo FLOAT,"
//           "valorVista FLOAT"
//           ")");

//       await database.execute("CREATE TABLE IF NOT EXISTS prePedido ("
//           "id BIGINT auto increment,"
//           "prePedidoUuid TEXT,"
//           "data TEXT,"
//           "clienteId INTEGER,"
//           "uuidCliente TEXT,"
//           "vendedorId INTEGER,"
//           "planoPagamentoId INTEGER,"
//           "observacao TEXT,"
//           "statusPrePedido TEXT,"
//           "valorFlex FLOAT,"
//           "valorComissao FLOAT,"
//           "lastChange TEXT"
//           ")");

//       await database.execute("CREATE TABLE IF NOT EXISTS prePedidoItem ("
//           "prePedidoItemId INTEGER PRIMARY KEY NOT NULL,"
//           "prePedidoId BIGINT,"
//           "prePedidoUuid TEXT,"
//           "nroItem INTEGER,"
//           "produtoId INTEGER,"
//           "descricaoPrd TEXT,"
//           "quantidade FLOAT,"
//           "valorUnit FLOAT,"
//           "acrescimo FLOAT,"
//           "desconto FLOAT,"
//           "valorComissao FLOAT,"
//           "descAcresGeral FLOAT,"
//           "tipoItem TEXT,"
//           "valorTotal FLOAT"
//           ")");

//       // await database.execute("CREATE TABLE IF NOT EXISTS Parametros_tb("
//       //     "Codigo_par INTEGER NOT NULL PRIMARY KEY,"
//       //     "Codigo_ven INTEGER,"
//       //     "Codigo_emp INTEGER, "
//       //     "Versao_par VARCHAR(100),"
//       //     "DataUltimaCarga_par DATETIME,"
//       //     "Porta_mssql_par VARCHAR(4),"
//       //     "Serv_mssql_par VARCHAR(100),"
//       //     "Terminal_par INTEGER,"
//       //     "FlexDoMes_par FLOAT(15,3),"
//       //     "ControlaClientesPorVendedor_par VARCHAR(1) DEFAULT 'N',"
//       //     "UtilizaBaixaReceber_par VARCHAR(1) DEFAULT 'N',"
//       //     "UtilizaFlex_par VARCHAR(1) DEFAULT 'N',"
//       //     "PrecoPorCliente_par VARCHAR(1) DEFAULT 'N',"
//       //     "UtilizaVariedade_par VARCHAR(1) DEFAULT 'N',"
//       //     "ManterPedFaturados INTEGER,"
//       //     "UtilizaIndicadorEstoque_par VARCHAR(1) DEFAULT 'N', "
//       //     "TransmiteDiretoVendas_par VARCHAR(1) DEFAULT 'S',"
//       //     "ValorMinimoPpc_par FLOAT(15,3),"
//       //     "CidadeVenda_par INTEGER,"
//       //     "UltimoCliente_par INTEGER,"
//       //     "ObrigaClienteCGCCPF_par VARCHAR(1) DEFAULT 'N',"
//       //     "ObrigaClienteInscEstRG_par VARCHAR(1) DEFAULT 'N',"
//       //     "ObrigaClienteEndereco_par VARCHAR(1) DEFAULT 'N',"
//       //     "ObrigaClienteBairro_par VARCHAR(1) DEFAULT 'N',"
//       //     "NaoUtilizarSecao_par VARCHAR(1) DEFAULT 'N',"
//       //     "ConsultaProdutoCodFabricante_par VARCHAR(1) DEFAULT 'N',"
//       //     "LimiteDeDiasParaBloqueio_par INTEGER,"
//       //     "UtilizaComissao_par VARCHAR(1) DEFAULT 'N', "
//       //     "Codigo_sup INTEGER,"
//       //     "DiasAnalise_par INTEGER DEFAULT 30,"
//       //     "UrlImagemVendaOnline_par TEXT,"
//       //     "VendaEfetBaseVisita_par varchar(1) DEFAULT 'S'"
//       //     ")");

//       await database.execute("CREATE TABLE IF NOT EXISTS produtoVariacao ("
//           "id INTEGER PRIMARY KEY NOT NULL,"
//           "produtoId INTEGER,"
//           "produtoPaiId INTEGER,"
//           "gradeId INTEGER,"
//           "gradeDescricao TEXT,"
//           "variedadeId INTEGER,"
//           "variedadeDescricao TEXT,"
//           "lastChange TEXT"
//           ")");

//       await database.execute("CREATE TABLE IF NOT EXISTS gradeProdutoVariacao ("
//           "id INTEGER PRIMARY KEY NOT NULL,"
//           "produtoPaiId INTEGER NOT NULL,"
//           "gradeId INTEGER,"
//           "gradeDescricao TEXT,"
//           "variedadeId INTEGER,"
//           "variedadeDescricao TEXT,"
//           "lastChange TEXT"
//           ")");

//       //USUARIOS
//       await database.execute("CREATE TABLE IF NOT EXISTS Usuario ("
//           "userName TEXT PRIMARY KEY NOT NULL,"
//           "senha TEXT"
//           ")");
//     }
//   }
// }
