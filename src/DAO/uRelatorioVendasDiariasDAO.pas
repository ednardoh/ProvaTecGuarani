unit uRelatorioVendasDiariasDAO;

interface

uses
  FireDAC.Comp.Client, uConexao, uClienteModel, System.SysUtils, uSistemaControl;

type TRelatorioVendasDiariasDAO = class
  private
    FConexao: TConexao;
  public
    constructor Create;

    function Obter(DataIni, DataFin: string): TFDQuery;
    function ObterDoisMaisVendido(DataIni, DataFin: string): TFDQuery;
end;

implementation

{ TRelatorioVendasDiariasDAO }
constructor TRelatorioVendasDiariasDAO.Create;
begin
  FConexao := TSistemaControl.GetInstance().Conexao;
end;

function TRelatorioVendasDiariasDAO.Obter(DataIni, DataFin: string): TFDQuery;
var
  vQry: TFDQuery;
begin
  vQry := FConexao.CriarQuery();
  vQry.close;
  vQry.SQL.Clear;
  vQry.SQL.Add('select * from PROC_VENDAS_DIARIAS(:DatINI,:DatFIN)');
  vQry.ParamByName('DatINI').AsString := FormatDateTime('dd.mm.yyyy',StrToDateTime(DataIni));
  vQry.ParamByName('DatFIN').AsString := FormatDateTime('dd.mm.yyyy',StrToDateTime(DataFin));
  vQry.Open;
  Result := vQry;
end;

function TRelatorioVendasDiariasDAO.ObterDoisMaisVendido(DataIni,
  DataFin: string): TFDQuery;
var
  vQry: TFDQuery;
begin
  vQry := FConexao.CriarQuery();
  vQry.close;
  vQry.SQL.Clear;
  vQry.SQL.Add('select * from PROC_DOISPRODMAISVENDIDO(:DatINI,:DatFIN)');
  vQry.ParamByName('DatINI').AsString := FormatDateTime('dd.mm.yyyy',StrToDateTime(DataIni));
  vQry.ParamByName('DatFIN').AsString := FormatDateTime('dd.mm.yyyy',StrToDateTime(DataFin));
  vQry.Open;
  Result := vQry;
end;

end.
