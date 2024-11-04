object frmVendasdiaria: TfrmVendasdiaria
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Relat'#243'rio de Vendas di'#225'rias'
  ClientHeight = 191
  ClientWidth = 278
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  Scaled = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 69
    Top = 16
    Width = 53
    Height = 13
    Caption = 'Data Inicial'
  end
  object Label2: TLabel
    Left = 161
    Top = 16
    Width = 48
    Height = 13
    Caption = 'Data Final'
  end
  object Edt_DataInicial: TMaskEdit
    Left = 63
    Top = 32
    Width = 76
    Height = 21
    EditMask = '!99/99/0000;1; '
    MaxLength = 10
    TabOrder = 0
    Text = '  /  /    '
    OnKeyPress = Edt_DataInicialKeyPress
  end
  object Edt_DataFinal: TMaskEdit
    Left = 159
    Top = 32
    Width = 76
    Height = 21
    EditMask = '!99/99/0000;1; '
    MaxLength = 10
    TabOrder = 1
    Text = '  /  /    '
  end
  object btnVializa: TButton
    Left = 63
    Top = 88
    Width = 75
    Height = 25
    Caption = 'Vizualizar'
    TabOrder = 3
    OnClick = btnVializaClick
  end
  object btnImprimir: TButton
    Left = 164
    Top = 88
    Width = 75
    Height = 25
    Caption = 'Imprimir'
    TabOrder = 2
    OnClick = btnImprimirClick
  end
  object QVendas: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DSP_Vendas'
    Left = 88
    Top = 120
    object QVendasID: TStringField
      FieldName = 'ID'
      Origin = 'ID'
      Size = 6
    end
    object QVendasNUMPEDI: TStringField
      FieldName = 'NUMPEDI'
      Origin = 'NUMPEDI'
      Size = 6
    end
    object QVendasDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
      Origin = 'DATA_EMISSAO'
    end
    object QVendasCOD_CLIENTE: TStringField
      FieldName = 'COD_CLIENTE'
      Origin = 'COD_CLIENTE'
      Size = 6
    end
    object QVendasNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 100
    end
    object QVendasID_PRODUTO: TStringField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
      Size = 6
    end
    object QVendasCODIGO_BAR: TStringField
      FieldName = 'CODIGO_BAR'
      Origin = 'CODIGO_BAR'
      Size = 13
    end
    object QVendasDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 60
    end
    object QVendasQUANTIDADE: TSingleField
      FieldName = 'QUANTIDADE'
      Origin = 'QUANTIDADE'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object QVendasVALOR_UNITARIO: TSingleField
      FieldName = 'VALOR_UNITARIO'
      Origin = 'VALOR_UNITARIO'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object QVendasVALOR_TOTAL_PROD: TSingleField
      FieldName = 'VALOR_TOTAL_PROD'
      Origin = 'VALOR_TOTAL_PROD'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
  end
  object ds_Vendas: TDataSource
    DataSet = QVendas
    Left = 136
    Top = 120
  end
  object DSP_Vendas: TDataSetProvider
    Left = 185
    Top = 123
  end
  object frxDBD_Vendasdiarias: TfrxDBDataset
    UserName = 'frxDBD_Vendasdiarias'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'NUMPEDI=NUMPEDI'
      'DATA_EMISSAO=DATA_EMISSAO'
      'COD_CLIENTE=COD_CLIENTE'
      'NOME=NOME'
      'ID_PRODUTO=ID_PRODUTO'
      'CODIGO_BAR=CODIGO_BAR'
      'DESCRICAO=DESCRICAO'
      'QUANTIDADE=QUANTIDADE'
      'VALOR_UNITARIO=VALOR_UNITARIO'
      'VALOR_TOTAL_PROD=VALOR_TOTAL_PROD')
    DataSet = QVendas
    BCDToCurrency = False
    Left = 328
    Top = 11
  end
  object frxVendasdiarias: TfrxReport
    Version = '6.6.17'
    DotMatrixReport = True
    IniFile = '\Relatorios'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PreviewOptions.ZoomMode = zmPageWidth
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45600.181909398100000000
    ReportOptions.LastChange = 45600.303041238430000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 392
    Top = 8
    Datasets = <
      item
        DataSet = frxDBD_Vendasdiarias
        DataSetName = 'frxDBD_Vendasdiarias'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxDMPPage
      Orientation = poLandscape
      PaperWidth = 297.179808071374000000
      PaperHeight = 211.401946802909400000
      PaperSize = 9
      LeftMargin = 5.079996719168790000
      RightMargin = 5.079996719168790000
      TopMargin = 4.497913761764030000
      BottomMargin = 4.497913761764030000
      Frame.Typ = []
      MirrorMode = []
      FontStyle = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 34.000000000000000000
        Top = 17.000000000000000000
        Width = 1084.800000000000000000
        object DMPMemo1: TfrxDMPMemoView
          Align = baWidth
          AllowVectorExport = True
          Width = 1084.800000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Relat'#243'rio de Vendas di'#225'ria')
          ParentFont = False
          TruncOutboundText = False
          VAlign = vaCenter
        end
        object DMPLine2: TfrxDMPLineView
          AllowVectorExport = True
          Left = 408.000000000000000000
          Top = 25.500000000000000000
          Width = 268.800000000000000000
          Color = clBlack
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 17.000000000000000000
        Top = 68.000000000000000000
        Width = 1084.800000000000000000
        object DMPMemo3: TfrxDMPMemoView
          AllowVectorExport = True
          Width = 67.200000000000000000
          Height = 17.000000000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'N'#186'PEDI')
          TruncOutboundText = False
        end
        object DMPMemo4: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 67.200000000000000000
          Width = 115.200000000000000000
          Height = 17.000000000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Dt.Emiss'#227'o')
          TruncOutboundText = False
        end
        object DMPMemo6: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 192.000000000000000000
          Width = 96.000000000000000000
          Height = 17.000000000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Id.Produto')
          TruncOutboundText = False
        end
        object DMPMemo7: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 297.600000000000000000
          Width = 96.000000000000000000
          Height = 17.000000000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'C'#243'd.Barras')
          TruncOutboundText = False
        end
        object DMPMemo8: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 441.600000000000000000
          Width = 201.600000000000000000
          Height = 17.000000000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Descri'#231#227'o do Produto')
          TruncOutboundText = False
        end
        object DMPMemo9: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 710.400000000000000000
          Width = 67.200000000000000000
          Height = 17.000000000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Qtde.')
          TruncOutboundText = False
        end
        object DMPMemo10: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 796.800000000000000000
          Width = 115.200000000000000000
          Height = 17.000000000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Vl.Unit'#225'rio')
          TruncOutboundText = False
        end
        object DMPMemo11: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 931.200000000000000000
          Width = 153.600000000000000000
          Height = 17.000000000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Tot. Produto')
          TruncOutboundText = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 34.000000000000000000
        Top = 119.000000000000000000
        Width = 1084.800000000000000000
        Condition = 'frxDBD_Vendasdiarias."COD_CLIENTE"'
        object DMPMemo12: TfrxDMPMemoView
          Align = baWidth
          AllowVectorExport = True
          Left = 76.800000000000000000
          Width = 1008.000000000000000000
          Height = 17.000000000000000000
          DataSet = frxDBD_Vendasdiarias
          DataSetName = 'frxDBD_Vendasdiarias'
          FontStyle = [fsxBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBD_Vendasdiarias."COD_CLIENTE"]')
          ParentFont = False
          TruncOutboundText = False
          VAlign = vaCenter
        end
        object DMPMemo15: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 144.000000000000000000
          Width = 297.600000000000000000
          Height = 17.000000000000000000
          DataField = 'NOME'
          DataSet = frxDBD_Vendasdiarias
          DataSetName = 'frxDBD_Vendasdiarias'
          FontStyle = [fsxBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBD_Vendasdiarias."NOME"]')
          ParentFont = False
          WordWrap = False
          TruncOutboundText = False
        end
        object DMPMemo5: TfrxDMPMemoView
          AllowVectorExport = True
          Width = 76.800000000000000000
          Height = 17.000000000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Cliente:')
          TruncOutboundText = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 17.000000000000000000
        Top = 170.000000000000000000
        Width = 1084.800000000000000000
        DataSet = frxDBD_Vendasdiarias
        DataSetName = 'frxDBD_Vendasdiarias'
        RowCount = 0
        object DMPMemo13: TfrxDMPMemoView
          AllowVectorExport = True
          Width = 67.200000000000000000
          Height = 17.000000000000000000
          DataField = 'NUMPEDI'
          DataSet = frxDBD_Vendasdiarias
          DataSetName = 'frxDBD_Vendasdiarias'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBD_Vendasdiarias."NUMPEDI"]')
          TruncOutboundText = False
        end
        object DMPMemo14: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 67.200000000000000000
          Width = 105.600000000000000000
          Height = 17.000000000000000000
          DataField = 'DATA_EMISSAO'
          DataSet = frxDBD_Vendasdiarias
          DataSetName = 'frxDBD_Vendasdiarias'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBD_Vendasdiarias."DATA_EMISSAO"]')
          TruncOutboundText = False
        end
        object DMPMemo16: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 182.400000000000000000
          Width = 96.000000000000000000
          Height = 17.000000000000000000
          DataField = 'ID_PRODUTO'
          DataSet = frxDBD_Vendasdiarias
          DataSetName = 'frxDBD_Vendasdiarias'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBD_Vendasdiarias."ID_PRODUTO"]')
          TruncOutboundText = False
        end
        object DMPMemo17: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 288.000000000000000000
          Width = 144.000000000000000000
          Height = 17.000000000000000000
          DataField = 'CODIGO_BAR'
          DataSet = frxDBD_Vendasdiarias
          DataSetName = 'frxDBD_Vendasdiarias'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBD_Vendasdiarias."CODIGO_BAR"]')
          TruncOutboundText = False
        end
        object DMPMemo18: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 441.600000000000000000
          Width = 259.200000000000000000
          Height = 17.000000000000000000
          DataField = 'DESCRICAO'
          DataSet = frxDBD_Vendasdiarias
          DataSetName = 'frxDBD_Vendasdiarias'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBD_Vendasdiarias."DESCRICAO"]')
          TruncOutboundText = False
        end
        object DMPMemo19: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 710.400000000000000000
          Width = 76.800000000000000000
          Height = 17.000000000000000000
          DataField = 'QUANTIDADE'
          DataSet = frxDBD_Vendasdiarias
          DataSetName = 'frxDBD_Vendasdiarias'
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBD_Vendasdiarias."QUANTIDADE"]')
          TruncOutboundText = False
        end
        object DMPMemo20: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 806.400000000000000000
          Width = 105.600000000000000000
          Height = 17.000000000000000000
          DataField = 'VALOR_UNITARIO'
          DataSet = frxDBD_Vendasdiarias
          DataSetName = 'frxDBD_Vendasdiarias'
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBD_Vendasdiarias."VALOR_UNITARIO"]')
          TruncOutboundText = False
        end
        object DMPMemo21: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 931.200000000000000000
          Width = 153.600000000000000000
          Height = 17.000000000000000000
          DataField = 'VALOR_TOTAL_PROD'
          DataSet = frxDBD_Vendasdiarias
          DataSetName = 'frxDBD_Vendasdiarias'
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBD_Vendasdiarias."VALOR_TOTAL_PROD"]')
          TruncOutboundText = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Frame.Typ = []
        Top = 204.000000000000000000
        Width = 1084.800000000000000000
        Child = frxVendasdiarias.Child1
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 34.000000000000000000
        Top = 357.000000000000000000
        Width = 1084.800000000000000000
        object DMPMemo22: TfrxDMPMemoView
          Align = baWidth
          AllowVectorExport = True
          Width = 1084.800000000000000000
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
          TruncOutboundText = False
        end
        object DMPMemo23: TfrxDMPMemoView
          AllowVectorExport = True
          Height = 17.000000000000000000
          AutoWidth = True
          Frame.Typ = []
          Memo.UTF8W = (
            '[Date] [Time]')
          TruncOutboundText = False
        end
        object DMPMemo24: TfrxDMPMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 998.400000000000000000
          Width = 76.800000000000000000
          Height = 17.000000000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Page [Page#]')
          TruncOutboundText = False
        end
      end
      object Child1: TfrxChild
        FillType = ftBrush
        Frame.Typ = []
        Height = 34.000000000000000000
        Top = 221.000000000000000000
        Width = 1084.800000000000000000
        ToNRows = 0
        ToNRowsMode = rmCount
        object DMPMemo25: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 931.200000000000000000
          Top = 17.000000000000000000
          Width = 153.600000000000000000
          Height = 17.000000000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          FontStyle = [fsxBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBD_Vendasdiarias."VALOR_TOTAL_PROD">,MasterData1)]')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPLine1: TfrxDMPLineView
          AllowVectorExport = True
          Left = 916.800000000000000000
          Top = 8.500000000000000000
          Width = 172.800000000000000000
          Color = clBlack
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Frame.Typ = []
        Height = 51.000000000000000000
        Top = 289.000000000000000000
        Width = 1084.800000000000000000
        object DMPMemo26: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 931.200000000000000000
          Top = 34.000000000000000000
          Width = 153.600000000000000000
          Height = 17.000000000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          FontStyle = [fsxBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBD_Vendasdiarias."VALOR_TOTAL_PROD">,MasterData1)]')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPMemo27: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 758.400000000000000000
          Top = 34.000000000000000000
          Width = 124.800000000000000000
          Height = 17.000000000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Total Geral :')
          TruncOutboundText = False
        end
      end
    end
  end
  object QMaisVendido: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DSP_MaisVendido'
    Left = 24
    Top = 56
    object QMaisVendidoID_PRODUTO: TStringField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
      Size = 6
    end
    object QMaisVendidoCODIGO_BAR: TStringField
      FieldName = 'CODIGO_BAR'
      Origin = 'CODIGO_BAR'
      Size = 13
    end
    object QMaisVendidoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 60
    end
    object QMaisVendidoQTDVENDIDO: TIntegerField
      FieldName = 'QTDVENDIDO'
      Origin = 'QTDVENDIDO'
    end
  end
  object DS_MaisVendido: TDataSource
    DataSet = QMaisVendido
    Left = 72
    Top = 56
  end
  object DSP_MaisVendido: TDataSetProvider
    Left = 129
    Top = 51
  end
  object frxDBDoisPrdMaisvendidos: TfrxDBDataset
    UserName = 'frxDBDoisPrdMaisvendidos'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID_PRODUTO=ID_PRODUTO'
      'CODIGO_BAR=CODIGO_BAR'
      'DESCRICAO=DESCRICAO'
      'QTDVENDIDO=QTDVENDIDO')
    DataSet = QMaisVendido
    BCDToCurrency = False
    Left = 288
    Top = 67
  end
  object frxDoisPrdmaisVendidos: TfrxReport
    Version = '6.6.17'
    DotMatrixReport = True
    IniFile = '\Relatorios'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PreviewOptions.ZoomMode = zmPageWidth
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45600.269541238400000000
    ReportOptions.LastChange = 45600.291763483800000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 392
    Top = 72
    Datasets = <
      item
        DataSet = frxDBDoisPrdMaisvendidos
        DataSetName = 'frxDBDoisPrdMaisvendidos'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxDMPPage
      PaperWidth = 210.819863845504600000
      PaperHeight = 296.862308276425900000
      PaperSize = 9
      LeftMargin = 2.539998359584390000
      RightMargin = 2.539998359584390000
      TopMargin = 4.497913761764030000
      BottomMargin = 4.497913761764030000
      Frame.Typ = []
      MirrorMode = []
      FontStyle = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 34.000000000000000000
        Top = 17.000000000000000000
        Width = 777.600000000000000000
        object DMPMemo1: TfrxDMPMemoView
          Align = baWidth
          AllowVectorExport = True
          Width = 777.600000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Dois produtos mais vendidos')
          ParentFont = False
          TruncOutboundText = False
          VAlign = vaCenter
        end
        object DMPLine1: TfrxDMPLineView
          AllowVectorExport = True
          Left = 244.800000000000000000
          Top = 25.500000000000000000
          Width = 278.400000000000000000
          Color = clBlack
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 17.000000000000000000
        Top = 68.000000000000000000
        Width = 777.600000000000000000
        object DMPMemo3: TfrxDMPMemoView
          AllowVectorExport = True
          Width = 96.000000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Id.Produto')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPMemo4: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 105.600000000000000000
          Width = 115.200000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'C'#243'd.Barra')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPMemo5: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 230.400000000000000000
          Width = 451.200000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Descri'#231#227'o do Produto')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPMemo6: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 681.600000000000000000
          Width = 96.000000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Qtde.')
          ParentFont = False
          TruncOutboundText = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 17.000000000000000000
        Top = 119.000000000000000000
        Width = 777.600000000000000000
        DataSet = frxDBDoisPrdMaisvendidos
        DataSetName = 'frxDBDoisPrdMaisvendidos'
        RowCount = 0
        object DMPMemo7: TfrxDMPMemoView
          AllowVectorExport = True
          Width = 86.400000000000000000
          Height = 17.000000000000000000
          DataField = 'ID_PRODUTO'
          DataSet = frxDBDoisPrdMaisvendidos
          DataSetName = 'frxDBDoisPrdMaisvendidos'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDoisPrdMaisvendidos."ID_PRODUTO"]')
          TruncOutboundText = False
        end
        object DMPMemo8: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 96.000000000000000000
          Width = 134.400000000000000000
          Height = 17.000000000000000000
          DataField = 'CODIGO_BAR'
          DataSet = frxDBDoisPrdMaisvendidos
          DataSetName = 'frxDBDoisPrdMaisvendidos'
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDoisPrdMaisvendidos."CODIGO_BAR"]')
          TruncOutboundText = False
        end
        object DMPMemo9: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 230.400000000000000000
          Width = 451.200000000000000000
          Height = 17.000000000000000000
          DataField = 'DESCRICAO'
          DataSet = frxDBDoisPrdMaisvendidos
          DataSetName = 'frxDBDoisPrdMaisvendidos'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDoisPrdMaisvendidos."DESCRICAO"]')
          TruncOutboundText = False
        end
        object DMPMemo10: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 681.600000000000000000
          Width = 96.000000000000000000
          Height = 17.000000000000000000
          DataField = 'QTDVENDIDO'
          DataSet = frxDBDoisPrdMaisvendidos
          DataSetName = 'frxDBDoisPrdMaisvendidos'
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDoisPrdMaisvendidos."QTDVENDIDO"]')
          TruncOutboundText = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 34.000000000000000000
        Top = 170.000000000000000000
        Width = 777.600000000000000000
        object DMPMemo11: TfrxDMPMemoView
          Align = baWidth
          AllowVectorExport = True
          Width = 777.600000000000000000
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
          TruncOutboundText = False
        end
        object DMPMemo12: TfrxDMPMemoView
          AllowVectorExport = True
          Height = 17.000000000000000000
          AutoWidth = True
          Frame.Typ = []
          Memo.UTF8W = (
            '[Date] [Time]')
          TruncOutboundText = False
        end
        object DMPMemo13: TfrxDMPMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 700.800000000000000000
          Width = 76.800000000000000000
          Height = 17.000000000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Page [Page#]')
          TruncOutboundText = False
        end
      end
    end
  end
end
