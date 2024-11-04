unit uEntradasProdutosDAO;

interface

uses
  FireDAC.Comp.Client, uConexao, uEntradasProdutosModel, System.SysUtils, uSistemaControl,
  Data.DB, Vcl.Dialogs;

type
  TEntradasProdutosDAO = class
    private
      FConexao: TConexao;
    public
      constructor Create;

      function Incluir(AEntradasProdutosModel: TEntradasProdutosModel): Boolean;
      function Alterar(AEntradasProdutosModel: TEntradasProdutosModel): Boolean;
      function Excluir(AEntradasProdutosModel: TEntradasProdutosModel): Boolean;
      function GetId: Integer;
      function Obter(AValorpesquisa: string): TFDQuery;

  end;

implementation

{ TEntradasProdutosDAO }

constructor TEntradasProdutosDAO.Create;
begin
  FConexao := TSistemaControl.GetInstance().Conexao;
end;

function TEntradasProdutosDAO.GetId: Integer;
var
  vQry: TFDQuery;
begin
  vQry := FConexao.CriarQuery();
  try
    vQry.Open('SELECT coalesce(MAX(ID),0)+1 AS ID FROM ENTRADAS_PRODUTOS');
    try
      Result := vQry.Fields[0].AsInteger;
    finally
      vQry.Close;
    end;
  finally
    vQry.Free;
  end;
end;

function TEntradasProdutosDAO.Incluir(
  AEntradasProdutosModel: TEntradasProdutosModel): Boolean;
var
  vQry: TFDQuery;
begin
  vQry := FConexao.CriarQuery();
  try
    try
      vQry.Close;
      vQry.ExecSQL('EXECUTE PROCEDURE PROC_ENTRADAS_PRODUTOS (    '+
                   '                  :Par_VALOR_TOTAL,           '+
                   '                  :Par_VALOR_UNITARIO_COMPRA, '+
                   '                  :Par_QUANTIDADE_ENTRADA,    '+
                   '                  :Par_ID_PRODUTO,            '+
                   '                  :Par_ID,                    '+
                   '                  :TIPO)                      ',
                   [
                     (AEntradasProdutosModel.QuantidadeEntrada*AEntradasProdutosModel.ValorUnitarioCompra),
                     AEntradasProdutosModel.ValorUnitarioCompra,
                     AEntradasProdutosModel.QuantidadeEntrada,
                     AEntradasProdutosModel.IdProduto,
                     AEntradasProdutosModel.ID,
                     'I'
                   ]);
      vQry.Connection.Commit;
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

function TEntradasProdutosDAO.Alterar(
  AEntradasProdutosModel: TEntradasProdutosModel): Boolean;
var
  vQry: TFDQuery;
begin
  vQry := FConexao.CriarQuery();
  try
    try
      vQry.Close;
      vQry.ExecSQL('EXECUTE PROCEDURE PROC_ENTRADAS_PRODUTOS (    '+
                   '                  :Par_VALOR_TOTAL,           '+
                   '                  :Par_VALOR_UNITARIO_COMPRA, '+
                   '                  :Par_QUANTIDADE_ENTRADA,    '+
                   '                  :Par_ID_PRODUTO,            '+
                   '                  :Par_ID,                    '+
                   '                  :TIPO)                      ',
                   [
                     (AEntradasProdutosModel.QuantidadeEntrada*AEntradasProdutosModel.ValorUnitarioCompra),
                     AEntradasProdutosModel.ValorUnitarioCompra,
                     AEntradasProdutosModel.QuantidadeEntrada,
                     AEntradasProdutosModel.IdProduto,
                     AEntradasProdutosModel.ID,
                     'A'
                   ]);
      vQry.Connection.Commit;
      Result := True;
    except
    on E: Exception do
      begin
        messagedlg('Erro: ' + E.Message,mtError,[mbok],0);
        vQry.Connection.Rollback;  //desfaz a transa��o
      end;
    end;
  finally
    VQry.Free;
  end;
end;

function TEntradasProdutosDAO.Excluir(
  AEntradasProdutosModel: TEntradasProdutosModel): Boolean;
var
  VQry: TFDQuery;
begin
  vQry := FConexao.CriarQuery();
  try
    try
      vQry.Close;
      vQry.ExecSQL('EXECUTE PROCEDURE PROC_ENTRADAS_PRODUTOS (    '+
                   '                  :Par_VALOR_TOTAL,           '+
                   '                  :Par_VALOR_UNITARIO_COMPRA, '+
                   '                  :Par_QUANTIDADE_ENTRADA,    '+
                   '                  :Par_ID_PRODUTO,            '+
                   '                  :Par_ID,                    '+
                   '                  :TIPO)                      ',
                   [
                     0.00,
                     0.00,
                     0.00,
                     0,
                     AEntradasProdutosModel.ID,
                     'E'
                   ]);

      vQry.Connection.Commit;
      Result := True;
    except
    on E: Exception do
      begin
        messagedlg('Erro: ' + E.Message,mtError,[mbok],0);
        vQry.Connection.Rollback;  //desfaz a transa��o
      end;
    end;
  finally
    VQry.Free;
  end;
end;

function TEntradasProdutosDAO.Obter(AValorpesquisa: string): TFDQuery;
var
  vQry: TFDQuery;
begin
  vQry := FConexao.CriarQuery();

  if AValorpesquisa = '' then
  begin
    vQry.Open('select ep.ID,                                 '+
              '       ep.ID_PRODUTO,                         '+
              '       p.codigo_bar,                          '+
              '       p.descricao as DescricaoProduto,       '+
              '       ep.QUANTIDADE_ENTRADA,                 '+
              '       ep.VALOR_UNITARIO_COMPRA,              '+
              '       ep.VALOR_TOTAL                         '+
              'from ENTRADAS_PRODUTOS ep                     '+
              'Inner join PRODUTOS p on p.id = ep.id_produto '+
              'order by 1                                    ');
  end
  else
  begin
    vQry.Open('select ep.ID,                                 '+
              '       ep.ID_PRODUTO,                         '+
              '       p.codigo_bar,                          '+
              '       p.descricao as DescricaoProduto,       '+
              '       ep.QUANTIDADE_ENTRADA,                 '+
              '       ep.VALOR_UNITARIO_COMPRA,              '+
              '       ep.VALOR_TOTAL                         '+
              'from ENTRADAS_PRODUTOS ep                     '+
              'Inner join PRODUTOS p on p.id = ep.id_produto '+
              'WHERE ID=' + AValorpesquisa + ' order by 1    ');
  end;
  Result := VQry;
end;

end.