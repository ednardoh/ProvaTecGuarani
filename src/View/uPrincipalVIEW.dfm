object frmPrincipal: TfrmPrincipal
  Left = 177
  Top = 111
  Caption = 'Prova Tecnica (Guarani)  - Sistema de Pedido'
  ClientHeight = 492
  ClientWidth = 781
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu_Principal
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 184
    Width = 465
    Height = 145
    AutoSize = False
    Caption = 
      'Aplica'#231#227'o desenvolvida em Delphi XE10.3, Banco de dados Firebird' +
      ' 2.5 Componentes usados: DevExpress e componentes de relat'#243'rio: ' +
      'FastResport. Para acesso ao banco n'#227'o consegui usar o IBX, pois ' +
      'ocorreu muitos erros e n'#227'o deixava conectar ao banco, ent'#227'o para' +
      ' ganhar tempo tive que usar o FireDac.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Visible = False
    WordWrap = True
  end
  object MainMenu_Principal: TMainMenu
    Left = 304
    Top = 48
    object Cadastros1: TMenuItem
      Caption = 'Cadastros'
      object Clientes1: TMenuItem
        Caption = 'Cli&entes'
        ShortCut = 16453
        OnClick = Clientes1Click
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Produtos1: TMenuItem
        Caption = '&Produtos'
        ShortCut = 16464
        OnClick = Produtos1Click
      end
    end
    object EntradadeProdutos1: TMenuItem
      Caption = 'Entrada de Produtos'
      object Entradas1: TMenuItem
        Caption = 'Entradas'
        ShortCut = 16452
        OnClick = Entradas1Click
      end
    end
    object Vendas1: TMenuItem
      Caption = '&Venda no Balc'#227'o'
      object PDV1: TMenuItem
        Caption = 'Fazer Venda'
        ShortCut = 113
        OnClick = PDV1Click
      end
    end
    object Relatrios1: TMenuItem
      Caption = '&Relat'#243'rios'
      object Vendas2: TMenuItem
        Caption = 'Relat'#243'rio de Vendas di'#225'rias'
        OnClick = Vendas2Click
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object Relatriodeprodutosmaisvendido1: TMenuItem
        Caption = 'Relat'#243'rio de produtos mais vendido'
        OnClick = Relatriodeprodutosmaisvendido1Click
      end
    end
    object Sair1: TMenuItem
      Caption = 'Sai&r'
      ShortCut = 16467
      OnClick = Sair1Click
    end
  end
end
