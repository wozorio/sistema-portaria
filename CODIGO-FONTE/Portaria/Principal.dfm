object FPrincipal: TFPrincipal
  Left = 200
  Top = 116
  Width = 782
  Height = 603
  Caption = 'SoftWell - Sistema de Portaria'
  Color = clBtnShadow
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIForm
  Menu = MainMenu1
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar1: TStatusBar
    Left = 0
    Top = 532
    Width = 774
    Height = 19
    Panels = <>
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Data Source=PORTA' +
      'RIA'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Left = 696
    Top = 32
  end
  object MainMenu1: TMainMenu
    Left = 728
    Top = 32
    object MPortaria: TMenuItem
      Caption = 'Portaria'
      object SMEntrada: TMenuItem
        Caption = '&Entrada'
        OnClick = SMEntradaClick
      end
      object SMSaida: TMenuItem
        Caption = '&Sa'#237'da'
        OnClick = SMSaidaClick
      end
    end
    object MRelatorio: TMenuItem
      Caption = '&Relat'#243'rio'
      object SMPeriodoPerodo1: TMenuItem
        Caption = '&Per'#237'odo'
        OnClick = SMPeriodoPerodo1Click
      end
      object SMMotorista: TMenuItem
        Caption = '&Motorista'
        OnClick = SMMotoristaClick
      end
      object SMVeculo: TMenuItem
        Caption = '&Ve'#237'culo'
        OnClick = SMVeculoClick
      end
    end
    object MCadastro: TMenuItem
      Caption = '&Cadastro'
      object MMotoristas: TMenuItem
        Caption = '&Motoristas'
        OnClick = MMotoristasClick
      end
      object MVeiculos: TMenuItem
        Caption = 'Ve'#237'culos'
        OnClick = MVeiculosClick
      end
    end
    object MAjuda: TMenuItem
      Caption = '&Ajuda'
      object SMSobre: TMenuItem
        Caption = '&Sobre...'
        OnClick = SMSobreClick
      end
    end
    object MSair: TMenuItem
      Caption = 'Sair'
      OnClick = MSairClick
    end
  end
end
