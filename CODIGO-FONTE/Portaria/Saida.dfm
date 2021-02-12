object FSaida: TFSaida
  Left = 204
  Top = 102
  Width = 818
  Height = 671
  VertScrollBar.Position = 48
  Caption = 'Sa'#237'da de Ve'#237'culos'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = -38
    Width = 793
    Height = 49
    Align = alTop
    TabOrder = 0
    object BNovo: TSpeedButton
      Left = 6
      Top = 3
      Width = 44
      Height = 40
      Cursor = crHandPoint
      Caption = '&Novo'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
        333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
        0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
        07333337F33333337F333330FFFFFFFF07333337F33333337F333330FFFFFFFF
        07333FF7F33333337FFFBBB0FFFFFFFF0BB37777F3333333777F3BB0FFFFFFFF
        0BBB3777F3333FFF77773330FFFF000003333337F333777773333330FFFF0FF0
        33333337F3337F37F3333330FFFF0F0B33333337F3337F77FF333330FFFF003B
        B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
        3BB33773333773333773B333333B3333333B7333333733333337}
      Layout = blGlyphTop
      NumGlyphs = 2
      OnClick = BNovoClick
    end
    object BEditar: TSpeedButton
      Left = 57
      Top = 3
      Width = 44
      Height = 40
      Cursor = crHandPoint
      Caption = '&Editar'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
        000033333377777777773333330FFFFFFFF03FF3FF7FF33F3FF700300000FF0F
        00F077F777773F737737E00BFBFB0FFFFFF07773333F7F3333F7E0BFBF000FFF
        F0F077F3337773F3F737E0FBFBFBF0F00FF077F3333FF7F77F37E0BFBF00000B
        0FF077F3337777737337E0FBFBFBFBF0FFF077F33FFFFFF73337E0BF0000000F
        FFF077FF777777733FF7000BFB00B0FF00F07773FF77373377373330000B0FFF
        FFF03337777373333FF7333330B0FFFF00003333373733FF777733330B0FF00F
        0FF03333737F37737F373330B00FFFFF0F033337F77F33337F733309030FFFFF
        00333377737FFFFF773333303300000003333337337777777333}
      Layout = blGlyphTop
      NumGlyphs = 2
      OnClick = BEditarClick
    end
    object BGravar: TSpeedButton
      Left = 108
      Top = 3
      Width = 44
      Height = 40
      Cursor = crHandPoint
      Caption = '&Gravar'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333FFFFFFFFFFFFF33000077777770033377777777777773F000007888888
        00037F3337F3FF37F37F00000780088800037F3337F77F37F37F000007800888
        00037F3337F77FF7F37F00000788888800037F3337777777337F000000000000
        00037F3FFFFFFFFFFF7F00000000000000037F77777777777F7F000FFFFFFFFF
        00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
        00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
        00037F7F333333337F7F000FFFFFFFFF07037F7F33333333777F000FFFFFFFFF
        0003737FFFFFFFFF7F7330099999999900333777777777777733}
      Layout = blGlyphTop
      NumGlyphs = 2
      OnClick = BGravarClick
    end
    object BCancel: TSpeedButton
      Left = 159
      Top = 3
      Width = 44
      Height = 40
      Cursor = crHandPoint
      BiDiMode = bdLeftToRight
      Caption = '&Cancel'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
        03333377777777777F333301BBBBBBBB033333773F3333337F3333011BBBBBBB
        0333337F73F333337F33330111BBBBBB0333337F373F33337F333301110BBBBB
        0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
        0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
        0333337F337F33337F333301110BBBBB0333337F337FF3337F33330111B0BBBB
        0333337F337733337F333301110BBBBB0333337F337F33337F333301110BBBBB
        0333337F3F7F33337F333301E10BBBBB0333337F7F7F33337F333301EE0BBBBB
        0333337F777FFFFF7F3333000000000003333377777777777333}
      Layout = blGlyphTop
      NumGlyphs = 2
      ParentBiDiMode = False
      OnClick = BCancelClick
    end
    object Label1: TLabel
      Left = 368
      Top = 9
      Width = 219
      Height = 25
      Alignment = taCenter
      Caption = 'Portaria [Sa'#237'da de Ve'#237'culos]'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 625
    Width = 793
    Height = 19
    Panels = <>
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 24
    Width = 561
    Height = 305
    Caption = 'Sa'#237'da de Ve'#237'culos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    object Label2: TLabel
      Left = 56
      Top = 32
      Width = 55
      Height = 13
      Caption = 'Data Sa'#237'da'
      FocusControl = DBDataSaida
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 320
      Top = 32
      Width = 55
      Height = 13
      Caption = 'Hora Sa'#237'da'
      FocusControl = DBHoraSaida
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 56
      Top = 80
      Width = 48
      Height = 13
      Caption = 'KM Sa'#237'da'
      FocusControl = DBKmSaida
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 56
      Top = 240
      Width = 36
      Height = 13
      Caption = 'Destino'
      FocusControl = DBDestino
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 56
      Top = 128
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
    object Label7: TLabel
      Left = 56
      Top = 184
      Width = 43
      Height = 13
      Caption = 'Motorista'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DBDataSaida: TDBEdit
      Left = 56
      Top = 48
      Width = 113
      Height = 21
      BevelKind = bkSoft
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'DATA_SAIDA'
      DataSource = DataSource4
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 0
    end
    object DBHoraSaida: TDBEdit
      Left = 320
      Top = 48
      Width = 113
      Height = 21
      BevelKind = bkSoft
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'HORA_SAIDA'
      DataSource = DataSource4
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 5
      ParentFont = False
      TabOrder = 1
    end
    object DBKmSaida: TDBEdit
      Left = 56
      Top = 96
      Width = 113
      Height = 21
      BevelKind = bkSoft
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'KM_SAIDA'
      DataSource = DataSource4
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object DBDestino: TDBEdit
      Left = 56
      Top = 256
      Width = 382
      Height = 21
      BevelKind = bkSoft
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'DESTINO'
      DataSource = DataSource4
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object DBComboCodMoto: TDBLookupComboBox
      Left = 56
      Top = 200
      Width = 382
      Height = 21
      DataField = 'COD_MOTO'
      DataSource = DataSource4
      DropDownRows = 20
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      KeyField = 'COD_MOTO'
      ListField = 'COD_MOTO;NOME_MOTO'
      ListFieldIndex = 1
      ListSource = DataSource2
      NullValueKey = 46
      ParentFont = False
      TabOrder = 4
    end
    object DBComboCodVeic: TDBLookupComboBox
      Left = 56
      Top = 144
      Width = 382
      Height = 21
      DataField = 'COD_VEIC'
      DataSource = DataSource4
      DropDownRows = 20
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      KeyField = 'COD_VEIC'
      ListField = 'COD_VEIC;TIPO_VEIC'
      ListSource = DataSource3
      NullValueKey = 46
      ParentFont = False
      TabOrder = 3
    end
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 344
    Width = 561
    Height = 281
    DataSource = DataSource4
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
  end
  object StatusBar2: TStatusBar
    Left = 0
    Top = -48
    Width = 793
    Height = 10
    Align = alTop
    Panels = <>
  end
  object ADODataSet1: TADODataSet
    Active = True
    Connection = FPrincipal.ADOConnection1
    CursorType = ctStatic
    CommandText = 'select * from MOVIMENTACAO'
    Parameters = <>
    Left = 616
    Top = 72
  end
  object ADODataSet2: TADODataSet
    Active = True
    Connection = FPrincipal.ADOConnection1
    CursorType = ctStatic
    CommandText = 'select * from MOTORISTAS order by NOME_MOTO asc'
    Parameters = <>
    Left = 616
    Top = 104
  end
  object ADODataSet3: TADODataSet
    Active = True
    Connection = FPrincipal.ADOConnection1
    CursorType = ctStatic
    CommandText = 'select * from VEICULOS order by COD_VEIC asc'
    Parameters = <>
    Left = 616
    Top = 136
  end
  object ADODataSet4: TADODataSet
    Active = True
    Connection = FPrincipal.ADOConnection1
    CursorType = ctStatic
    BeforePost = ADODataSet4BeforePost
    CommandText = 
      'select * from CS_CONSULTA_ENTRADA order by DATA_SAIDA, HORA_SAID' +
      'A asc'
    Parameters = <>
    Left = 616
    Top = 168
    object ADODataSet4COD_VEIC: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'VE'#205'CULO'
      DisplayWidth = 12
      FieldName = 'COD_VEIC'
    end
    object ADODataSet4DATA_SAIDA: TDateTimeField
      DisplayLabel = 'DATA SA'#205'DA'
      DisplayWidth = 22
      FieldName = 'DATA_SAIDA'
      EditMask = '!99/99/0000;1;_'
    end
    object ADODataSet4HORA_SAIDA: TDateTimeField
      DisplayLabel = 'HORA SA'#205'DA'
      DisplayWidth = 22
      FieldName = 'HORA_SAIDA'
      DisplayFormat = 'HH:nn'
      EditMask = '!90:00;1;_'
    end
    object ADODataSet4KM_SAIDA: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'KM SA'#205'DA'
      DisplayWidth = 12
      FieldName = 'KM_SAIDA'
    end
    object ADODataSet4DESTINO: TWideStringField
      DisplayWidth = 60
      FieldName = 'DESTINO'
      Size = 50
    end
    object ADODataSet4COD_MOTO: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'R.E.'
      DisplayWidth = 12
      FieldName = 'COD_MOTO'
    end
    object ADODataSet4DATA_ENTRADA: TDateTimeField
      DisplayLabel = 'DATA ENTRADA'
      DisplayWidth = 22
      FieldName = 'DATA_ENTRADA'
    end
    object ADODataSet4HORA_ENTRADA: TDateTimeField
      DisplayLabel = 'HORA ENTRADA'
      DisplayWidth = 22
      FieldName = 'HORA_ENTRADA'
      DisplayFormat = 'HH:nn'
    end
    object ADODataSet4KM_ENTRADA: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'KM ENTRADA'
      DisplayWidth = 16
      FieldName = 'KM_ENTRADA'
    end
    object ADODataSet4OBS: TWideStringField
      DisplayWidth = 60
      FieldName = 'OBS'
      Size = 50
    end
    object ADODataSet4KM_PERCORRIDO: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'KM PERCORRIDA'
      DisplayWidth = 30
      FieldName = 'KM_PERCORRIDO'
    end
  end
  object DataSource1: TDataSource
    DataSet = ADODataSet1
    Left = 584
    Top = 72
  end
  object DataSource2: TDataSource
    DataSet = ADODataSet2
    Left = 584
    Top = 104
  end
  object DataSource3: TDataSource
    DataSet = ADODataSet3
    Left = 584
    Top = 136
  end
  object DataSource4: TDataSource
    DataSet = ADODataSet4
    Left = 584
    Top = 168
  end
end
