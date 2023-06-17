object FormSetHarga: TFormSetHarga
  Left = 777
  Top = 399
  Width = 323
  Height = 189
  Caption = 'FormSetHarga'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 120
  TextHeight = 16
  object L_1: TLabel
    Left = 24
    Top = 8
    Width = 261
    Height = 29
    Caption = 'Set Harga Jual Sepatu'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -23
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object E_SetHarga: TEdit
    Left = 24
    Top = 48
    Width = 265
    Height = 24
    TabOrder = 0
  end
  object btn_SetHarga: TButton
    Left = 104
    Top = 88
    Width = 75
    Height = 25
    Caption = 'Set Harga'
    TabOrder = 1
    OnClick = btn_SetHargaClick
  end
end
