unit uClienteDAO;

interface

uses
  FireDAC.Comp.Client, uConexao, uClienteModel, System.SysUtils, uSistemaControl,
  Data.DB, Vcl.Dialogs;

type
  TClienteDao = class
  private
    FConexao: TConexao;
  public
    constructor Create;

    function Incluir(AClienteModel: TClienteModel): Boolean;
    function Alterar(AClienteModel: TClienteModel): Boolean;
    function Excluir(AClienteModel: TClienteModel): Boolean;
    function GetId: Integer;
    function Obter(AorderBy: Integer;AValorparcial: string): TFDQuery;
    function ObterCLIByID(AValorpesquisa: string): TFDQuery;
  end;

implementation

{ TClienteDao }

constructor TClienteDao.Create;
begin
  FConexao := TSistemaControl.GetInstance().Conexao;
end;

function TClienteDao.GetId: Integer;
var
  vQry: TFDQuery;
begin
  vQry := FConexao.CriarQuery();
  try
    vQry.Open('SELECT coalesce(MAX(CODIGO),0)+1 AS CODIGO FROM CLIENTES');
    try
      Result := vQry.Fields[0].AsInteger;
    finally
      vQry.Close;
    end;
  finally
    vQry.Free;
  end;
end;

function TClienteDao.Incluir(AClienteModel: TClienteModel): Boolean;
var
  vQry: TFDQuery;
begin
  vQry := FConexao.CriarQuery();
  try
    try
      vQry.ExecSQL('EXECUTE PROCEDURE PROC_CLIENTES( '+
                   '                  :TIPO,         '+
                   '                  :PAR_CODIGO,   '+
                   '                  :PAR_CNPJ_CPF, '+
                   '                  :PAR_TELEFONE, '+
                   '                  :PAR_NOME,     '+
                   '                  :PAR_ENDERECO, '+
                   '                  :PAR_BAIRRO,   '+
                   '                  :PAR_CIDADE,   '+
                   '                  :PAR_NUMERO,   '+
                   '                  :PAR_CEP,      '+
                   '                  :PAR_UF)       ',
                    ['I',
                     AClienteModel.Codigo,
                     AClienteModel.CNPJ_CPF,
                     AClienteModel.TELEFONE,
                     AClienteModel.Nome,
                     AClienteModel.Endereco,
                     AClienteModel.Bairro,
                     AClienteModel.Cidade,
                     AClienteModel.Numero,
                     AClienteModel.Cep,
                     AClienteModel.UF]);

      vQry.Connection.Commit;
      vQry.Connection.CommitRetaining;
      Result := True;
    except
    on E: Exception do
      begin
        messagedlg('Erro: ' + E.Message,mtError,[mbok],0);
        vQry.Connection.Rollback;  //desfaz a transa��o
      end;
    end;
  finally
    vQry.Free;
  end;
end;

function TClienteDao.Excluir(AClienteModel: TClienteModel): Boolean;
var
  vQry: TFDQuery;
begin
  vQry := FConexao.CriarQuery();
  try
    try
      vQry.ExecSQL('EXECUTE PROCEDURE PROC_CLIENTES( '+
                   '                  :TIPO,         '+
                   '                  :PAR_CODIGO,   '+
                   '                  :PAR_CNPJ_CPF, '+
                   '                  :PAR_TELEFONE, '+
                   '                  :PAR_NOME,     '+
                   '                  :PAR_ENDERECO, '+
                   '                  :PAR_BAIRRO,   '+
                   '                  :PAR_CIDADE,   '+
                   '                  :PAR_NUMERO,   '+
                   '                  :PAR_CEP,      '+
                   '                  :PAR_UF)       ',
                    ['E',
                     AClienteModel.Codigo,
                     '',
                     '',
                     '',
                     '',
                     '',
                     '',
                     0,
                     '',
                     '']);

      vQry.Connection.Commit;
      vQry.Connection.CommitRetaining;
      Result := True;
    except
    on E: Exception do
      begin
        messagedlg('Erro: ' + E.Message,mtError,[mbok],0);
        vQry.Connection.Rollback;  //desfaz a transa��o
      end;
    end;
  finally
    vQry.Free;
  end;
end;

function TClienteDao.Alterar(AClienteModel: TClienteModel): Boolean;
var
  vQry: TFDQuery;
begin
  vQry := FConexao.CriarQuery();
  try
    try
      vQry.ExecSQL('EXECUTE PROCEDURE PROC_CLIENTES( '+
                   '                  :TIPO,         '+
                   '                  :PAR_CODIGO,   '+
                   '                  :PAR_CNPJ_CPF, '+
                   '                  :PAR_TELEFONE, '+
                   '                  :PAR_NOME,     '+
                   '                  :PAR_ENDERECO, '+
                   '                  :PAR_BAIRRO,   '+
                   '                  :PAR_CIDADE,   '+
                   '                  :PAR_NUMERO,   '+
                   '                  :PAR_CEP,      '+
                   '                  :PAR_UF)       ',
                    ['A',
                     AClienteModel.Codigo,
                     AClienteModel.CNPJ_CPF,
                     AClienteModel.TELEFONE,
                     AClienteModel.Nome,
                     AClienteModel.Endereco,
                     AClienteModel.Bairro,
                     AClienteModel.Cidade,
                     AClienteModel.Numero,
                     AClienteModel.Cep,
                     AClienteModel.UF]);

      vQry.Connection.Commit;
      vQry.Connection.CommitRetaining;
      Result := True;
    except
    on E: Exception do
      begin
        messagedlg('Erro: ' + E.Message,mtError,[mbok],0);
        vQry.Connection.Rollback;  //desfaz a transa��o
      end;
    end;
  finally
    vQry.Free;
  end;
end;

function TClienteDao.Obter(AorderBy: Integer;AValorparcial: string): TFDQuery;
var
  vQry: TFDQuery;
begin
  vQry := FConexao.CriarQuery();

  if AValorparcial = '' then
    vQry.Open('select codigo, nome, cnpj_cpf, telefone, endereco, bairro, Cidade, numero, Cep, UF from CLIENTES order by '+AorderBy.ToString)
  else
    vQry.Open('select codigo, nome, cnpj_cpf, telefone, endereco, bairro, Cidade, numero, Cep, UF from CLIENTES where NOME like ' + quotedstr(AValorparcial) + ' order by '+AorderBy.ToString);

  Result := vQry;
end;

function TClienteDao.ObterCLIByID(AValorpesquisa: string): TFDQuery;
var
  vQry: TFDQuery;
begin
  vQry := FConexao.CriarQuery();

  vQry.Open('select codigo, nome, cnpj_cpf, telefone, endereco, bairro, Cidade, numero, Cep, UF from CLIENTES where codigo = '+AValorpesquisa);

  Result := vQry;
end;

end.
