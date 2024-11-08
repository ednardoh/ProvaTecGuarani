program Pedidos;

uses
  Forms,
  uPrincipalVIEW in 'View\uPrincipalVIEW.pas' {frmPrincipal},
  UConecta in 'Conexao\UConecta.pas',
  uConexao in 'Conexao\uConexao.pas',
  UConexaoBDpas in 'Conexao\UConexaoBDpas.pas' {frmConectaDB},
  uClienteModel in 'Model\uClienteModel.pas',
  uEnumerado in 'Model\uEnumerado.pas',
  uClienteDAO in 'DAO\uClienteDAO.pas',
  uSistemaControl in 'Controller\uSistemaControl.pas',
  uClienteControl in 'Controller\uClienteControl.pas',
  uCadClientesVIEW in 'View\uCadClientesVIEW.pas' {frmCad_Clientes},
  uProdutoModel in 'Model\uProdutoModel.pas',
  uProdutoDAO in 'DAO\uProdutoDAO.pas',
  uProdutoControl in 'Controller\uProdutoControl.pas',
  uCadProdutosVIEW in 'View\uCadProdutosVIEW.pas' {frmCadProdutos},
  uEntradasProdutosModel in 'Model\uEntradasProdutosModel.pas',
  uEntradasProdutosDAO in 'DAO\uEntradasProdutosDAO.pas',
  uEntradasProdutosControl in 'Controller\uEntradasProdutosControl.pas',
  uEntradaProdutoVIEW in 'View\uEntradaProdutoVIEW.pas' {frmEntradaProduto},
  uPesquisaVIEW in 'View\uPesquisaVIEW.pas' {FrmPesquisa},
  UPedidoDeVendaVIEW in 'View\UPedidoDeVendaVIEW.pas' {frmMov_PEDVendas},
  uPedidovendaModel in 'Model\uPedidovendaModel.pas',
  uPedidoXProdutosModel in 'Model\uPedidoXProdutosModel.pas',
  uPedidovendaDAO in 'DAO\uPedidovendaDAO.pas',
  uPedidoXProdutosDAO in 'DAO\uPedidoXProdutosDAO.pas',
  uPedidovendaControl in 'Controller\uPedidovendaControl.pas',
  uPedidoXProdutosControl in 'Controller\uPedidoXProdutosControl.pas',
  uPrintPEDVIEW in 'View\uPrintPEDVIEW.pas' {frm_PrintPED},
  uRelVendasdiariasVIEW in 'View\uRelVendasdiariasVIEW.pas' {frmVendasdiaria},
  uRelatorioVendasDiariasModel in 'Model\uRelatorioVendasDiariasModel.pas',
  uRelatorioVendasDiariasDAO in 'DAO\uRelatorioVendasDiariasDAO.pas',
  uRelatorioVendasDiariasControl in 'Controller\uRelatorioVendasDiariasControl.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmConectaDB, frmConectaDB);
  Application.Run;
end.
