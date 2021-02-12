object FMovimentacao: TFMovimentacao
  Left = 312
  Top = 164
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'SoftWell - Sistema de Portaria - [Movimenta'#231#227'o]'
  ClientHeight = 255
  ClientWidth = 344
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar1: TStatusBar
    Left = 0
    Top = 236
    Width = 344
    Height = 19
    Panels = <>
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 24
    Width = 321
    Height = 201
    Caption = 'Pesquisa'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object Label2: TLabel
      Left = 56
      Top = 24
      Width = 53
      Height = 13
      Caption = 'Data Inicial'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 56
      Top = 80
      Width = 48
      Height = 13
      Caption = 'Data Final'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object BOk: TBitBtn
      Left = 56
      Top = 144
      Width = 75
      Height = 25
      Caption = '&Ok'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = BOkClick
      Kind = bkOK
    end
    object BCancel: TBitBtn
      Left = 144
      Top = 144
      Width = 75
      Height = 25
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = BCancelClick
      Kind = bkCancel
    end
    object MaskDataInicial: TMaskEdit
      Left = 56
      Top = 40
      Width = 111
      Height = 21
      BevelKind = bkSoft
      BorderStyle = bsNone
      EditMask = '!99/99/0000;1;_'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 0
      Text = '  /  /    '
    end
    object MaskDataFinal: TMaskEdit
      Left = 56
      Top = 96
      Width = 111
      Height = 21
      BevelKind = bkSoft
      BorderStyle = bsNone
      EditMask = '!99/99/0000;1;_'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 1
      Text = '  /  /    '
    end
  end
  object StatusBar2: TStatusBar
    Left = 0
    Top = 0
    Width = 344
    Height = 10
    Align = alTop
    Panels = <>
  end
  object ADOQuery1: TADOQuery
    Connection = FPrincipal.ADOConnection1
    CursorType = ctStatic
    BeforeOpen = ADOQuery1BeforeOpen
    Parameters = <
      item
        Name = 'DATA_INICIAL'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'DATA_FINAL'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT * FROM CONSULTA WHERE DATA_ENTRADA AND DATA_SAIDA BETWEEN' +
        ' :DATA_INICIAL AND :DATA_FINAL ORDER BY DATA_SAIDA, HORA_SAIDA A' +
        'SC')
    Left = 296
    Top = 192
  end
end
