object frmEntradaProduto: TfrmEntradaProduto
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Entrada de Produtos'
  ClientHeight = 525
  ClientWidth = 971
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pn_EntradaProduto: TPanel
    Left = 0
    Top = 0
    Width = 971
    Height = 265
    Align = alTop
    BevelOuter = bvNone
    ParentBackground = False
    TabOrder = 0
    object Panel1: TPanel
      Left = 0
      Top = 0
      Width = 971
      Height = 57
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Caption = '  Entrada de Produtos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
    end
    object pn_Controls: TPanel
      Left = 0
      Top = 57
      Width = 971
      Height = 223
      Align = alTop
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 1
      object Label1: TLabel
        Left = 36
        Top = 18
        Width = 104
        Height = 16
        Caption = 'ID. Produto [F4]'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 333
        Top = 16
        Width = 119
        Height = 16
        Caption = 'Descri'#231#227'o Produto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 36
        Top = 70
        Width = 90
        Height = 16
        Caption = 'Qtde. Entrada'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 341
        Top = 69
        Width = 120
        Height = 16
        Caption = 'Valor Unit. Compra'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 635
        Top = 69
        Width = 70
        Height = 16
        Caption = 'Valor Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label11: TLabel
        Left = 155
        Top = 18
        Width = 103
        Height = 16
        Caption = 'C'#243'digo de Barra'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Edt_IDProduto: TEdit
        Left = 36
        Top = 40
        Width = 105
        Height = 21
        TabOrder = 0
        OnKeyDown = Edt_IDProdutoKeyDown
      end
      object Edt_CodBarra: TEdit
        Left = 155
        Top = 39
        Width = 165
        Height = 21
        AutoSelect = False
        Color = 14155775
        Enabled = False
        TabOrder = 1
      end
      object Edt_DescrProduto: TEdit
        Left = 333
        Top = 39
        Width = 478
        Height = 21
        AutoSelect = False
        Color = 14155775
        Enabled = False
        TabOrder = 2
      end
      object Edt_QtdeEntrada: TEdit
        Left = 36
        Top = 92
        Width = 145
        Height = 21
        TabOrder = 3
        OnExit = Edt_QtdeEntradaExit
        OnKeyPress = Edt_QtdeEntradaKeyPress
      end
      object Edt_ValUnitCompra: TEdit
        Left = 341
        Top = 91
        Width = 177
        Height = 21
        TabOrder = 4
        OnExit = Edt_ValUnitCompraExit
        OnKeyPress = Edt_ValUnitCompraKeyPress
      end
      object Edt_ValorTotal: TEdit
        Left = 632
        Top = 92
        Width = 177
        Height = 21
        TabOrder = 5
        OnExit = Edt_ValorTotalExit
        OnKeyPress = Edt_ValorTotalKeyPress
      end
      object cxButton1: TcxButton
        Left = 396
        Top = 147
        Width = 137
        Height = 41
        Caption = 'Imprimir Relat'#243'rio'
        OptionsImage.ImageIndex = 8
        TabOrder = 6
        OnClick = cxButton1Click
      end
      object btnUltimo: TButton
        Left = 552
        Top = 154
        Width = 28
        Height = 29
        Hint = 'Vai para o ultimo'
        Caption = '<<'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 7
        OnClick = btnUltimoClick
      end
      object btnProximo: TButton
        Left = 585
        Top = 154
        Width = 28
        Height = 29
        Hint = 'Vai para o pr'#243'ximo'
        Caption = '<'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 8
        OnClick = btnProximoClick
      end
      object btnAnterior: TButton
        Left = 612
        Top = 154
        Width = 28
        Height = 29
        Hint = 'Vai para o anterior'
        Caption = '>'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 9
        OnClick = btnAnteriorClick
      end
      object btnPrimeiro: TButton
        Left = 639
        Top = 154
        Width = 28
        Height = 29
        Hint = 'Vai para o primeiro'
        Caption = '>>'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 10
        OnClick = btnPrimeiroClick
      end
      object btnInserir: TButton
        Left = 673
        Top = 155
        Width = 28
        Height = 28
        Hint = 'Inserir dados'
        Caption = '+'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 11
        OnClick = btnInserirClick
      end
      object btnExcluir: TButton
        Left = 700
        Top = 155
        Width = 28
        Height = 28
        Hint = 'Excluir dados'
        BiDiMode = bdLeftToRight
        Caption = '-'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 12
        OnClick = btnExcluirClick
      end
      object btnEditar: TButton
        Left = 728
        Top = 154
        Width = 28
        Height = 29
        Hint = 'Editar dados'
        Caption = #9650
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 13
        OnClick = btnEditarClick
      end
      object btnSalvar: TButton
        Left = 756
        Top = 154
        Width = 28
        Height = 29
        Hint = 'Salvar dados'
        Caption = 'V'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 14
        OnClick = btnSalvarClick
      end
      object btnCancelar: TButton
        Left = 784
        Top = 154
        Width = 28
        Height = 29
        Hint = 'Cancelar'
        Caption = 'X'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 15
        OnClick = btnCancelarClick
      end
    end
  end
  object pn_Grid: TPanel
    Left = 0
    Top = 265
    Width = 971
    Height = 260
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object grd_EntProd: TcxGrid
      Left = 0
      Top = 0
      Width = 971
      Height = 260
      Align = alClient
      TabOrder = 0
      LookAndFeel.NativeStyle = True
      object grd_EntProdDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = ds_EntradaProduto
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.GroupByBox = False
        object grd_ClientesCODIGO_BAR: TcxGridDBColumn
          DataBinding.FieldName = 'CODIGO_BAR'
        end
        object grd_ClientesDESCRICAOPRODUTO: TcxGridDBColumn
          DataBinding.FieldName = 'DESCRICAOPRODUTO'
          Width = 326
        end
        object grd_ClientesID_PRODUTO: TcxGridDBColumn
          DataBinding.FieldName = 'ID_PRODUTO'
        end
        object grd_ClientesQUANTIDADE_ENTRADA: TcxGridDBColumn
          DataBinding.FieldName = 'QUANTIDADE_ENTRADA'
        end
        object grd_ClientesVALOR_UNITARIO_COMPRA: TcxGridDBColumn
          DataBinding.FieldName = 'VALOR_UNITARIO_COMPRA'
        end
        object grd_ClientesVALOR_TOTAL: TcxGridDBColumn
          DataBinding.FieldName = 'VALOR_TOTAL'
        end
      end
      object grd_EntProdLevel1: TcxGridLevel
        GridView = grd_EntProdDBTableView1
      end
    end
  end
  object ds_EntradaProduto: TDataSource
    DataSet = TB_EntradaProduto
    Left = 608
    Top = 376
  end
  object TB_EntradaProduto: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'ID_PRODUTO'
        DataType = ftInteger
      end
      item
        Name = 'CODIGO_BAR'
        Attributes = [faReadonly]
        DataType = ftString
        Size = 13
      end
      item
        Name = 'DESCRICAOPRODUTO'
        Attributes = [faReadonly]
        DataType = ftString
        Size = 60
      end
      item
        Name = 'QUANTIDADE_ENTRADA'
        DataType = ftSingle
      end
      item
        Name = 'VALOR_UNITARIO_COMPRA'
        DataType = ftSingle
      end
      item
        Name = 'VALOR_TOTAL'
        DataType = ftSingle
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'DSP_EntradaProduto'
    StoreDefs = True
    BeforeInsert = TB_EntradaProdutoBeforeInsert
    BeforeEdit = TB_EntradaProdutoBeforeEdit
    BeforePost = TB_EntradaProdutoBeforePost
    BeforeDelete = TB_EntradaProdutoBeforeDelete
    Left = 672
    Top = 376
    object TB_EntradaProdutoID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TB_EntradaProdutoID_PRODUTO: TIntegerField
      DisplayLabel = 'Cod. Produto'
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
    end
    object TB_EntradaProdutoCODIGO_BAR: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'C'#243'digo Barra'
      FieldName = 'CODIGO_BAR'
      Origin = 'CODIGO_BAR'
      ProviderFlags = []
      ReadOnly = True
      Size = 13
    end
    object TB_EntradaProdutoDESCRICAOPRODUTO: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Descri'#231#227'o do Produto'
      FieldName = 'DESCRICAOPRODUTO'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 60
    end
    object TB_EntradaProdutoQUANTIDADE_ENTRADA: TSingleField
      DisplayLabel = 'Qtde. Entrada'
      FieldName = 'QUANTIDADE_ENTRADA'
      Origin = 'QUANTIDADE_ENTRADA'
      DisplayFormat = ',0.00'
    end
    object TB_EntradaProdutoVALOR_UNITARIO_COMPRA: TSingleField
      DisplayLabel = 'Valor Unit. Compra'
      FieldName = 'VALOR_UNITARIO_COMPRA'
      Origin = 'VALOR_UNITARIO_COMPRA'
      DisplayFormat = ',0.00'
    end
    object TB_EntradaProdutoVALOR_TOTAL: TSingleField
      DisplayLabel = 'Valor Total'
      FieldName = 'VALOR_TOTAL'
      Origin = 'VALOR_TOTAL'
      DisplayFormat = ',0.00'
    end
  end
  object DSP_EntradaProduto: TDataSetProvider
    Left = 648
    Top = 328
  end
  object PrnEntProd: TdxComponentPrinter
    CurrentLink = PrnEntProdLink1
    PreviewOptions.Caption = 'Rela'#231#227'o de Entradas por Produtos'
    PrintTitle = 'Rela'#231#227'o de Entradas por Produtos'
    Version = 0
    Left = 608
    Top = 265
    PixelsPerInch = 96
    object PrnEntProdLink1: TdxGridReportLink
      Active = True
      Component = grd_EntProd
      PageNumberFormat = pnfNumeral
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 6350
      PrinterPage.Header = 6350
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 12700
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.CreationDate = 45599.941631053240000000
      TimeFormat = 0
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
  end
end
