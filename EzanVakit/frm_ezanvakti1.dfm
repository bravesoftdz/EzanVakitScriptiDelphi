object frm_EzanVakit: Tfrm_EzanVakit
  Left = 802
  Top = 399
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Ezan Vakti | V1.0'
  ClientHeight = 303
  ClientWidth = 645
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label6: TLabel
    Left = 77
    Top = 120
    Width = 75
    Height = 20
    Caption = #304'STANBUL'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 46
    Top = 146
    Width = 132
    Height = 20
    Caption = 'VAK'#304'TADI - 00:00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 250
    Width = 645
    Height = 53
    Align = alBottom
    BevelOuter = bvNone
    Enabled = False
    TabOrder = 0
    ExplicitTop = 240
    object SpeedButton1: TSpeedButton
      Left = 0
      Top = 0
      Width = 129
      Height = 53
      Align = alLeft
      Enabled = False
    end
    object SpeedButton2: TSpeedButton
      Left = 129
      Top = 0
      Width = 129
      Height = 53
      Align = alLeft
      ExplicitLeft = 123
    end
    object SpeedButton3: TSpeedButton
      Left = 258
      Top = 0
      Width = 129
      Height = 53
      Align = alLeft
      ExplicitLeft = 329
      ExplicitTop = -8
    end
    object SpeedButton4: TSpeedButton
      Left = 387
      Top = 0
      Width = 129
      Height = 53
      Align = alLeft
      ExplicitLeft = 442
      ExplicitTop = -8
    end
    object SpeedButton5: TSpeedButton
      Left = 516
      Top = 0
      Width = 129
      Height = 53
      Align = alLeft
      ExplicitLeft = 635
      ExplicitTop = 8
    end
    object label1: TLabel
      Left = 25
      Top = 8
      Width = 75
      Height = 13
      Caption = 'SABAH VAKT'#304
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      StyleElements = [seClient, seBorder]
    end
    object Label2: TLabel
      Left = 156
      Top = 8
      Width = 65
      Height = 13
      Caption = #214#286'LE VAKT'#304
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      StyleElements = [seClient, seBorder]
    end
    object Label3: TLabel
      Left = 284
      Top = 8
      Width = 74
      Height = 13
      Caption = #304'K'#304'ND'#304' VAKT'#304
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      StyleElements = [seClient, seBorder]
    end
    object Label4: TLabel
      Left = 412
      Top = 8
      Width = 77
      Height = 13
      Caption = 'AK'#350'AM VAKT'#304
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      StyleElements = [seClient, seBorder]
    end
    object Label5: TLabel
      Left = 544
      Top = 8
      Width = 71
      Height = 13
      Caption = 'YATSI VAKT'#304
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      StyleElements = [seClient, seBorder]
    end
    object Sabah: TLabel
      Left = 46
      Top = 27
      Width = 31
      Height = 13
      Alignment = taCenter
      Caption = '00:00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      StyleElements = [seClient, seBorder]
    end
    object Ogle: TLabel
      Left = 174
      Top = 27
      Width = 31
      Height = 13
      Alignment = taCenter
      Caption = '00:00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      StyleElements = [seClient, seBorder]
    end
    object ikindi: TLabel
      Left = 306
      Top = 27
      Width = 31
      Height = 13
      Alignment = taCenter
      Caption = '00:00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      StyleElements = [seClient, seBorder]
    end
    object Aksam: TLabel
      Left = 433
      Top = 27
      Width = 31
      Height = 13
      Alignment = taCenter
      Caption = '00:00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      StyleElements = [seClient, seBorder]
    end
    object Yatsi: TLabel
      Left = 565
      Top = 27
      Width = 31
      Height = 13
      Alignment = taCenter
      Caption = '00:00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      StyleElements = [seClient, seBorder]
    end
  end
  object DateTimePicker1: TDateTimePicker
    Left = 451
    Top = 223
    Width = 186
    Height = 21
    Date = 43070.957957083330000000
    Time = 43070.957957083330000000
    TabOrder = 1
    Visible = False
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 645
    Height = 41
    Align = alTop
    Caption = 'HEADER'
    TabOrder = 2
  end
  object ServerVakitCek: TIdHTTP
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = -1
    Request.ContentRangeStart = -1
    Request.ContentRangeInstanceLength = -1
    Request.Accept = 'text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    Request.Ranges.Units = 'bytes'
    Request.Ranges = <>
    HTTPOptions = [hoForceEncodeParams]
    Left = 32
    Top = 168
  end
end
