unit uRelatorioVendasDiariasModel;

interface

uses
  uEnumerado, FireDAC.Comp.Client;

type
  TRelatorioVendasDiariasModel = class
    private
      Fid : string;
      Fnumpedi : string;
      Fdataemissao: TDate;
      Fcodcliente: string;
      Fnome: string;
      Fidproduto: string;
      Fcodigobar: string;
      Fdescricao: string;
      Fquantidade: Double;
      Fvalorunitario: Double;
      Fvalortotal: Double;

      procedure Setid(const Value: string);
      procedure Setnumpedi(const Value : string);
      procedure Setdataemissao(const Value : TDate);
      procedure Setcodcliente(const Value : string);
      procedure Setnome(const Value : string);
      procedure Setidproduto(const Value : string);
      procedure Setcodigobar(const Value : string);
      procedure Setdescricao(const Value : string);
      procedure Setquantidade(const Value : Double);
      procedure Setvalorunitario(const Value : Double);
      procedure Setvalortotal(const Value : Double);
    public
      function Obter(DataIni, DataFin: string): TFDQuery;

      property id : string read Fid write Setid;
      property numpedi : string read Fnumpedi write Setnumpedi;
      property dataemissao: TDate read Fdataemissao write Setdataemissao;
      property codcliente: string read Fcodcliente write Setcodcliente;
      property nome: string read Fnome write Setnome;
      property idproduto: string read Fidproduto write Setidproduto;
      property codigobar: string read Fcodigobar write Setcodigobar;
      property descricao: string read Fdescricao write Setdescricao;
      property quantidade: Double read Fquantidade write Setquantidade;
      property valorunitario: Double read Fvalorunitario write Setvalorunitario;
      property valortotal: Double read Fvalortotal write Setvalortotal;
  end;

implementation

Uses uRelatorioVendasDiariasDAO;

{ TRelatorioVendasDiariasModel }

function TRelatorioVendasDiariasModel.Obter(DataIni, DataFin: string): TFDQuery;
var
  ARelatorioVendasDiariasDAO: TRelatorioVendasDiariasDAO;
begin
  ARelatorioVendasDiariasDAO:=TRelatorioVendasDiariasDAO.Create;
  try
    Result := ARelatorioVendasDiariasDAO.Obter(DataIni,DataFin);
  finally
    ARelatorioVendasDiariasDAO.Free;
  end;
end;

procedure TRelatorioVendasDiariasModel.Setcodcliente(const Value: string);
begin
  Fcodcliente := Value;
end;

procedure TRelatorioVendasDiariasModel.Setcodigobar(const Value: string);
begin
  Fcodigobar := Value;
end;

procedure TRelatorioVendasDiariasModel.Setdataemissao(const Value: TDate);
begin
  Fdataemissao := Value;
end;

procedure TRelatorioVendasDiariasModel.Setdescricao(const Value: string);
begin
  Fdescricao := Value;
end;

procedure TRelatorioVendasDiariasModel.Setid(const Value: string);
begin
  Fid := Value;
end;

procedure TRelatorioVendasDiariasModel.Setidproduto(const Value: string);
begin
  Fidproduto := Value;
end;

procedure TRelatorioVendasDiariasModel.Setnome(const Value: string);
begin
  Fnome := Value;
end;

procedure TRelatorioVendasDiariasModel.Setnumpedi(const Value: string);
begin
  Fnumpedi := Value;
end;

procedure TRelatorioVendasDiariasModel.Setquantidade(const Value: Double);
begin
  Fquantidade := Value;
end;

procedure TRelatorioVendasDiariasModel.Setvalortotal(const Value: Double);
begin
  Fvalortotal := Value;
end;

procedure TRelatorioVendasDiariasModel.Setvalorunitario(const Value: Double);
begin
  Fvalorunitario := Value;
end;

end.
