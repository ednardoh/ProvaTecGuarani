object frmMov_PEDVendas: TfrmMov_PEDVendas
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Ponto de Vendas'
  ClientHeight = 662
  ClientWidth = 1101
  Color = clSilver
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1101
    Height = 662
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    object pn_Top: TPanel
      Left = 0
      Top = 0
      Width = 1101
      Height = 75
      Align = alTop
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 0
      object Shape1: TShape
        Left = 11
        Top = 0
        Width = 1081
        Height = 75
        Align = alClient
        Brush.Color = 16758380
        Shape = stRoundRect
        ExplicitLeft = 32
        ExplicitWidth = 1367
      end
      object lblMessagem: TLabel
        Left = 11
        Top = 0
        Width = 1081
        Height = 75
        Align = alClient
        Alignment = taCenter
        AutoSize = False
        Caption = 'Pedido de Venda'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -48
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        ExplicitLeft = 75
      end
      object Panel13: TPanel
        Left = 0
        Top = 0
        Width = 11
        Height = 75
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 0
      end
      object Panel14: TPanel
        Left = 1092
        Top = 0
        Width = 9
        Height = 75
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 1
      end
    end
    object pn_Botton: TPanel
      Left = 0
      Top = 608
      Width = 1101
      Height = 54
      Align = alBottom
      BevelOuter = bvNone
      Color = 16758380
      ParentBackground = False
      TabOrder = 1
      object Label6: TLabel
        Left = 100
        Top = -267
        Width = 91
        Height = 39
        Alignment = taRightJustify
        Caption = 'Pre'#231'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -32
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label10: TLabel
        Left = 54
        Top = 20
        Width = 99
        Height = 16
        Caption = 'F3-Abre Pedido'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label11: TLabel
        Left = 167
        Top = 20
        Width = 132
        Height = 16
        Caption = 'F4-Consulta Produto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label12: TLabel
        Left = 315
        Top = 20
        Width = 131
        Height = 16
        Caption = 'F5-Consulta Clientes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label15: TLabel
        Left = 463
        Top = 20
        Width = 143
        Height = 16
        Caption = 'F6-Selecionar Produto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label16: TLabel
        Left = 619
        Top = 20
        Width = 111
        Height = 16
        Caption = 'F7-Gravar Pedido'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label17: TLabel
        Left = 742
        Top = 20
        Width = 129
        Height = 16
        Caption = 'F8-Consultar Pedido'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label18: TLabel
        Left = 885
        Top = 20
        Width = 123
        Height = 16
        Caption = 'F9-Cancelar Pedido'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object pn_Grid: TPanel
      Left = 0
      Top = 75
      Width = 1101
      Height = 533
      Align = alClient
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 2
      object Panel7: TPanel
        Left = 0
        Top = 74
        Width = 1101
        Height = 63
        Align = alTop
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 0
        object Label2: TLabel
          Left = 32
          Top = -2
          Width = 106
          Height = 19
          Caption = 'C'#243'd. Produto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label3: TLabel
          Left = 743
          Top = -2
          Width = 44
          Height = 19
          Caption = 'Qtde.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 837
          Top = -2
          Width = 114
          Height = 19
          Alignment = taRightJustify
          Caption = 'Valor Unit'#225'rio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label5: TLabel
          Left = 984
          Top = 0
          Width = 91
          Height = 19
          Alignment = taRightJustify
          Caption = 'Valor Total'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label8: TLabel
          Left = 221
          Top = -1
          Width = 173
          Height = 19
          Caption = 'Descri'#231#227'o do Produto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label19: TLabel
          Left = 142
          Top = -5
          Width = 41
          Height = 23
          Caption = '[F4]'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object edt_CodigoProd: TEdit
          Left = 29
          Top = 24
          Width = 186
          Height = 27
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          HideSelection = False
          ParentFont = False
          TabOrder = 0
          OnEnter = EDT_CodClienteEnter
          OnExit = edt_CodigoProdExit
          OnKeyDown = edt_CodigoProdKeyDown
          OnKeyPress = edt_CodigoProdKeyPress
        end
        object Edt_Qtde: TEdit
          Left = 742
          Top = 23
          Width = 89
          Height = 27
          TabStop = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          Text = '1,00'
          OnChange = Edt_QtdeChange
          OnEnter = EDT_CodClienteEnter
          OnExit = Edt_QtdeExit
          OnKeyPress = Edt_QtdeKeyPress
        end
        object Edt_PrecProd: TEdit
          Left = 834
          Top = 24
          Width = 119
          Height = 27
          TabStop = False
          Alignment = taRightJustify
          Color = 14155775
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          Text = '0,00'
          OnKeyDown = Edt_PrecProdKeyDown
          OnKeyPress = Edt_PrecProdKeyPress
        end
        object EDT_ValorTotal: TEdit
          Left = 959
          Top = 25
          Width = 120
          Height = 27
          TabStop = False
          Alignment = taRightJustify
          Color = 14155775
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 3
          Text = '0,00'
          OnKeyPress = Edt_PrecProdKeyPress
        end
        object EDT_DescrProduto: TEdit
          Left = 215
          Top = 24
          Width = 521
          Height = 27
          Color = 14155775
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clSilver
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
        end
      end
      object pn_left: TPanel
        Left = 0
        Top = 172
        Width = 29
        Height = 318
        Align = alLeft
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 1
      end
      object GRD_Produtos: TDBGrid
        Left = 29
        Top = 172
        Width = 1072
        Height = 318
        Align = alClient
        BorderStyle = bsNone
        DataSource = ds_PedVenda
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = [fsBold]
        OnColExit = GRD_ProdutosColExit
        OnKeyDown = GRD_ProdutosKeyDown
        OnKeyPress = GRD_ProdutosKeyPress
        Columns = <
          item
            Expanded = False
            FieldName = 'CodProduto'
            Title.Caption = 'C'#243'd. Produto'
            Width = 171
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DescrProduto'
            Title.Caption = 'Descri'#231#227'o do Produto'
            Width = 525
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Quantidade'
            Width = 87
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Valor_Unitario'
            Title.Caption = 'Valor Unit'#225'rio'
            Width = 123
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Valor_Total'
            Title.Caption = 'Valor Total'
            Width = 125
            Visible = True
          end>
      end
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 1101
        Height = 74
        Align = alTop
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 3
        object Label13: TLabel
          Left = 32
          Top = 6
          Width = 87
          Height = 19
          Caption = 'N'#186'. Pedido'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label14: TLabel
          Left = 198
          Top = 6
          Width = 95
          Height = 19
          Caption = 'Dt. Emiss'#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label1: TLabel
          Left = 395
          Top = 6
          Width = 58
          Height = 19
          Caption = 'Cliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label9: TLabel
          Left = 523
          Top = 5
          Width = 135
          Height = 19
          Caption = 'Nome do Cliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label20: TLabel
          Left = 456
          Top = 1
          Width = 41
          Height = 23
          Caption = '[F5]'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object EDT_Numpedido: TEdit
          Left = 30
          Top = 31
          Width = 162
          Height = 27
          Color = clWhite
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clSilver
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          HideSelection = False
          ParentFont = False
          TabOrder = 1
          Text = '000000'
          OnKeyPress = edt_CodigoProdKeyPress
        end
        object EDT_DTEMISSAO: TDateTimePicker
          Left = 198
          Top = 31
          Width = 191
          Height = 27
          Date = 44262.000000000000000000
          Time = 0.562654907407704700
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clSilver
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnEnter = EDT_DTEMISSAOEnter
          OnExit = EDT_DTEMISSAOExit
          OnKeyDown = EDT_DTEMISSAOKeyDown
        end
        object EDT_CodCliente: TEdit
          Left = 394
          Top = 31
          Width = 124
          Height = 27
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          OnEnter = EDT_CodClienteEnter
          OnExit = EDT_CodClienteExit
          OnKeyDown = EDT_CodClienteKeyDown
          OnKeyPress = EDT_CodClienteKeyPress
        end
        object EDT_NomeCliente: TEdit
          Left = 523
          Top = 31
          Width = 556
          Height = 27
          Color = 14155775
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clSilver
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
        end
      end
      object Panel12: TPanel
        Left = 0
        Top = 490
        Width = 1101
        Height = 43
        Align = alBottom
        TabOrder = 4
        object Label7: TLabel
          Left = 842
          Top = 16
          Width = 59
          Height = 19
          Caption = 'Total  :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object EdtTotVenda: TEdit
          Left = 907
          Top = 10
          Width = 161
          Height = 27
          TabStop = False
          Alignment = taRightJustify
          Color = clYellow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
          Text = '0,00'
        end
      end
      object pn_TopButton: TPanel
        Left = 0
        Top = 137
        Width = 1101
        Height = 35
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 5
        object BTN_Inserir: TSpeedButton
          Left = 949
          Top = -2
          Width = 130
          Height = 31
          Caption = 'Inserir Produto'
          Flat = True
          Glyph.Data = {
            760C0000424D760C00000000000036000000280000001C0000001C0000000100
            200000000000400C000000000000000000000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9F1
            E7FFC9E4CAFFC7E1C6FF91CA98FF8BC28BFF8BC18DFF8EC894FFC4DFC5FFCBE4
            CCFFE3EEE2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFF2F6F0FF71B373FF91CA98FF85CB9DFF9FDAB5FFCDF6E6FFEEFF
            FFFFEDFFFFFFD0F8EBFFA2DDB8FF83CB9BFF93CB9DFF6BB26CFFE3ECE0FFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9EC99EFF55B065FFA8F6D4FFA2F9
            D3FFBEFFE8FFC8FFECFFCFFFEDFFD1FEEDFFD1FEEDFFCEFFECFFC5FFEBFFBCFE
            E6FFA0F8D3FFA3F5D1FF5BB76CFF8FC08EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6DB4
            71FF50C67AFF7CF5BFFF7AEDB8FF94F3C7FFA8F8D5FFB0F4D8FFB3F0D7FFB9F0
            DAFFB8F0DBFFB4EFD6FFAFF4D7FFA7F7D4FF92F2C7FF78EDB5FF74F3BAFF53CC
            81FF64AF6BFFF0F5EDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFF75B173FF45C978FF4BDF90FF5BE19BFF77EAB2FF88F0
            BFFF98F6CCFFB7E3CFFFD0D2D1FFCCD3D0FFCCD4D0FFD0D1D1FFB6E3CFFF97F6
            CBFF86EFBEFF73EAB1FF5AE19AFF48DA8BFF43CB7AFF61AC64FFF2F6F1FFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6BB572FF22B251FF20C2
            5EFF3BCF78FF4FDC8FFF63E5A3FF73EAB0FF7FF0BBFFB4E4CEFFE4DBE0FFDEDC
            DDFFDEDCDDFFE5DCDFFFB5E3CEFF7DEFBAFF71E9AEFF61E4A0FF4ED98CFF39CE
            77FF1FC05CFF21B351FF5BAB62FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFB3D7B2FF099327FF10AD43FF20BA57FF2FC76BFF41D37FFF53DD94FF61E4
            A1FF6AE8ABFFABE3C8FFE9E1E6FFE1E1E1FFE1E1E1FFE9E1E6FFAAE3C8FF68E8
            AAFF60E49FFF52DB91FF3FD17DFF2EC569FF1FB955FF0DAA40FF069628FF99C9
            9AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1A8D27FF0B9C34FF0AA137FF15B1
            49FF21BC59FF30C76DFF41D37FFF4DDB8DFF50DF96FFA1E1BFFFEFE7EBFFE6E6
            E6FFE6E6E6FFEFE7EBFFA0E1BFFF4FE095FF4CDA8BFF3FD27DFF2EC66BFF20BA
            58FF14AE47FF0BA036FF08972EFF138B23FFF6FAF4FFFFFFFFFFFFFFFFFF8AC1
            88FF07841FFF008D21FF0A9A30FF0FA53BFF14AF47FF20BB58FF2CC568FF38CD
            75FF36D27AFF96DDB6FFF7ECF2FFEBEBEBFFEBEBEBFFF7ECF2FF96DDB5FF35D1
            79FF36CC73FF2CC566FF1EB956FF13AE46FF0EA43AFF09992FFF028C22FF0181
            1AFF6BB36EFFFFFFFFFFFFFFFFFF489E4DFF007409FF02871EFF059127FF0B9D
            33FF0EA53CFF13AF46FF1EB954FF27C160FF22C562FF8CD8ACFFFCF1F8FFEFEF
            EFFFEFEFEFFFFCF1F8FF8DD8ABFF20C461FF25C05FFF1DB853FF13AE45FF0EA5
            3AFF0A9C32FF059026FF01851DFF007409FF389541FFF7FDF6FFD9EDD9FF0675
            0DFF0D7B1EFF0B821EFF007E15FF008718FF008F20FF009829FF00A031FF04A7
            3AFF00A936FF77CD96FFFFF7FFFFF3F3F3FFF3F3F3FFFFF7FFFF78CE96FF00A8
            35FF04A638FF009F30FF009828FF008F1FFF008616FF007D13FF0B801DFF117D
            20FF006700FFCDE6CFFFC9E0C8FF117718FF5BA468FF52A35FFF89BA90FF94BC
            99FF91BF99FF91C19CFF91C49FFF90C6A1FF8AC49BFFC0DDCAFFFEFAFDFFF8F8
            F8FFF8F8F8FFFEFAFDFFC1DDCAFF8AC39CFF90C69FFF91C39EFF91C19BFF91BE
            9AFF93BC98FF86B88EFF52A35FFF5CA568FF1D7A26FFB7D6B8FFACD5B0FF2A83
            33FF599F63FF499A56FFDCEADFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFCFFFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFFFCFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDCEADFFF499A57FF589E
            61FF398943FF83C28BFF8EC896FF3C8944FF5E9F65FF50995AFFD5E5D7FFFFFF
            FFFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFD
            FDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFD
            FDFFFFFFFFFFD5E6D7FF519A5BFF5E9D65FF4B8E52FF77B87AFF8FC997FF4089
            47FF649F6AFF589A5FFFD7E6D9FFFFFFFFFFFCFCFCFFFCFCFCFFFCFCFCFFFCFC
            FCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFC
            FCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFFFFFFFFD8E7DAFF5A9A60FF639F
            69FF518F56FF76B97CFFB1D7B5FF38853DFF6CA070FF649E6BFFE0EAE0FFFFFF
            FFFFFFFDFFFFFFFDFFFFFFFDFEFFFEFDFEFFFEFBFEFFFCFBFBFFF9F9F9FFF9F9
            F9FFF9F9F9FFF9F9F9FFFCFBFBFFFEFBFEFFFEFDFEFFFFFCFEFFFFFDFFFFFFFD
            FFFFFFFFFFFFE1EBE1FF679F6CFF6AA16FFF4B8C50FF88C590FFCBE3CDFF3082
            35FF72A176FF78A87CFFB0CCB3FFBBD3BCFFBDD5C0FFBFD8C2FFC3DAC6FFC5DC
            C9FFC4DCC7FFDBE6DDFFF9F8F9FFF6F6F6FFF6F6F6FFF9F8F9FFDCE7DDFFC4DC
            C7FFC6DCC9FFC3DAC5FFBFD8C3FFBCD6BFFFBBD3BEFFAFCCB2FF7AAA7EFF73A3
            76FF39843DFFBCDCBFFFD3EBD5FF4A934FFF76A179FF87B08AFF93BB98FF97BD
            9BFF9DC29FFFA2C6A6FFA8CBABFFACCDB0FFACCEB0FFCCDCCEFFF6F5F6FFF2F2
            F2FFF2F2F2FFF6F5F6FFCDDDCFFFABCEB0FFACCDB0FFA9CBADFFA2C6A6FF9DC2
            A0FF98BE9BFF94BB97FF8AB38CFF7AA47BFF398A40FFCAE6CDFFFFFFFFFF5DA7
            62FF749F75FF8FB392FFA7C4A9FFACC9ADFFB1CDB3FFB6D0B8FFBCD4BDFFC0D7
            C1FFC0D9C2FFD4DFD6FFF1EFF0FFEEEEEEFFEEEEEEFFF1EFF0FFD4DFD6FFC1D9
            C3FFC0D7C1FFBDD4BFFFB6D0B8FFB2CCB3FFACC8AFFFA7C5A9FF93B595FF76A1
            79FF60A263FFF3FBF3FFFFFFFFFF83C386FF6F9D71FF95B496FFB0C9B0FFB4CC
            B5FFB9D0BBFFBED4C0FFC4D8C6FFC8DCC9FFCADCCBFFD7E1D8FFECEBECFFEAEA
            EAFFEAEAEAFFECEAECFFD7E0D8FFC9DECBFFC8DBCAFFC5D8C6FFBFD5C1FFBAD1
            BBFFB4CDB7FFB1CAB2FF95B596FF78A079FF6BB672FFFFFFFFFFFFFFFFFFFFFF
            FFFF2C8D30FF9EB5A0FFB5CBB6FFBED1BFFFC3D6C3FFC8DAC9FFCEDECFFFD2E1
            D3FFD5E3D5FFDAE0DAFFE6E5E6FFE4E4E4FFE4E4E4FFE6E5E6FFDAE1DAFFD5E4
            D6FFD1E0D3FFCEDECFFFC9DACAFFC3D6C4FFBED2BEFFB6CDB7FFA5B8A3FF348D
            3BFFFAFFFCFFFFFFFFFFFFFFFFFFFFFFFFFFB8DEBBFF4C904EFFBDCBBCFFC7D7
            C8FFCADACBFFD0DED1FFD5E2D5FFD9E5DAFFDDE9DDFFDDE2DDFFE0DFE0FFE0E0
            E0FFE0E0E0FFE0DFE0FFDDE2DDFFDDE9DFFFDAE5DAFFD6E3D7FFD1DED1FFCBDB
            CBFFC7D8C8FFC1CFC0FF559558FF9DD0A2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFF6FB775FF79A77AFFDBE1DAFFD2DED2FFD5E2D5FFDCE6DDFFDFE9
            E0FFE5ECE5FFDCE1DCFFD8D8D8FFD9D9D9FFD9D9D9FFD8D8D8FFDCE1DDFFE4EC
            E4FFE1EAE1FFDCE6DDFFD6E2D6FFD1DFD1FFD9E1D9FF89AD89FF63AF68FFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5DB165FF8AB5
            8EFFE8EAE7FFDDE7DDFFE2E9E1FFE6ECE6FFEBF1EBFFE7EAE7FFE3E3E3FFE4E5
            E4FFE4E5E4FFE3E3E3FFE7EAE7FFEBF2EBFFE6ECE7FFE1EAE2FFDDE7DDFFE9EA
            E8FF9BBC9DFF64AA66FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFF6EB674FF72AB75FFF7F2F7FFEDF1EDFFEAEF
            EAFFEEF2EEFFF3F7F3FFF8FBF8FFF8FCF8FFF8FCF8FFF8FBF8FFF3F8F3FFEEF2
            EEFFEAF0EAFFEBF1EBFFFAF4F9FF7EB080FF67B16EFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFB0D9B3FF3A963FFFD0E0D1FFEEF2EEFFFFFCFFFFFFFEFFFFFFFEFFFFFFFD
            FFFFFFFDFEFFFFFDFFFFFFFEFFFFFEFCFEFFF0F3F0FFDCE6DCFF45984BFF9CCF
            9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF75B978FF77B7
            7BFF9ACA9EFF9CCA9FFFBDDDC0FFDDEDDFFFDEEDE0FFC1E0C4FF9FCCA2FF95CA
            9AFF82BC86FF6FB473FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FDFAFFC6E2C8FFCEE4D0FFB4DAB8FF95CC
            9DFF94CC9CFFB0D8B4FFCDE4CFFFC4E1C7FFF4F9F4FFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          OnClick = BTN_InserirClick
        end
      end
    end
  end
  object ds_PedVenda: TDataSource
    DataSet = QryPedproduto
    Left = 696
    Top = 312
  end
  object QryPedproduto: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID'
        DataType = ftInteger
      end
      item
        Name = 'CodProduto'
        DataType = ftString
        Size = 13
      end
      item
        Name = 'DescrProduto'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'Quantidade'
        DataType = ftFloat
      end
      item
        Name = 'Valor_Unitario'
        DataType = ftFloat
      end
      item
        Name = 'Valor_Total'
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Name = 'QryPedprodutoIDX_ID'
        Fields = 'ID'
      end>
    IndexFieldNames = 'ID'
    Params = <>
    StoreDefs = True
    AfterPost = QryPedprodutoAfterPost
    AfterDelete = QryPedprodutoAfterDelete
    Left = 760
    Top = 311
    object QryPedprodutoID: TIntegerField
      FieldName = 'ID'
    end
    object QryPedprodutoCodProduto: TStringField
      FieldName = 'CodProduto'
      Size = 13
    end
    object QryPedprodutoDescrProduto: TStringField
      FieldName = 'DescrProduto'
      Size = 60
    end
    object QryPedprodutoQuantidade: TFloatField
      FieldName = 'Quantidade'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object QryPedprodutoValor_Unitario: TFloatField
      FieldName = 'Valor_Unitario'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object QryPedprodutoValor_Total: TFloatField
      FieldName = 'Valor_Total'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
  end
  object dsRet_Pedido: TDataSource
    Left = 824
    Top = 415
  end
  object ds_ConsPedido: TDataSource
    Left = 840
    Top = 319
  end
  object ds_ConsCliente: TDataSource
    Left = 888
    Top = 415
  end
  object ds_ConsProduto: TDataSource
    Left = 920
    Top = 383
  end
end
