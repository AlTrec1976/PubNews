object frmResult: TfrmResult
  Left = 0
  Top = 0
  Caption = #1056#1077#1079#1091#1083#1100#1090#1072#1090
  ClientHeight = 537
  ClientWidth = 702
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 496
    Width = 702
    Height = 41
    Align = alBottom
    TabOrder = 0
    object btnCode: TButton
      Left = 140
      Top = 6
      Width = 120
      Height = 25
      Caption = #1050#1086#1087#1080#1088#1086#1074#1072#1090#1100' '#1082#1086#1076
      TabOrder = 1
      OnClick = btnCodeClick
    end
    object btnText: TButton
      Left = 14
      Top = 6
      Width = 120
      Height = 25
      Caption = #1050#1086#1087#1080#1088#1086#1074#1072#1090#1100' '#1090#1077#1082#1089#1090
      TabOrder = 0
      OnClick = btnTextClick
    end
    object btnExit: TButton
      Left = 609
      Top = 6
      Width = 75
      Height = 25
      Caption = #1047#1072#1074#1077#1088#1096#1080#1090#1100
      TabOrder = 2
      OnClick = btnExitClick
    end
    object Button1: TButton
      Left = 512
      Top = 6
      Width = 75
      Height = 25
      Caption = #1048#1089#1087#1088#1072#1074#1080#1090#1100
      TabOrder = 3
      OnClick = Button1Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 702
    Height = 496
    Align = alClient
    TabOrder = 1
    object Memo1: TMemo
      Left = 1
      Top = 1
      Width = 700
      Height = 200
      Align = alTop
      Lines.Strings = (
        'Memo1')
      ScrollBars = ssBoth
      TabOrder = 0
    end
    object WebBrowser: TWebBrowser
      Left = 1
      Top = 201
      Width = 700
      Height = 294
      Align = alClient
      TabOrder = 1
      ExplicitTop = 273
      ExplicitHeight = 222
      ControlData = {
        4C00000059480000631E00000000000000000000000000000000000000000000
        000000004C000000000000000000000001000000E0D057007335CF11AE690800
        2B2E126208000000000000004C0000000114020000000000C000000000000046
        8000000000000000000000000000000000000000000000000000000000000000
        00000000000000000100000000000000000000000000000000000000}
    end
  end
end
