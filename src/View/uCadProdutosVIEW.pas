unit uCadProdutosVIEW;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Datasnap.Provider,
  System.ImageList, Vcl.ImgList, Datasnap.DBClient, Vcl.StdCtrls,
  VCLTee.TeCanvas, VCLTee.TeeEdiGrad, Vcl.DBCtrls, Vcl.Mask, Vcl.ExtCtrls,
  Vcl.Grids, Vcl.DBGrids, uProdutoControl, uEnumerado, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxEditorProducers, dxPScxExtEditorProducers,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, cxDBData,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Phys.FBDef, FireDAC.UI.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.VCLUI.Wait, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  FireDAC.Comp.Client, FireDAC.Phys.IBBase, FireDAC.Comp.DataSet, cxGridLevel,
  cxGridCustomView, cxGrid, cxClasses, dxPSCore, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk, dxPScxCommon, Vcl.Menus, cxButtons, cxImageList;

type
  TfrmCadProdutos = class(TForm)
    pn_Produtos: TPanel;
    Panel1: TPanel;
    pn_Controls: TPanel;
    Label9: TLabel;
    EdtPesquisa: TEdit;
    btnConsultar: TButtonGradient;
    ds_CadProdutos: TDataSource;
    TB_Produtos: TClientDataSet;
    ImageListIco: TImageList;
    DSP_Produtos: TDataSetProvider;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    Label11: TLabel;
    DBEdtCodigo: TDBEdit;
    DBEdtDescrProduto: TDBEdit;
    DBEdtPrcCompra: TDBEdit;
    DBEdtPrcVenda: TDBEdit;
    DBEdtQtdeEstoque: TDBEdit;
    DBEditCodBarra: TDBEdit;
    PRT_Produtos: TdxComponentPrinter;
    PRT_ProdutosLink1: TdxGridReportLink;
    cxImageList1: TcxImageList;
    cxButton1: TcxButton;
    cbo_CategoriaPRD: TComboBox;
    Label5: TLabel;
    pn_Grid: TPanel;
    grd_Produtos: TcxGrid;
    grd_ProdutosDBTableView1: TcxGridDBTableView;
    grd_ProdutosCodBarra: TcxGridDBColumn;
    grd_ProdutosDescricao: TcxGridDBColumn;
    grd_ProdutosPrcCompra: TcxGridDBColumn;
    grd_ProdutosPrcVenda: TcxGridDBColumn;
    grd_ProdutosQtdEstoque: TcxGridDBColumn;
    grd_ProdutosCATEGORIAPRD: TcxGridDBColumn;
    grd_ProdutosLevel1: TcxGridLevel;
    btnUltimo: TButton;
    btnProximo: TButton;
    btnAnterior: TButton;
    btnPrimeiro: TButton;
    btnInserir: TButton;
    btnExcluir: TButton;
    btnEditar: TButton;
    btnSalvar: TButton;
    btnCancelar: TButton;
    TB_ProdutosID: TIntegerField;
    TB_ProdutosCODIGO_BAR: TStringField;
    TB_ProdutosDESCRICAO: TStringField;
    TB_ProdutosPRECO_COMPRA: TSingleField;
    TB_ProdutosPRECO_VENDA: TSingleField;
    TB_ProdutosQTD_ESTOQUE: TSingleField;
    TB_ProdutosCATEGORIAPRD: TIntegerField;
    TB_ProdutosDescrCategoriaPRD: TStringField;
    grd_ProdutosDescrCategoriaPRD: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure PintaEdit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure TB_ProdutosBeforeEdit(DataSet: TDataSet);
    procedure TB_ProdutosBeforeInsert(DataSet: TDataSet);
    procedure TB_ProdutosBeforeDelete(DataSet: TDataSet);
    procedure TB_ProdutosBeforePost(DataSet: TDataSet);
    procedure btnConsultarClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure TB_ProdutosBeforeScroll(DataSet: TDataSet);
    procedure grd_ProdutosDBTableView1EndDrag(Sender, Target: TObject; X,
      Y: Integer);
    procedure grd_ProdutosDBTableView1CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure btnUltimoClick(Sender: TObject);
    procedure btnProximoClick(Sender: TObject);
    procedure btnAnteriorClick(Sender: TObject);
    procedure btnPrimeiroClick(Sender: TObject);
    procedure btnInserirClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
  private
    { Private declarations }
    Produtos: TProdutoControl;
    ATipo: TAcao;
    procedure PreencheDatasetProdutos;
    procedure Controlabotao(vInsert, vExcluir, vEditar, vSalvar, vCancelar: Boolean);
  public
    { Public declarations }
  end;

var
  frmCadProdutos: TfrmCadProdutos;

implementation

{$R *.dfm}

procedure TfrmCadProdutos.btnAnteriorClick(Sender: TObject);
begin
  TB_Produtos.Next;
end;

procedure TfrmCadProdutos.btnCancelarClick(Sender: TObject);
begin
  if TB_Produtos.State in [dsEdit, dsInsert] then
    begin
      TB_Produtos.Cancel;
      Controlabotao(True, True, True, False, False);
    end;
end;

procedure TfrmCadProdutos.btnConsultarClick(Sender: TObject);
begin
  if StrToIntDef(EdtPesquisa.Text, 0) = 0 then  //tem letras
  begin
    TB_Produtos.IndexFieldNames :='DESCRICAO';
    TB_Produtos.Locate('DESCRICAO',EdtPesquisa.Text,[loPartialKey, loCaseInsensitive]);
  end
  else
  begin
    TB_Produtos.IndexFieldNames :='ID';
    TB_Produtos.Locate('ID',EdtPesquisa.Text,[]);
  end;
end;

procedure TfrmCadProdutos.btnEditarClick(Sender: TObject);
begin
  Controlabotao(True, True, False, True, True);
  TB_Produtos.Edit;
  DBEditCodBarra.SetFocus;
end;

procedure TfrmCadProdutos.btnExcluirClick(Sender: TObject);
begin
  TB_Produtos.Delete;
end;

procedure TfrmCadProdutos.btnInserirClick(Sender: TObject);
begin
  Controlabotao(True, True, False, True, True);
  TB_Produtos.Append;
  DBEditCodBarra.SetFocus;
end;

procedure TfrmCadProdutos.btnPrimeiroClick(Sender: TObject);
begin
  TB_Produtos.First;
end;

procedure TfrmCadProdutos.btnProximoClick(Sender: TObject);
begin
  TB_Produtos.Prior;
end;

procedure TfrmCadProdutos.btnSalvarClick(Sender: TObject);
begin
  TB_Produtos.Post;
end;

procedure TfrmCadProdutos.btnUltimoClick(Sender: TObject);
begin
  TB_Produtos.Last;
end;

procedure TfrmCadProdutos.Controlabotao(vInsert, vExcluir, vEditar, vSalvar,
  vCancelar: Boolean);
begin
  btnInserir.Enabled := vInsert;
  btnExcluir.Enabled := vExcluir;
  btnEditar.Enabled  := vEditar;
  btnSalvar.Enabled  := vSalvar;
  btnCancelar.Enabled:= vCancelar;
end;

procedure TfrmCadProdutos.cxButton1Click(Sender: TObject);
begin
  PRT_Produtos.Preview(true);
end;

procedure TfrmCadProdutos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action :=cafree;
end;

procedure TfrmCadProdutos.FormCreate(Sender: TObject);
var nI: Integer;
begin
  For nI := 0 to ComponentCount-1 do
  begin
    if Components[nI] is TEdit  then
      (Components[nI] as TEdit).OnEnter := PintaEdit
    else
      if Components[nI] is TDBEdit then
        (Components[nI] as TDBEdit).OnEnter := PintaEdit;
  end;
  PreencheDatasetProdutos;
  Controlabotao(True, True, True, False, False);
end;

procedure TfrmCadProdutos.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_ESCAPE then
    close;
  if Key = VK_RETURN then
   perform(WM_NEXTDLGCTL,0,0);
end;

procedure TfrmCadProdutos.grd_ProdutosDBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  cbo_CategoriaPRD.ItemIndex := TB_ProdutosCATEGORIAPRD.Value -1;
end;

procedure TfrmCadProdutos.grd_ProdutosDBTableView1EndDrag(Sender,
  Target: TObject; X, Y: Integer);
begin
  cbo_CategoriaPRD.ItemIndex := TB_ProdutosCATEGORIAPRD.Value -1;
end;

procedure TfrmCadProdutos.PintaEdit(Sender: TObject);
var nI: Integer;
begin
  For nI := 0 to ComponentCount-1 do
  begin
    if (Components[nI] is TEdit) then
    begin
    if TEdit(Components[nI]).Focused then
      TEdit(Components[nI]).Color := $00D7FFFF
    else
      TEdit(Components[nI]).Color := clWhite;
    end
    else
      if (Components[nI] is TDBEdit) then
      begin
        if TDBEdit(Components[nI]).Focused then
          TDBEdit(Components[nI]).Color := $00D7FFFF
        else
          TDBEdit(Components[nI]).Color := clWhite;
      end;

  end;
end;

procedure TfrmCadProdutos.PreencheDatasetProdutos;
begin
  try
    Produtos:= TProdutoControl.Create;
    DSP_Produtos.DataSet := Produtos.Obter(1,'');
    TB_Produtos.close;
    TB_Produtos.Open;
  finally
    Produtos.Free;
  end;
end;

procedure TfrmCadProdutos.TB_ProdutosBeforeDelete(DataSet: TDataSet);
begin
  ATipo := uEnumerado.tacExcluir;
  if MessageDlg('Deseja realmente exluir essa informação ?',mtConfirmation, [mbYes,mbNo],1) = mrYes then
  begin
    try
      Produtos:= TProdutoControl.Create;
      Produtos.ProdutoModel.Acao        := ATipo;
      Produtos.ProdutoModel.Codigo      := TB_ProdutosID.AsInteger;
      Produtos.Salvar;
    finally
      messagedlg('Dado Excluido com sucesso!',mtinformation,[mbok],0);
      Produtos.Free;
      PreencheDatasetProdutos;
      Controlabotao(True, True, True, False, False);
    end;
  end;
end;

procedure TfrmCadProdutos.TB_ProdutosBeforeEdit(DataSet: TDataSet);
begin
  TB_ProdutosID.FocusControl;
end;

procedure TfrmCadProdutos.TB_ProdutosBeforeInsert(DataSet: TDataSet);
begin
  TB_ProdutosID.FocusControl;
end;

procedure TfrmCadProdutos.TB_ProdutosBeforePost(DataSet: TDataSet);
begin
  if TB_Produtos.State = dsInsert then  //grava no banco as inserções ou alterações
    begin
      ATipo := uEnumerado.tacIncluir;
      try
        Produtos:= TProdutoControl.Create;
        Produtos.ProdutoModel.Acao        := ATipo;
        TB_ProdutosID.AsInteger           := Produtos.ProdutoModel.GetId;
        Produtos.ProdutoModel.Codigo      := TB_ProdutosID.AsInteger; //gera codigo automático
        Produtos.ProdutoModel.Codigobarra := TB_ProdutosCODIGO_BAR.AsString;
        Produtos.ProdutoModel.Descricao   := TB_ProdutosDESCRICAO.AsString;
        Produtos.ProdutoModel.PRECOCOMPRA := TB_ProdutosPRECO_COMPRA.AsFloat;
        Produtos.ProdutoModel.PRECOVENDA  := TB_ProdutosPRECO_VENDA.AsFloat;
        Produtos.ProdutoModel.QTDEESTOQUE := TB_ProdutosQTD_ESTOQUE.AsFloat;
        Produtos.ProdutoModel.CATEGORIAPRD := cbo_CategoriaPRD.ItemIndex+1;
        Produtos.Salvar;
      finally
        messagedlg('Dados gravados com sucesso!',mtinformation,[mbok],0);
        Produtos.Free;
        PreencheDatasetProdutos;
        Controlabotao(True, True, True, False, False);
      end;
    end
    else
    if TB_Produtos.State = dsEdit then
    begin
      ATipo := uEnumerado.tacAlterar;
      try
        Produtos:= TProdutoControl.Create;
        Produtos.ProdutoModel.Acao        := ATipo;
        Produtos.ProdutoModel.Codigo      := TB_ProdutosID.AsInteger; //gera codigo automático
        Produtos.ProdutoModel.Codigobarra := TB_ProdutosCODIGO_BAR.AsString;
        Produtos.ProdutoModel.Descricao   := TB_ProdutosDESCRICAO.AsString;
        Produtos.ProdutoModel.PRECOCOMPRA := TB_ProdutosPRECO_COMPRA.AsFloat;
        Produtos.ProdutoModel.PRECOVENDA  := TB_ProdutosPRECO_VENDA.AsFloat;
        Produtos.ProdutoModel.QTDEESTOQUE := TB_ProdutosQTD_ESTOQUE.AsFloat;
        Produtos.ProdutoModel.CATEGORIAPRD := cbo_CategoriaPRD.ItemIndex+1;
        Produtos.Salvar;
      finally
        messagedlg('Dados gravados com sucesso!',mtinformation,[mbok],0);
        Produtos.Free;
        PreencheDatasetProdutos;
        Controlabotao(True, True, True, False, False);
      end;
    end;
    Abort;
end;

procedure TfrmCadProdutos.TB_ProdutosBeforeScroll(DataSet: TDataSet);
begin
  cbo_CategoriaPRD.ItemIndex := TB_ProdutosCATEGORIAPRD.Value -1;
end;

end.
