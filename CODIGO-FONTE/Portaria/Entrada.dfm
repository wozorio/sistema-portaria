object FEntrada: TFEntrada
  Left = 210
  Top = 90
  Width = 784
  Height = 665
  VertScrollBar.Position = 54
  Caption = 'Entrada de Ve'#237'culos'
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
  object Label9: TLabel
    Left = 592
    Top = 114
    Width = 64
    Height = 13
    Caption = 'DATA SA'#205'DA'
    FocusControl = DBDataSaida
    Visible = False
  end
  object Panel1: TPanel
    Left = 0
    Top = -44
    Width = 759
    Height = 49
    Align = alTop
    TabOrder = 0
    object BEditar: TSpeedButton
      Left = 6
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
      Left = 57
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
      Left = 108
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
      Width = 236
      Height = 25
      Alignment = taCenter
      Caption = 'Portaria [Entrada de Ve'#237'culos]'
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
    Top = 619
    Width = 759
    Height = 19
    Panels = <>
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 18
    Width = 561
    Height = 305
    Caption = 'Entrada de Ve'#237'culos'
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
      Width = 63
      Height = 13
      Caption = 'Data Entrada'
      FocusControl = DBDataEntrada
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
      Width = 63
      Height = 13
      Caption = 'Hora Entrada'
      FocusControl = DBHoraEntrada
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 56
      Top = 104
      Width = 56
      Height = 13
      Caption = 'KM Entrada'
      FocusControl = DBKmEntrada
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 320
      Top = 104
      Width = 67
      Height = 13
      Caption = 'KM Percorrida'
      FocusControl = DBKMPercorrida
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 56
      Top = 176
      Width = 25
      Height = 13
      Caption = 'Obs.:'
      FocusControl = DBObs
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 64
      Top = 240
      Width = 54
      Height = 13
      Caption = 'KM_SAIDA'
      FocusControl = DBKMSaida
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object Label8: TLabel
      Left = 248
      Top = 248
      Width = 66
      Height = 13
      Caption = 'HORA SA'#205'DA'
      FocusControl = DBHoraSaida
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object DBDataEntrada: TDBEdit
      Left = 56
      Top = 48
      Width = 113
      Height = 21
      BevelKind = bkSoft
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'DATA_ENTRADA'
      DataSource = DataSource3
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 0
    end
    object DBHoraEntrada: TDBEdit
      Left = 320
      Top = 48
      Width = 113
      Height = 21
      BevelKind = bkSoft
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'HORA_ENTRADA'
      DataSource = DataSource3
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 5
      ParentFont = False
      TabOrder = 1
    end
    object DBKmEntrada: TDBEdit
      Left = 56
      Top = 120
      Width = 113
      Height = 21
      BevelKind = bkSoft
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'KM_ENTRADA'
      DataSource = DataSource3
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object DBKMPercorrida: TDBEdit
      Left = 320
      Top = 120
      Width = 113
      Height = 21
      BevelKind = bkSoft
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'KM_PERCORRIDO'
      DataSource = DataSource3
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object DBObs: TDBEdit
      Left = 56
      Top = 192
      Width = 382
      Height = 21
      BevelKind = bkSoft
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'OBS'
      DataSource = DataSource3
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object BCalc: TBitBtn
      Left = 320
      Top = 144
      Width = 75
      Height = 25
      Caption = '&Calcular'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = BCalcClick
    end
    object DBKMSaida: TDBEdit
      Left = 64
      Top = 256
      Width = 134
      Height = 21
      DataField = 'KM_SAIDA'
      DataSource = DataSource3
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      Visible = False
    end
    object DBHoraSaida: TDBEdit
      Left = 248
      Top = 264
      Width = 236
      Height = 21
      DataField = 'HORA_SAIDA'
      DataSource = DataSource3
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 5
      ParentFont = False
      TabOrder = 7
      Visible = False
    end
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 338
    Width = 561
    Height = 281
    DataSource = DataSource3
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
    Top = -54
    Width = 759
    Height = 10
    Align = alTop
    Panels = <>
  end
  object DBDataSaida: TDBEdit
    Left = 584
    Top = 138
    Width = 236
    Height = 21
    DataField = 'DATA_SAIDA'
    DataSource = DataSource3
    MaxLength = 10
    TabOrder = 5
    Visible = False
  end
  object ADODataSet3: TADODataSet
    Active = True
    Connection = FPrincipal.ADOConnection1
    CursorType = ctStatic
    BeforePost = ADODataSet3BeforePost
    CommandText = 
      'select * from CS_CONSULTA_ENTRADA order by DATA_SAIDA, HORA_SAID' +
      'A'
    Parameters = <>
    Left = 616
    Top = 80
    object ADODataSet3COD_VEIC: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'VE'#205'CULO'
      DisplayWidth = 12
      FieldName = 'COD_VEIC'
    end
    object ADODataSet3DATA_SAIDA: TDateTimeField
      DisplayLabel = 'DATA SA'#205'DA'
      DisplayWidth = 22
      FieldName = 'DATA_SAIDA'
      EditMask = '!99/99/0000;1;_'
    end
    object ADODataSet3HORA_SAIDA: TDateTimeField
      DisplayLabel = 'HORA SA'#205'DA'
      DisplayWidth = 22
      FieldName = 'HORA_SAIDA'
      DisplayFormat = 'HH:nn'
      EditMask = '!90:00;1;_'
    end
    object ADODataSet3KM_SAIDA: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'KM SA'#205'DA'
      DisplayWidth = 12
      FieldName = 'KM_SAIDA'
    end
    object ADODataSet3DESTINO: TWideStringField
      DisplayWidth = 60
      FieldName = 'DESTINO'
      Size = 50
    end
    object ADODataSet3COD_MOTO: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'R.E.'
      DisplayWidth = 12
      FieldName = 'COD_MOTO'
    end
    object ADODataSet3DATA_ENTRADA: TDateTimeField
      DisplayLabel = 'DATA ENTRADA'
      DisplayWidth = 22
      FieldName = 'DATA_ENTRADA'
      EditMask = '!99/99/0000;1;_'
    end
    object ADODataSet3HORA_ENTRADA: TDateTimeField
      DisplayLabel = 'HORA ENTRADA'
      DisplayWidth = 22
      FieldName = 'HORA_ENTRADA'
      DisplayFormat = 'HH:nn'
      EditMask = '!90:00;1;_'
    end
    object ADODataSet3KM_ENTRADA: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'KM ENTRADA'
      DisplayWidth = 16
      FieldName = 'KM_ENTRADA'
    end
    object ADODataSet3OBS: TWideStringField
      DisplayWidth = 60
      FieldName = 'OBS'
      Size = 50
    end
    object ADODataSet3KM_PERCORRIDO: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'KM PERCORRIDA'
      DisplayWidth = 30
      FieldName = 'KM_PERCORRIDO'
    end
  end
  object DataSource3: TDataSource
    DataSet = ADODataSet3
    Left = 584
    Top = 80
  end
end
