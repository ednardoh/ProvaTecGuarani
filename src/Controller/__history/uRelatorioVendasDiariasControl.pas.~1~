unit uRelatorioVendasDiariasControl;

interface

uses
  uRelatorioVendasDiariasModel, System.SysUtils, FireDAC.Comp.Client;

type
  TRelatorioVendasDiariasControl = class
    private
      FRelatorioVendasDiariasModel: TRelatorioVendasDiariasModel;
    public
      constructor Create;
      destructor Destroy; override;

      function Obter(DataIni, DataFin: string): TFDQuery;
  end;

implementation

{ TRelatorioVendasDiariasControl }

constructor TRelatorioVendasDiariasControl.Create;
begin
  FRelatorioVendasDiariasModel := TRelatorioVendasDiariasModel.Create;
end;

destructor TRelatorioVendasDiariasControl.Destroy;
begin
  FRelatorioVendasDiariasModel.Free;
  inherited;
end;

function TRelatorioVendasDiariasControl.Obter(DataIni,
  DataFin: string): TFDQuery;
begin
  Result := FRelatorioVendasDiariasModel.Obter(DataIni, DataFin);
end;

end.
