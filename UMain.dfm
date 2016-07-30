object MainForm: TMainForm
  Left = 0
  Top = 0
  Caption = 'Gmail'
  ClientHeight = 300
  ClientWidth = 442
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 16
  object lbl1: TLabel
    Left = 11
    Top = 14
    Width = 32
    Height = 16
    Caption = #1061#1086#1089#1090':'
  end
  object lbl2: TLabel
    Left = 225
    Top = 14
    Width = 33
    Height = 16
    Caption = #1055#1086#1088#1090':'
  end
  object lbl3: TLabel
    Left = 11
    Top = 44
    Width = 40
    Height = 16
    Caption = #1051#1086#1075#1080#1085':'
  end
  object lbl4: TLabel
    Left = 225
    Top = 44
    Width = 48
    Height = 16
    Caption = #1055#1072#1088#1086#1083#1100':'
  end
  object edtHost: TEdit
    Left = 62
    Top = 11
    Width = 150
    Height = 24
    TabOrder = 0
    Text = 'imap.gmail.com'
  end
  object btnLogin: TButton
    Left = 8
    Top = 267
    Width = 100
    Height = 25
    Caption = #1055#1086#1076#1082#1083#1102#1095#1077#1085#1080#1077
    TabOrder = 1
    OnClick = btnLoginClick
  end
  object edtPort: TEdit
    Left = 284
    Top = 11
    Width = 60
    Height = 24
    TabOrder = 2
    Text = '993'
  end
  object edtLogin: TEdit
    Left = 62
    Top = 41
    Width = 150
    Height = 24
    TabOrder = 3
    Text = 'vetalkolesnik@gmail.com'
  end
  object edtPassword: TEdit
    Left = 284
    Top = 41
    Width = 150
    Height = 24
    PasswordChar = '*'
    TabOrder = 4
    Text = 'ViTaLiK71'
  end
  object chkAutoTLS: TCheckBox
    Left = 62
    Top = 71
    Width = 150
    Height = 17
    Caption = #1040#1074#1090#1086' TLS'
    Checked = True
    State = cbChecked
    TabOrder = 5
  end
  object chkSSL: TCheckBox
    Left = 284
    Top = 71
    Width = 150
    Height = 17
    Caption = #1055#1086#1083#1085#1099#1081' SSL'
    Checked = True
    State = cbChecked
    TabOrder = 6
  end
  object mmoLog: TMemo
    Left = 8
    Top = 94
    Width = 426
    Height = 167
    ScrollBars = ssVertical
    TabOrder = 7
  end
end
