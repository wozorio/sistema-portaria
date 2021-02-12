object FCadVeiculos: TFCadVeiculos
  Left = 278
  Top = 229
  Width = 778
  Height = 540
  Caption = 'Cadastro de Ve'#237'culos'
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
    Top = 10
    Width = 754
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
    object BExcluir: TSpeedButton
      Left = 159
      Top = 3
      Width = 44
      Height = 40
      Cursor = crHandPoint
      Caption = '&Excluir'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333000000000
        3333333777777777F3333330F777777033333337F3F3F3F7F3333330F0808070
        33333337F7F7F7F7F3333330F080707033333337F7F7F7F7F3333330F0808070
        33333337F7F7F7F7F3333330F080707033333337F7F7F7F7F3333330F0808070
        333333F7F7F7F7F7F3F33030F080707030333737F7F7F7F7F7333300F0808070
        03333377F7F7F7F773333330F080707033333337F7F7F7F7F333333070707070
        33333337F7F7F7F7FF3333000000000003333377777777777F33330F88877777
        0333337FFFFFFFFF7F3333000000000003333377777777777333333330777033
        3333333337FFF7F3333333333000003333333333377777333333}
      Layout = blGlyphTop
      NumGlyphs = 2
      OnClick = BExcluirClick
    end
    object BCancel: TSpeedButton
      Left = 213
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
      Width = 154
      Height = 25
      Alignment = taCenter
      Caption = 'Cadastro [Ve'#237'culos]'
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
    Top = 529
    Width = 754
    Height = 19
    Panels = <>
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 72
    Width = 489
    Height = 225
    Caption = 'Dados do Ve'#237'culo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    object Label2: TLabel
      Left = 8
      Top = 32
      Width = 32
      Height = 13
      Caption = 'Prefixo'
      FocusControl = DBCodVeic
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 8
      Top = 96
      Width = 21
      Height = 13
      Caption = 'Tipo'
      FocusControl = DBTipoVeic
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DBCodVeic: TDBEdit
      Left = 8
      Top = 56
      Width = 134
      Height = 21
      BevelKind = bkSoft
      BorderStyle = bsNone
      DataField = 'COD_VEIC'
      DataSource = DataSource1
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object DBTipoVeic: TDBEdit
      Left = 8
      Top = 120
      Width = 382
      Height = 21
      BevelKind = bkSoft
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'TIPO_VEIC'
      DataSource = DataSource1
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 312
    Width = 489
    Height = 217
    DataSource = DataSource1
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
    Top = 0
    Width = 754
    Height = 10
    Align = alTop
    Panels = <>
  end
  object ADODataSet1: TADODataSet
    Active = True
    Connection = FPrincipal.ADOConnection1
    CursorType = ctStatic
    BeforePost = ADODataSet1BeforePost
    BeforeDelete = ADODataSet1BeforeDelete
    CommandText = 'select * from VEICULOS order by COD_VEIC asc'
    Parameters = <>
    Left = 560
    Top = 72
    object ADODataSet1COD_VEIC: TIntegerField
      DisplayLabel = 'PREFIXO'
      DisplayWidth = 12
      FieldName = 'COD_VEIC'
    end
    object ADODataSet1TIPO_VEIC: TWideStringField
      DisplayLabel = 'TIPO'
      DisplayWidth = 81
      FieldName = 'TIPO_VEIC'
      Size = 50
    end
  end
  object DataSource1: TDataSource
    DataSet = ADODataSet1
    Left = 528
    Top = 72
  end
end
