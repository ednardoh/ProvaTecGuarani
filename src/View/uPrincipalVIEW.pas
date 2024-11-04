unit uPrincipalVIEW;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, Menus, Vcl.StdCtrls;

type
  TfrmPrincipal = class(TForm)
    MainMenu_Principal: TMainMenu;
    Cadastros1: TMenuItem;
    Clientes1: TMenuItem;
    N1: TMenuItem;
    Produtos1: TMenuItem;
    EntradadeProdutos1: TMenuItem;
    Entradas1: TMenuItem;
    Vendas1: TMenuItem;
    PDV1: TMenuItem;
    Relatrios1: TMenuItem;
    Vendas2: TMenuItem;
    Sair1: TMenuItem;
    Relatriodeprodutosmaisvendido1: TMenuItem;
    N2: TMenuItem;
    Label1: TLabel;
    procedure Sair1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Clientes1Click(Sender: TObject);
    procedure Produtos1Click(Sender: TObject);
    procedure Entradas1Click(Sender: TObject);
    procedure PDV1Click(Sender: TObject);
    procedure Vendas2Click(Sender: TObject);
    procedure Relatriodeprodutosmaisvendido1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    LCodigo,
    LNome,
    LCodBarra,
    LPrcProd : string;
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses UConexaoBDpas, uCadClientesVIEW, uCadProdutosVIEW, uEntradaProdutoVIEW,
  UPedidoDeVendaVIEW, uRelVendasdiariasVIEW;

procedure TfrmPrincipal.Clientes1Click(Sender: TObject);
begin
  frmCad_Clientes :=TfrmCad_Clientes.create(Self);
  frmCad_Clientes.showmodal;
end;

procedure TfrmPrincipal.Entradas1Click(Sender: TObject);
begin
  frmEntradaProduto :=TfrmEntradaProduto.create(Self);
  frmEntradaProduto.ShowModal;
end;

procedure TfrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Application.messageBox('Deseja Realmente sair do Sistema?','Confirma��o',mb_YesNo+mb_IconInformation+mb_DefButton2) = IdYes then
    begin
      Application.Terminate;
    end
  else
    Action := canone;
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
  if not FileExists(pchar(ExtractFilePath(Application.ExeName) + 'ConfigDB.ini')) then
    begin
      frmConectaDB := TfrmConectaDB.create(Self);
      frmConectaDB.Showmodal;
      close;
    end;
end;

procedure TfrmPrincipal.PDV1Click(Sender: TObject);
begin
  frmMov_PEDVendas := TfrmMov_PEDVendas.create(Self);
  frmMov_PEDVendas.ShowModal;
end;

procedure TfrmPrincipal.Produtos1Click(Sender: TObject);
begin
  frmCadProdutos :=TfrmCadProdutos.Create(Self);
  frmCadProdutos.ShowModal;
end;

procedure TfrmPrincipal.Relatriodeprodutosmaisvendido1Click(Sender: TObject);
begin
  frmVendasdiaria :=TfrmVendasdiaria.create(Self);
  frmVendasdiaria.Caption :='Relat�rio de Dois Produtos mais vendidos';
  frmVendasdiaria.LTipoRelatorio := 'Produtomaisvendido';
  frmVendasdiaria.Showmodal;
end;

procedure TfrmPrincipal.Sair1Click(Sender: TObject);
begin
 close;
end;

procedure TfrmPrincipal.Vendas2Click(Sender: TObject);
begin
  frmVendasdiaria :=TfrmVendasdiaria.create(Self);
  frmVendasdiaria.Caption :='Relat�rio de Vendas di�rias';
  frmVendasdiaria.LTipoRelatorio := 'Vendasdireta';
  frmVendasdiaria.Showmodal;
end;

end.