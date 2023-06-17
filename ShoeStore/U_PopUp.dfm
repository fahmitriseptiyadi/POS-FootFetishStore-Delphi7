object F_PopUp: TF_PopUp
  Left = 636
  Top = 281
  Width = 1017
  Height = 625
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
  object Label10: TLabel
    Left = 40
    Top = 168
    Width = 36
    Height = 16
    Caption = 'Brand'
  end
  object Label11: TLabel
    Left = 150
    Top = 168
    Width = 3
    Height = 16
    Caption = ':'
  end
  object Label12: TLabel
    Left = 160
    Top = 168
    Width = 50
    Height = 16
    Caption = '**********'
  end
  object Label13: TLabel
    Left = 48
    Top = 176
    Width = 36
    Height = 16
    Caption = 'Brand'
  end
  object Label14: TLabel
    Left = 158
    Top = 176
    Width = 3
    Height = 16
    Caption = ':'
  end
  object Label15: TLabel
    Left = 168
    Top = 176
    Width = 50
    Height = 16
    Caption = '**********'
  end
  object PGC1: TPageControl
    Left = 0
    Top = 0
    Width = 999
    Height = 578
    ActivePage = ts_StokSepatu
    Align = alClient
    TabOrder = 0
    object TS_InputDetailSepatu: TTabSheet
      Caption = 'Input Detail Barang'
      object Label9: TLabel
        Left = 336
        Top = 72
        Width = 42
        Height = 16
        Caption = 'Satuan'
      end
      object Label8: TLabel
        Left = 336
        Top = 120
        Width = 39
        Height = 16
        Caption = 'Varian'
      end
      object Label7: TLabel
        Left = 336
        Top = 160
        Width = 40
        Height = 16
        Caption = 'Warna'
      end
      object lbl1: TLabel
        Left = 8
        Top = 8
        Width = 266
        Height = 29
        Caption = 'Form Input Detail Barang'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -23
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label1: TLabel
        Left = 40
        Top = 72
        Width = 95
        Height = 16
        Caption = 'Kode/ID Sepatu'
      end
      object Label2: TLabel
        Left = 40
        Top = 104
        Width = 83
        Height = 16
        Caption = 'Nama Sepatu'
      end
      object Label3: TLabel
        Left = 40
        Top = 136
        Width = 78
        Height = 16
        Caption = 'Jenis Sepatu'
      end
      object lbl2: TLabel
        Left = 150
        Top = 72
        Width = 3
        Height = 16
        Caption = ':'
      end
      object lbl3: TLabel
        Left = 150
        Top = 104
        Width = 3
        Height = 16
        Caption = ':'
      end
      object lbl4: TLabel
        Left = 150
        Top = 136
        Width = 3
        Height = 16
        Caption = ':'
      end
      object L_kodesepatu: TLabel
        Left = 160
        Top = 72
        Width = 50
        Height = 16
        Caption = '**********'
      end
      object L_namasepatu: TLabel
        Left = 160
        Top = 104
        Width = 50
        Height = 16
        Caption = '**********'
      end
      object L_jenissepatu: TLabel
        Left = 160
        Top = 136
        Width = 50
        Height = 16
        Caption = '**********'
      end
      object Label16: TLabel
        Left = 40
        Top = 168
        Width = 36
        Height = 16
        Caption = 'Brand'
      end
      object Label17: TLabel
        Left = 150
        Top = 168
        Width = 3
        Height = 16
        Caption = ':'
      end
      object L_brand: TLabel
        Left = 160
        Top = 168
        Width = 50
        Height = 16
        Caption = '**********'
      end
      object shp3: TShape
        Left = 6
        Top = 200
        Width = 675
        Height = 9
      end
      object shp1: TShape
        Left = 6
        Top = 40
        Width = 675
        Height = 9
      end
      object E_satuan: TEdit
        Left = 424
        Top = 72
        Width = 249
        Height = 24
        TabOrder = 0
      end
      object btn_SimpandetailBarang: TButton
        Left = 40
        Top = 224
        Width = 75
        Height = 25
        Caption = 'Simpan'
        TabOrder = 1
        OnClick = btn_SimpandetailBarangClick
      end
      object btn_EditdetailBarang: TButton
        Left = 136
        Top = 224
        Width = 75
        Height = 25
        Caption = 'Edit'
        TabOrder = 2
        OnClick = btn_EditdetailBarangClick
      end
      object E_varian: TEdit
        Left = 424
        Top = 112
        Width = 249
        Height = 24
        TabOrder = 3
      end
      object cbb_warna_sepatu: TComboBox
        Left = 424
        Top = 152
        Width = 249
        Height = 24
        ItemHeight = 16
        TabOrder = 4
        Items.Strings = (
          'BlackWhite (BW)'
          'Black'
          'White'
          'White Blue'
          'Red'
          'Blue'
          'Blue Gum'
          'Cream'
          ''
          ''
          ''
          '')
      end
    end
    object ts_DaftarDetailBarang: TTabSheet
      Caption = 'Daftar Detail Barang'
      ImageIndex = 1
      object L_lbl16: TLabel
        Left = 0
        Top = 7
        Width = 129
        Height = 29
        Caption = 'Pilih Sepatu'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -23
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object L_1: TLabel
        Left = 480
        Top = 16
        Width = 24
        Height = 16
        Caption = 'Cari'
      end
      object dbgrd2: TDBGrid
        Left = 0
        Top = 43
        Width = 697
        Height = 206
        Color = cl3DLight
        DataSource = DataModuleTokoSepatu.ds_detailsepatu
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'id_detail_sepatu'
            Title.Alignment = taCenter
            Title.Caption = 'ID Detail Sepatu'
            Title.Color = clInactiveCaption
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nama_sepatu'
            Title.Alignment = taCenter
            Title.Caption = 'Nama  Sepatu'
            Title.Color = clInactiveCaption
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 179
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'jenis_sepatu'
            Title.Alignment = taCenter
            Title.Caption = 'Jenis Sepatu'
            Title.Color = clInactiveCaption
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'brand'
            Title.Alignment = taCenter
            Title.Caption = 'Brand'
            Title.Color = clInactiveCaption
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 79
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'warna'
            Title.Alignment = taCenter
            Title.Color = clInactiveCaption
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'varian'
            Title.Alignment = taCenter
            Title.Caption = 'Varian'
            Title.Color = clInactiveCaption
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 249
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'satuan'
            Title.Alignment = taCenter
            Title.Caption = 'Satuan'
            Title.Color = clInactiveCaption
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 68
            Visible = True
          end>
      end
      object btn_PilihSepatu: TButton
        Left = 3
        Top = 251
        Width = 118
        Height = 25
        Caption = 'Pilih Sepatu'
        TabOrder = 1
        OnClick = btn_PilihSepatuClick
      end
      object btn_1: TButton
        Left = 600
        Top = 251
        Width = 97
        Height = 25
        Caption = 'Kembali'
        TabOrder = 2
      end
      object E_CariVarian: TEdit
        Left = 520
        Top = 12
        Width = 177
        Height = 24
        TabOrder = 3
        OnChange = E_CariVarianChange
      end
    end
    object ts_Konfirmasi: TTabSheet
      Caption = 'Konfirmasi '
      ImageIndex = 2
      object dbgrd1: TDBGrid
        Left = 0
        Top = 40
        Width = 713
        Height = 161
        DataSource = DataModuleTokoSepatu.ds_pembelian
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'no_faktur_pembelian'
            Title.Alignment = taCenter
            Title.Caption = 'No.Faktur '
            Title.Color = clActiveCaption
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'tgl_pembelian'
            Title.Alignment = taCenter
            Title.Caption = 'Tanggal Pembelian'
            Title.Color = clActiveCaption
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'id_supplier'
            Title.Alignment = taCenter
            Title.Caption = 'ID Supplier'
            Title.Color = clActiveCaption
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nama_supplier'
            Title.Alignment = taCenter
            Title.Caption = 'Nama '
            Title.Color = clActiveCaption
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'alamat_supplier'
            Title.Alignment = taCenter
            Title.Caption = 'Alamat'
            Title.Color = clActiveCaption
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'tlp_supplier'
            Title.Alignment = taCenter
            Title.Caption = 'No.Tlp'
            Title.Color = clActiveCaption
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end>
      end
      object grp1: TGroupBox
        Left = 720
        Top = 8
        Width = 265
        Height = 209
        Caption = 'grp1'
        TabOrder = 1
        object L_2: TLabel
          Left = 8
          Top = 24
          Width = 58
          Height = 16
          Caption = 'No.Faktur'
        end
        object rg_Konfrimasi: TRadioGroup
          Left = 8
          Top = 56
          Width = 249
          Height = 105
          Caption = 'Pilih Konfirmasi'
          Columns = 2
          Items.Strings = (
            'All'
            'One By One')
          TabOrder = 0
        end
        object btn_Konfirmasi: TButton
          Left = 160
          Top = 168
          Width = 99
          Height = 33
          Caption = 'Konfirmasi'
          TabOrder = 1
          OnClick = btn_KonfirmasiClick
        end
        object cbb_nofaktur: TComboBox
          Left = 112
          Top = 24
          Width = 145
          Height = 24
          ItemHeight = 16
          TabOrder = 2
          OnChange = cbb_nofakturChange
        end
      end
      object btn_KembaliKonfirmasi: TButton
        Left = 880
        Top = 504
        Width = 99
        Height = 33
        Caption = 'Kembali'
        TabOrder = 2
        OnClick = btn_KembaliKonfirmasiClick
      end
      object dbgrd3: TDBGrid
        Left = 0
        Top = 224
        Width = 985
        Height = 273
        DataSource = DataModuleTokoSepatu.ds_detailpembelian
        TabOrder = 3
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'Id_detail_pembelian'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'id_sepatu'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nama_sepatu'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'jenis_sepatu'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'brand'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'id_detail_sepatu'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'varian'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'warna'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'satuan'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'jumlah_sepatu'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'harga_beli'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'total_harga'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'status'
            Visible = True
          end>
      end
    end
    object ts_StokSepatu: TTabSheet
      Caption = 'Stok Sepatu'
      ImageIndex = 3
      object L_3: TLabel
        Left = 0
        Top = 7
        Width = 101
        Height = 29
        Caption = 'Pilih Stok'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -23
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object L_4: TLabel
        Left = 752
        Top = 16
        Width = 57
        Height = 16
        Caption = 'Cari Stok '
      end
      object dbgrd6: TDBGrid
        Left = 0
        Top = 40
        Width = 985
        Height = 425
        DataSource = DataModuleTokoSepatu.ds_stok
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'id_stok'
            Width = 138
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'id_sepatu'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nama_sepatu'
            Width = 199
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'jenis_sepatu'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'brand'
            Width = 183
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'id_detail_sepatu'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'satuan'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'varian'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'warna'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'harga_sepatu'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'jumlah_stok'
            Width = 184
            Visible = True
          end>
      end
      object btn_PilihStok: TButton
        Left = 11
        Top = 491
        Width = 118
        Height = 25
        Caption = 'Pilih Stok'
        TabOrder = 1
        OnClick = btn_PilihStokClick
      end
      object btn_KembaliDftStok: TButton
        Left = 872
        Top = 507
        Width = 97
        Height = 25
        Caption = 'Kembali'
        TabOrder = 2
      end
      object E_CariStokDftStok: TEdit
        Left = 816
        Top = 8
        Width = 153
        Height = 24
        TabOrder = 3
      end
    end
  end
end
