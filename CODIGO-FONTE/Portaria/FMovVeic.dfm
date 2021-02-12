object FMovVeiculo: TFMovVeiculo
  Left = 567
  Top = 158
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'SoftWell - Sistema de Portaria - [Movimenta'#231#227'o por Ve'#237'culo]'
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
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 32
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
    object Label2: TLabel
      Left = 184
      Top = 32
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
    object Label3: TLabel
      Left = 16
      Top = 88
      Width = 37
      Height = 13
      Caption = 'Ve'#237'culo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object BOk: TBitBtn
      Left = 16
      Top = 152
      Width = 75
      Height = 25
      Caption = '&Ok'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = BOkClick
      Kind = bkOK
    end
    object BCancel: TBitBtn
      Left = 104
      Top = 152
      Width = 75
      Height = 25
      Caption = '&Cancel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = BCancelClick
      Kind = bkCancel
    end
    object ComboVeic: TDBLookupComboBox
      Left = 16
      Top = 104
      Width = 282
      Height = 21
      DropDownRows = 15
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      KeyField = 'COD_VEIC'
      ListField = 'COD_VEIC;TIPO_VEIC'
      ListSource = DataSource2
      ParentFont = False
      TabOrder = 2
    end
    object MaskDataInicial: TMaskEdit
      Left = 16
      Top = 48
      Width = 113
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
      Left = 184
      Top = 48
      Width = 113
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
  object StatusBar1: TStatusBar
    Left = 0
    Top = 236
    Width = 344
    Height = 19
    Panels = <>
  end
  object ADOQuery1: TADOQuery
    Connection = FPrincipal.ADOConnection1
    CursorType = ctStatic
    BeforeOpen = ADOQuery1BeforeOpen
    Parameters = <
      item
        Name = 'PVEIC'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
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
      
        'SELECT * FROM CONSULTA WHERE COD_VEIC = :PVEIC AND DATA_ENTRADA ' +
        'AND DATA_SAIDA BETWEEN :DATA_INICIAL AND :DATA_FINAL ORDER BY DA' +
        'TA_SAIDA, HORA_SAIDA ASC')
    Left = 296
    Top = 160
  end
  object ADOQuery2: TADOQuery
    Active = True
    Connection = FPrincipal.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM VEICULOS ORDER BY COD_VEIC ASC')
    Left = 296
    Top = 192
  end
  object DataSource2: TDataSource
    AutoEdit = False
    DataSet = ADOQuery2
    Left = 264
    Top = 192
  end
end
