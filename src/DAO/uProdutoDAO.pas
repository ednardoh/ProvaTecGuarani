unit uProdutoDAO;

interface

uses
  FireDAC.Comp.Client, uConexao, uProdutoModel, System.SysUtils, uSistemaControl,
  Data.DB, Vcl.Dialogs;

type
  TProdutoDAO = class
  private
    FConexao: TConexao;
  public
    constructor Create;

    function Incluir(AProdutoModel: TProdutoModel): Boolean;
    function Alterar(AProdutoModel: TProdutoModel): Boolean;
    function Excluir(AProdutoModel: TProdutoModel): Boolean;
    function GetId: Integer;
    function Obter(AorderBy: Integer;AValorparcial: string): TFDQuery;
    function ObterProdDesc(AValorpesquisa: string): TFDQuery;
    function ObterCodBarra(AValorpesquisa: string): TFDQuery;
    function MovimentaEstoque(AValor: Double; Operac: string; AId: string): TFDQuery;

  end;

implementation

{ TProdutoDAO }

constructor TProdutoDAO.Create;
begin
  FConexao := TSistemaControl.GetInstance().Conexao;
end;

function TProdutoDAO.GetId: Integer;
var
  VQry: TFDQuery;
begin
  VQry := FConexao.CriarQuery();
  try
    VQry.Open('SELECT coalesce(MAX(ID),0)+1 AS ID FROM PRODUTOS');
    try
      Result := VQry.Fields[0].AsInteger;
    finally
      VQry.Close;
    end;
  finally
    VQry.Free;
  end;
end;

function TProdutoDAO.Incluir(AProdutoModel: TProdutoModel): Boolean;
var
  VQry: TFDQuery;
begin
  VQry := FConexao.CriarQuery();
  try
    VQry.ExecSQL('EXECUTE PROCEDURE proc_produtos( '+
                 '      :PAR_CATEGORIAPRD,         '+
                 '      :PAR_QTD_ESTOQUE,          '+
                 '      :PAR_PRECO_VENDA,          '+
                 '      :PAR_PRECO_COMPRA,         '+
                 '      :PAR_DESCRICAO,            '+
                 '      :PAR_CODIGO_BAR,           '+
                 '      :TIPO,                     '+
                 '      :PAR_ID)',
                  [AProdutoModel.CATEGORIAPRD,
                   AProdutoModel.QTDEESTOQUE,
                   AProdutoModel.PRECOVENDA,
                   AProdutoModel.PRECOCOMPRA,
                   AProdutoModel.Descricao,
                   AProdutoModel.Codigobarra,
                   'I',
                   AProdutoModel.Codigo]);

    VQry.Connection.Commit;
    VQry.Connection.CommitRetaining;
    Result := True;
  finally
    VQry.Free;
  end;
end;

function TProdutoDAO.MovimentaEstoque(AValor: Double; Operac: string; AId: string): TFDQuery;
var
  vQry: TFDQuery;
begin
  vQry := FConexao.CriarQuery();
  try
    vQry.Close;
    if Operac = '+' then
    begin
      vQry.ExecSQL('update PRODUTOS set QTD_ESTOQUE=QTD_ESTOQUE+:QTD_ESTOQUE where ID =:ID',
                   [AValor, AId]);
    end
    else
    begin
      vQry.ExecSQL('update PRODUTOS set QTD_ESTOQUE=QTD_ESTOQUE-:QTD_ESTOQUE where ID =:ID',
               [AValor, AId]);
    end;

    vQry.Connection.Commit;
    vQry.Connection.CommitRetaining;
    Result := vQry;
  finally
    VQry.Free;
  end;
end;

function TProdutoDAO.Obter(AorderBy: Integer;AValorparcial: string): TFDQuery;
var
  vQry: TFDQuery;
begin
  vQry := FConexao.CriarQuery();
  if AValorparcial = '' then
    begin
      vQry.Open('select ID,                                                           '+
                '       CODIGO_BAR,                                                   '+
                '       DESCRICAO,                                                    '+
                '       PRECO_COMPRA,                                                 '+
                '       PRECO_VENDA,                                                  '+
                '       QTD_ESTOQUE,                                                  '+
                '       CATEGORIAPRD,                                                 '+
                '       case CATEGORIAPRD when 1  then ''Eletronicos''                '+
                '                         when 2  then ''Vestuario''                  '+
                '                         when 3  then ''Alimentos e bebidas''        '+
                '                         when 4  then ''Ferramentas''                '+
                '                         when 5  then ''Embalagens''                 '+
                '                         when 6  then ''Servicos digitais''          '+
                '                         when 7  then ''Perfumaria e cosmeticos''    '+
                '                         when 8  then ''Casa e decoracao''           '+
                '                         when 9  then ''Saude e bem-estar''          '+
                '                         when 10 then ''Utensilios domesticos''      '+
                '                         when 11 then ''Midia''                      '+
                '                         when 12 then ''Produtos para pets''         '+
                '                         when 13 then ''Equipamentos de escritorio'' '+
                '       end as DescrCategoriaPRD                                      '+
                'from PRODUTOS order by ' + AorderBy.ToString);
    end
  else
  begin
    vQry.Open('select ID,                                                           '+
              '       CODIGO_BAR,                                                   '+
              '       DESCRICAO,                                                    '+
              '       PRECO_COMPRA,                                                 '+
              '       PRECO_VENDA,                                                  '+
              '       QTD_ESTOQUE,                                                  '+
              '       CATEGORIAPRD,                                                 '+
              '       case CATEGORIAPRD when 1  then ''Eletronicos''                '+
              '                         when 2  then ''Vestuario''                  '+
              '                         when 3  then ''Alimentos e bebidas''        '+
              '                         when 4  then ''Ferramentas''                '+
              '                         when 5  then ''Embalagens''                 '+
              '                         when 6  then ''Servicos digitais''          '+
              '                         when 7  then ''Perfumaria e cosmeticos''    '+
              '                         when 8  then ''Casa e decoracao''           '+
              '                         when 9  then ''Saude e bem-estar''          '+
              '                         when 10 then ''Utensilios domesticos''      '+
              '                         when 11 then ''Midia''                      '+
              '                         when 12 then ''Produtos para pets''         '+
              '                         when 13 then ''Equipamentos de escritorio'' '+
              '       end as DescrCategoriaPRD                                      '+
              'from PRODUTOS                                                        '+
              ' where DESCRICAO like '+ quotedstr(AValorparcial) + ' order by ' + AorderBy.ToString);
  end;
  Result := vQry;
end;

function TProdutoDAO.ObterCodBarra(AValorpesquisa: string): TFDQuery;
var
  vQry: TFDQuery;
begin
  vQry := FConexao.CriarQuery();

  vQry.Open('select CODIGO_BAR from PRODUTOS where ID = '+ quotedstr(AValorpesquisa));

  Result := vQry;
end;

function TProdutoDAO.ObterProdDesc(AValorpesquisa: string): TFDQuery;
var
  VQry: TFDQuery;
begin
  VQry := FConexao.CriarQuery();

  VQry.Open('select ID, CODIGO_BAR, DESCRICAO, PRECO_COMPRA, PRECO_VENDA, QTD_ESTOQUE, CATEGORIAPRD from PRODUTOS where ID = '+ quotedstr(AValorpesquisa));

  Result := VQry;
end;

function TProdutoDAO.Alterar(AProdutoModel: TProdutoModel): Boolean;
var
  vQry: TFDQuery;
begin
  vQry := FConexao.CriarQuery();
  try
    vQry.ExecSQL('EXECUTE PROCEDURE proc_produtos( '+
                 '      :PAR_CATEGORIAPRD,         '+
                 '      :PAR_QTD_ESTOQUE,          '+
                 '      :PAR_PRECO_VENDA,          '+
                 '      :PAR_PRECO_COMPRA,         '+
                 '      :PAR_DESCRICAO,            '+
                 '      :PAR_CODIGO_BAR,           '+
                 '      :TIPO,                     '+
                 '      :PAR_ID)',
                  [AProdutoModel.CATEGORIAPRD,
                   AProdutoModel.QTDEESTOQUE,
                   AProdutoModel.PRECOVENDA,
                   AProdutoModel.PRECOCOMPRA,
                   AProdutoModel.Descricao,
                   AProdutoModel.Codigobarra,
                   'A',
                   AProdutoModel.Codigo]);

    vQry.Connection.Commit;
    vQry.Connection.CommitRetaining;
    Result := True;
  finally
    vQry.Free;
  end;
end;

function TProdutoDAO.Excluir(AProdutoModel: TProdutoModel): Boolean;
var
  vQry: TFDQuery;
begin
  vQry := FConexao.CriarQuery();
  try
    try
    vQry.ExecSQL('EXECUTE PROCEDURE proc_produtos( '+
                 '      :PAR_CATEGORIAPRD,         '+
                 '      :PAR_QTD_ESTOQUE,          '+
                 '      :PAR_PRECO_VENDA,          '+
                 '      :PAR_PRECO_COMPRA,         '+
                 '      :PAR_DESCRICAO,            '+
                 '      :PAR_CODIGO_BAR,           '+
                 '      :TIPO,                     '+
                 '      :PAR_ID)',
                  [-1,
                   0.00,
                   0.00,
                   0.00,
                   '',
                   '',
                   'E',
                   AProdutoModel.Codigo]);

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

end.
