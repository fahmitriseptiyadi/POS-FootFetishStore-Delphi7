object FormRegistrasi: TFormRegistrasi
  Left = 678
  Top = 240
  Width = 385
  Height = 553
  Caption = 'FormRegistrasi'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 120
  TextHeight = 16
  object shp21: TShape
    Left = 0
    Top = 37
    Width = 367
    Height = 469
    Align = alClient
    Brush.Color = clActiveCaption
  end
  object L_1: TLabel
    Left = 0
    Top = 0
    Width = 367
    Height = 37
    Align = alTop
    Alignment = taCenter
    Caption = 'REGISTRASI ADMIN'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -33
    Font.Name = 'Courier New'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object L_2: TLabel
    Left = 24
    Top = 120
    Width = 48
    Height = 23
    Caption = 'Nama'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Courier New'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object L_3: TLabel
    Left = 24
    Top = 208
    Width = 120
    Height = 23
    Caption = 'No.Telepon'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Courier New'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object L_4: TLabel
    Left = 24
    Top = 368
    Width = 96
    Height = 23
    Caption = 'Password'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Courier New'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object L_5: TLabel
    Left = 24
    Top = 288
    Width = 96
    Height = 23
    Caption = 'Username'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Courier New'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object L_6: TLabel
    Left = 336
    Top = 112
    Width = 7
    Height = 24
    Caption = '*'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -18
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object L_7: TLabel
    Left = 336
    Top = 200
    Width = 7
    Height = 24
    Caption = '*'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -18
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object L_8: TLabel
    Left = 336
    Top = 280
    Width = 7
    Height = 24
    Caption = '*'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -18
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object L_9: TLabel
    Left = 336
    Top = 360
    Width = 7
    Height = 24
    Caption = '*'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -18
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object E_namaFR: TEdit
    Left = 152
    Top = 112
    Width = 177
    Height = 24
    TabOrder = 0
  end
  object E_tlpFR: TEdit
    Left = 152
    Top = 200
    Width = 177
    Height = 24
    TabOrder = 1
  end
  object E_usernameFR: TEdit
    Left = 152
    Top = 280
    Width = 177
    Height = 24
    TabOrder = 2
  end
  object E_passFR: TEdit
    Left = 152
    Top = 360
    Width = 177
    Height = 24
    TabOrder = 3
  end
  object btnRegistrasi: TBitBtn
    Left = 24
    Top = 424
    Width = 305
    Height = 33
    Caption = 'Registrasi'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Courier New'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = btnRegistrasiClick
  end
  object btn1: TBitBtn
    Left = 24
    Top = 464
    Width = 305
    Height = 33
    Caption = 'Kembali'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Courier New'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    OnClick = btn1Click
  end
end
