object DataModuleTokoSepatu: TDataModuleTokoSepatu
  OldCreateOrder = False
  Left = 844
  Top = 90
  Height = 920
  Width = 802
  object Zcon_TokoSepatu: TZConnection
    Protocol = 'mysql'
    HostName = 'localhost'
    Port = 3306
    Database = 'tokosepatu'
    User = 'root'
    Connected = True
    Left = 40
    Top = 16
  end
  object ZQpelanggan: TZQuery
    Connection = Zcon_TokoSepatu
    Active = True
    SQL.Strings = (
      'select * from pelanggan')
    Params = <>
    Left = 224
    Top = 16
  end
  object ZQcommandSql: TZQuery
    Connection = Zcon_TokoSepatu
    Params = <>
    Left = 128
    Top = 16
  end
  object ds_pelanggan: TDataSource
    DataSet = ZQpelanggan
    Left = 320
    Top = 16
  end
  object ZQsupplier: TZQuery
    Connection = Zcon_TokoSepatu
    Active = True
    SQL.Strings = (
      'select * from supplier')
    Params = <>
    Left = 224
    Top = 96
  end
  object ds_supplier: TDataSource
    DataSet = ZQsupplier
    Left = 320
    Top = 96
  end
  object ZQdaftarsepatu: TZQuery
    Connection = Zcon_TokoSepatu
    Active = True
    SQL.Strings = (
      'select * from daftar_sepatu')
    Params = <>
    Left = 224
    Top = 160
  end
  object ds_daftarsepatu: TDataSource
    DataSet = ZQdaftarsepatu
    Left = 320
    Top = 160
  end
  object ZQdetailsepatu: TZQuery
    Connection = Zcon_TokoSepatu
    Active = True
    SQL.Strings = (
      'SELECT'
      '    `detail_sepatu`.*'
      '    , `daftar_sepatu`.*'
      'FROM'
      '    `tokosepatu`.`daftar_sepatu`'
      '    INNER JOIN `tokosepatu`.`detail_sepatu` '
      
        '        ON (`daftar_sepatu`.`id_sepatu` = `detail_sepatu`.`id_se' +
        'patu`);')
    Params = <>
    Left = 224
    Top = 232
  end
  object ds_detailsepatu: TDataSource
    DataSet = ZQdetailsepatu
    Left = 320
    Top = 232
  end
  object ZQpembelian: TZQuery
    Connection = Zcon_TokoSepatu
    Active = True
    SQL.Strings = (
      'SELECT'
      '    `pembelian`.*'
      '    , `supplier`.*'
      'FROM'
      '    `tokosepatu`.`supplier`'
      '    INNER JOIN `tokosepatu`.`pembelian` '
      
        '        ON (`supplier`.`id_supplier` = `pembelian`.`id_supplier`' +
        ');')
    Params = <>
    Left = 224
    Top = 296
  end
  object ds_pembelian: TDataSource
    DataSet = ZQpembelian
    Left = 320
    Top = 296
  end
  object ds_tmpPembelian: TDataSource
    DataSet = ZQtmpPembelian
    Left = 320
    Top = 360
  end
  object ZQtmpPembelian: TZQuery
    Connection = Zcon_TokoSepatu
    Active = True
    SQL.Strings = (
      'SELECT'
      '    `temp_pembelian`.*'
      '    , `detail_sepatu`.*'
      '    , `daftar_sepatu`.*'
      'FROM'
      '    `tokosepatu`.`temp_pembelian`'
      '    INNER JOIN `tokosepatu`.`detail_sepatu` '
      
        '        ON (`temp_pembelian`.`id_detail_sepatu` = `detail_sepatu' +
        '`.`id_detail_sepatu`)'
      '    INNER JOIN `tokosepatu`.`daftar_sepatu` '
      
        '        ON (`detail_sepatu`.`id_sepatu` = `daftar_sepatu`.`id_se' +
        'patu`);'
      ''
      ''
      '')
    Params = <>
    Left = 216
    Top = 360
    object ZQtmpPembelianid_detail_sepatu: TStringField
      FieldName = 'id_detail_sepatu'
      Required = True
      Size = 11
    end
    object intgrfldZQtmpPembelianharga_beli_sepatu: TIntegerField
      FieldName = 'harga_beli_sepatu'
      ReadOnly = True
      DisplayFormat = 'Rp. #,###,##'
    end
    object intgrfldZQtmpPembelianjumlah_beli: TIntegerField
      FieldName = 'jumlah_beli'
      ReadOnly = True
    end
    object intgrfldZQtmpPembeliantotal_harga: TIntegerField
      FieldName = 'total_harga'
      Required = True
      DisplayFormat = 'Rp. #,###,##'
    end
    object intgrfldZQtmpPembelianid_detail_sepatu_1: TIntegerField
      FieldName = 'id_detail_sepatu_1'
      Required = True
    end
    object ZQtmpPembelianid_sepatu: TStringField
      FieldName = 'id_sepatu'
      Required = True
    end
    object ZQtmpPembeliansatuan: TStringField
      FieldName = 'satuan'
      Required = True
    end
    object ZQtmpPembelianvarian: TStringField
      FieldName = 'varian'
      Required = True
    end
    object ZQtmpPembelianwarna: TStringField
      FieldName = 'warna'
      Required = True
    end
    object ZQtmpPembelianid_sepatu_1: TStringField
      FieldName = 'id_sepatu_1'
      Required = True
    end
    object ZQtmpPembeliannama_sepatu: TStringField
      FieldName = 'nama_sepatu'
      Required = True
      Size = 50
    end
    object ZQtmpPembelianjenis_sepatu: TStringField
      FieldName = 'jenis_sepatu'
      Required = True
    end
    object ZQtmpPembelianbrand: TStringField
      FieldName = 'brand'
      Required = True
      Size = 50
    end
  end
  object ZQdetailpembelian: TZQuery
    Connection = Zcon_TokoSepatu
    Active = True
    SQL.Strings = (
      'SELECT'
      '    `pembelian`.*'
      '    , `supplier`.*'
      '    , `detail_pembelian`.*'
      '    , `detail_sepatu`.*'
      '    , `daftar_sepatu`.*'
      'FROM'
      '    `pembelian`'
      '    INNER JOIN `detail_pembelian` '
      
        '        ON (`pembelian`.`no_faktur_pembelian` = `detail_pembelia' +
        'n`.`no_faktur_pembelian`)'
      '    INNER JOIN `detail_sepatu` '
      
        '        ON (`detail_pembelian`.`id_detail_sepatu` = `detail_sepa' +
        'tu`.`id_detail_sepatu`)'
      '    INNER JOIN `daftar_sepatu` '
      
        '        ON (`detail_sepatu`.`id_sepatu` = `daftar_sepatu`.`id_se' +
        'patu`)'
      '    INNER JOIN `supplier` '
      
        '        ON (`supplier`.`id_supplier` = `pembelian`.`id_supplier`' +
        ');')
    Params = <>
    Left = 216
    Top = 424
    object strngfldZQdetailpembelianno_faktur_pembelian: TStringField
      FieldName = 'no_faktur_pembelian'
      Required = True
    end
    object dtfldZQdetailpembeliantgl_pembelian: TDateField
      FieldName = 'tgl_pembelian'
      Required = True
    end
    object intgrfldZQdetailpembelianid_supplier: TIntegerField
      FieldName = 'id_supplier'
      Required = True
    end
    object strngfldZQdetailpembeliannama_supplier: TStringField
      FieldName = 'nama_supplier'
      Required = True
      Size = 50
    end
    object strngfldZQdetailpembelianalamat_supplier: TStringField
      FieldName = 'alamat_supplier'
      Required = True
      Size = 70
    end
    object strngfldZQdetailpembeliantlp_supplier: TStringField
      FieldName = 'tlp_supplier'
      Required = True
      Size = 13
    end
    object intgrfldZQdetailpembelianId_detail_pembelian: TIntegerField
      FieldName = 'Id_detail_pembelian'
      Required = True
    end
    object intgrfldZQdetailpembelianid_detail_sepatu: TIntegerField
      FieldName = 'id_detail_sepatu'
      Required = True
    end
    object intgrfldZQdetailpembelianjumlah_sepatu: TIntegerField
      FieldName = 'jumlah_sepatu'
      Required = True
    end
    object intgrfldZQdetailpembelianharga_beli: TIntegerField
      FieldName = 'harga_beli'
      Required = True
    end
    object intgrfldZQdetailpembeliantotal_harga: TIntegerField
      FieldName = 'total_harga'
      Required = True
    end
    object strngfldZQdetailpembelianstatus: TStringField
      FieldName = 'status'
      Required = True
      Size = 50
    end
    object strngfldZQdetailpembelianid_sepatu: TStringField
      FieldName = 'id_sepatu'
      Required = True
    end
    object strngfldZQdetailpembeliansatuan: TStringField
      FieldName = 'satuan'
      Required = True
    end
    object strngfldZQdetailpembelianvarian: TStringField
      FieldName = 'varian'
      Required = True
    end
    object strngfldZQdetailpembelianwarna: TStringField
      FieldName = 'warna'
      Required = True
    end
    object strngfldZQdetailpembeliannama_sepatu: TStringField
      FieldName = 'nama_sepatu'
      Required = True
      Size = 50
    end
    object strngfldZQdetailpembelianjenis_sepatu: TStringField
      FieldName = 'jenis_sepatu'
      Required = True
    end
    object strngfldZQdetailpembelianbrand: TStringField
      FieldName = 'brand'
      Required = True
      Size = 50
    end
  end
  object ds_detailpembelian: TDataSource
    DataSet = ZQdetailpembelian
    Left = 320
    Top = 424
  end
  object ZQstok: TZQuery
    Connection = Zcon_TokoSepatu
    Active = True
    SQL.Strings = (
      'SELECT'
      '    `stok_sepatu`.*'
      '    , `detail_sepatu`.*'
      '    , `daftar_sepatu`.*'
      'FROM'
      '    `detail_sepatu`'
      '    INNER JOIN `stok_sepatu` '
      
        '        ON (`detail_sepatu`.`id_detail_sepatu` = `stok_sepatu`.`' +
        'id_detail_sepatu`)'
      '    INNER JOIN `daftar_sepatu` '
      
        '        ON (`daftar_sepatu`.`id_sepatu` = `detail_sepatu`.`id_se' +
        'patu`);')
    Params = <>
    Left = 216
    Top = 488
    object strngfldZQstokid_stok: TStringField
      FieldName = 'id_stok'
      Required = True
      Size = 50
    end
    object intgrfldZQstokid_detail_sepatu: TIntegerField
      FieldName = 'id_detail_sepatu'
      Required = True
    end
    object intgrfldZQstokharga_sepatu: TIntegerField
      FieldName = 'harga_sepatu'
      Required = True
      DisplayFormat = 'Rp, ##,###,##'
    end
    object intgrfldZQstokjumlah_stok: TIntegerField
      FieldName = 'jumlah_stok'
      Required = True
    end
    object intgrfldZQstokid_detail_sepatu_1: TIntegerField
      FieldName = 'id_detail_sepatu_1'
      Required = True
    end
    object strngfldZQstokid_sepatu: TStringField
      FieldName = 'id_sepatu'
      Required = True
    end
    object strngfldZQstoksatuan: TStringField
      FieldName = 'satuan'
      Required = True
    end
    object strngfldZQstokvarian: TStringField
      FieldName = 'varian'
      Required = True
    end
    object strngfldZQstokwarna: TStringField
      FieldName = 'warna'
      Required = True
    end
    object strngfldZQstokid_sepatu_1: TStringField
      FieldName = 'id_sepatu_1'
      Required = True
    end
    object strngfldZQstoknama_sepatu: TStringField
      FieldName = 'nama_sepatu'
      Required = True
      Size = 50
    end
    object strngfldZQstokjenis_sepatu: TStringField
      FieldName = 'jenis_sepatu'
      Required = True
    end
    object strngfldZQstokbrand: TStringField
      FieldName = 'brand'
      Required = True
      Size = 50
    end
  end
  object ds_stok: TDataSource
    DataSet = ZQstok
    Left = 320
    Top = 488
  end
  object frxdbdtst1: TfrxDBDataset
    UserName = 'DataPembelian'
    CloseDataSource = False
    DataSet = ZQdetailpembelian
    BCDToCurrency = False
    Left = 560
    Top = 416
  end
  object frxrprt1: TfrxReport
    Version = '4.12.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44672.539644907400000000
    ReportOptions.LastChange = 44672.550985254630000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 432
    Top = 416
    Datasets = <
      item
        DataSet = frxdbdtst1
        DataSetName = 'DataPembelian'
      end>
    Variables = <>
    Style = <
      item
        Name = 'Title'
        Color = 14211288
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Header'
        Color = 15790320
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Group header'
        Color = 15790320
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Data'
        Color = clNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Arial'
        Font.Style = []
      end
      item
        Name = 'Group footer'
        Color = clNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftTop]
      end
      item
        Name = 'Header line'
        Color = clNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Width = 2.000000000000000000
      end>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 30.236240000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Align = baWidth
          Width = 718.110700000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Color = 14211288
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Data Pembelian PrintOut')
          ParentFont = False
          Style = 'Title'
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Height = 343.937230000000000000
        Top = 109.606370000000000000
        Width = 718.110700000000000000
        DataSet = frxdbdtst1
        DataSetName = 'DataPembelian'
        RowCount = 0
        object Memo2: TfrxMemoView
          Width = 198.472480000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 15790320
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Faktur')
          ParentFont = False
          Style = 'Header'
        end
        object Memo3: TfrxMemoView
          Left = 198.472480000000000000
          Width = 151.000000000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'no_faktur_pembelian'
          DataSet = frxdbdtst1
          DataSetName = 'DataPembelian'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[DataPembelian."no_faktur_pembelian"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo4: TfrxMemoView
          Top = 18.897650000000000000
          Width = 198.472480000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 15790320
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Tanggal Beli')
          ParentFont = False
          Style = 'Header'
        end
        object Memo5: TfrxMemoView
          Left = 198.472480000000000000
          Top = 18.897650000000000000
          Width = 78.000000000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'tgl_pembelian'
          DataSet = frxdbdtst1
          DataSetName = 'DataPembelian'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[DataPembelian."tgl_pembelian"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo6: TfrxMemoView
          Top = 37.795300000000000000
          Width = 198.472480000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 15790320
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Supplier')
          ParentFont = False
          Style = 'Header'
        end
        object Memo7: TfrxMemoView
          Left = 198.472480000000000000
          Top = 37.795300000000000000
          Width = 372.000000000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'nama_supplier'
          DataSet = frxdbdtst1
          DataSetName = 'DataPembelian'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[DataPembelian."nama_supplier"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo8: TfrxMemoView
          Top = 56.692950000000000000
          Width = 198.472480000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 15790320
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Alamat')
          ParentFont = False
          Style = 'Header'
        end
        object Memo9: TfrxMemoView
          Left = 198.472480000000000000
          Top = 56.692950000000000000
          Width = 519.000000000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'alamat_supplier'
          DataSet = frxdbdtst1
          DataSetName = 'DataPembelian'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[DataPembelian."alamat_supplier"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo10: TfrxMemoView
          Top = 75.590600000000000000
          Width = 198.472480000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 15790320
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Telepon')
          ParentFont = False
          Style = 'Header'
        end
        object Memo11: TfrxMemoView
          Left = 198.472480000000000000
          Top = 75.590600000000000000
          Width = 100.000000000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'tlp_supplier'
          DataSet = frxdbdtst1
          DataSetName = 'DataPembelian'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[DataPembelian."tlp_supplier"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo12: TfrxMemoView
          Top = 207.874150000000000000
          Width = 198.472480000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 15790320
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'jumlah_sepatu')
          ParentFont = False
          Style = 'Header'
        end
        object Memo13: TfrxMemoView
          Left = 198.472480000000000000
          Top = 94.488250000000000000
          Width = 78.000000000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'nama_sepatu'
          DataSet = frxdbdtst1
          DataSetName = 'DataPembelian'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[DataPembelian."nama_sepatu"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo14: TfrxMemoView
          Top = 226.771800000000000000
          Width = 198.472480000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 15790320
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Harga Beli')
          ParentFont = False
          Style = 'Header'
        end
        object Memo15: TfrxMemoView
          Left = 198.472480000000000000
          Top = 113.385900000000000000
          Width = 78.000000000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'jenis_sepatu'
          DataSet = frxdbdtst1
          DataSetName = 'DataPembelian'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[DataPembelian."jenis_sepatu"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo16: TfrxMemoView
          Top = 245.669450000000000000
          Width = 198.472480000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 15790320
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Total')
          ParentFont = False
          Style = 'Header'
        end
        object Memo17: TfrxMemoView
          Left = 198.472480000000000000
          Top = 132.283550000000000000
          Width = 78.000000000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'brand'
          DataSet = frxdbdtst1
          DataSetName = 'DataPembelian'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[DataPembelian."brand"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo18: TfrxMemoView
          Top = 264.567100000000000000
          Width = 198.472480000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 15790320
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Status')
          ParentFont = False
          Style = 'Header'
        end
        object Memo19: TfrxMemoView
          Left = 198.472480000000000000
          Top = 151.181200000000000000
          Width = 372.000000000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'varian'
          DataSet = frxdbdtst1
          DataSetName = 'DataPembelian'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[DataPembelian."varian"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo20: TfrxMemoView
          Top = 188.976500000000000000
          Width = 198.472480000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 15790320
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Satuan')
          ParentFont = False
          Style = 'Header'
        end
        object Memo21: TfrxMemoView
          Left = 198.472480000000000000
          Top = 170.078850000000000000
          Width = 151.000000000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'warna'
          DataSet = frxdbdtst1
          DataSetName = 'DataPembelian'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[DataPembelian."warna"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo22: TfrxMemoView
          Top = 151.181200000000000000
          Width = 198.472480000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 15790320
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Varian')
          ParentFont = False
          Style = 'Header'
        end
        object Memo23: TfrxMemoView
          Left = 198.472480000000000000
          Top = 188.976500000000000000
          Width = 151.000000000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'satuan'
          DataSet = frxdbdtst1
          DataSetName = 'DataPembelian'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[DataPembelian."satuan"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo24: TfrxMemoView
          Top = 170.078850000000000000
          Width = 198.472480000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 15790320
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Warna')
          ParentFont = False
          Style = 'Header'
        end
        object Memo25: TfrxMemoView
          Left = 198.472480000000000000
          Top = 211.653680000000000000
          Width = 151.000000000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'jumlah_sepatu'
          DataSet = frxdbdtst1
          DataSetName = 'DataPembelian'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[DataPembelian."jumlah_sepatu"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo26: TfrxMemoView
          Top = 94.488250000000000000
          Width = 198.472480000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 15790320
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Nama Sepatu')
          ParentFont = False
          Style = 'Header'
        end
        object Memo27: TfrxMemoView
          Left = 198.472480000000000000
          Top = 226.771800000000000000
          Width = 372.000000000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'harga_beli'
          DataSet = frxdbdtst1
          DataSetName = 'DataPembelian'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[DataPembelian."harga_beli"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo28: TfrxMemoView
          Top = 113.385900000000000000
          Width = 198.472480000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 15790320
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Jenis')
          ParentFont = False
          Style = 'Header'
        end
        object Memo29: TfrxMemoView
          Left = 198.472480000000000000
          Top = 245.669450000000000000
          Width = 370.212740000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'total_harga'
          DataSet = frxdbdtst1
          DataSetName = 'DataPembelian'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[DataPembelian."total_harga"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo30: TfrxMemoView
          Top = 132.283550000000000000
          Width = 198.472480000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 15790320
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Brand')
          ParentFont = False
          Style = 'Header'
        end
        object Memo31: TfrxMemoView
          Left = 198.472480000000000000
          Top = 264.567100000000000000
          Width = 372.000000000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'status'
          DataSet = frxdbdtst1
          DataSetName = 'DataPembelian'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[DataPembelian."status"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo35: TfrxMemoView
          Align = baWidth
          Top = 287.244280000000000000
          Width = 718.110700000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Color = 14211288
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          ParentFont = False
          Style = 'Title'
          VAlign = vaCenter
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 49.133890000000000000
        Top = 514.016080000000000000
        Width = 718.110700000000000000
        object Memo32: TfrxMemoView
          Align = baWidth
          Top = 41.574830000000000000
          Width = 718.110700000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Memo33: TfrxMemoView
          Top = 23.677180000000000000
          Height = 22.677180000000000000
          ShowHint = False
          AutoWidth = True
          Memo.UTF8 = (
            '[Date] [Time]')
        end
        object Memo34: TfrxMemoView
          Align = baRight
          Left = 642.520100000000000000
          Top = 8.559060000000000000
          Width = 75.590600000000000000
          Height = 22.677180000000000000
          ShowHint = False
          HAlign = haRight
          Memo.UTF8 = (
            'Page [Page#]')
        end
      end
    end
  end
  object mxdtstxprt1: TmxDataSetExport
    DateFormat = 'dd/MM/yyyy'
    TimeFormat = 'hh:mm'
    DateTimeFormat = 'hh:mm dd/MM/yyyy'
    ExportType = xtExcel
    ExportTypes = [xtHTML, xtExcel, xtWord, xtTXT, xtCSV, xtTAB, xtRTF, xtDIF, xtSYLK, xtClipboard]
    ExportStyle = xsView
    HTML.CustomColors.Background = clWhite
    HTML.CustomColors.DefaultLink = clRed
    HTML.CustomColors.DefaultFontFace = 'Arial,Helvetica'
    HTML.CustomColors.VisitedLink = clAqua
    HTML.CustomColors.ActiveLink = clBlue
    HTML.CustomColors.DefaultText = clBlack
    HTML.CustomColors.TableFontColor = clBlack
    HTML.CustomColors.TableFontFace = 'Arial,Helvetica'
    HTML.CustomColors.TableBackground = 16777167
    HTML.CustomColors.TableOddBackground = clWhite
    HTML.CustomColors.HeaderBackground = 3368601
    HTML.CustomColors.HeadersFontColor = clWhite
    HTML.Options = [hoShowGridLines, hoBoldHeaders, hoAutoLink, hoOddRowColoring, hoDisplayTitle]
    HTML.Template = ctStandard
    Messages.Caption = 'Exporting DataSet'
    Messages.CopiedToClipboard = 'Data was copied to clipboard!'
    Messages.CancelCaption = '&Cancel'
    Messages.CreatedText = 'Created:'
    Messages.DocumentFilter.HTML = 'HTML Documents'
    Messages.DocumentFilter.Excel = 'Excel Files'
    Messages.DocumentFilter.Word = 'Word Documents'
    Messages.DocumentFilter.Text = 'Text Files'
    Messages.DocumentFilter.Comma = 'CSV (Comma delimited)'
    Messages.DocumentFilter.Tab = 'Text (Tab delimited)'
    Messages.DocumentFilter.RTF = 'Rich Text Format'
    Messages.DocumentFilter.DIF = 'Data Interchange Format'
    Messages.DocumentFilter.SYLK = 'SYLK Files'
    Messages.ExportCaption = '&Export'
    Messages.ExportToFile = 'Export &to file'
    Messages.FalseText = 'False'
    Messages.Height = 80
    Messages.SaveTitle = 'Save document'
    Messages.SelectFormat = 'E&xport formats:'
    Messages.Text = 'Processing...'
    Messages.TrueText = 'True'
    Messages.Width = 300
    Messages.ViewOnly = '&View only'
    TruncateSymbol = '...'
    RowNumberFormat = '%d'
    DOC_RTF.Template = rtStandard
    DOC_RTF.Options = [roShowGridLines, roOddRowColoring]
    DOC_RTF.CustomSettings.TableBackground = 16777167
    DOC_RTF.CustomSettings.TableOddBackground = clWhite
    DOC_RTF.CustomSettings.HeaderBackground = 3368601
    DOC_RTF.CustomSettings.DefaultFont.Charset = DEFAULT_CHARSET
    DOC_RTF.CustomSettings.DefaultFont.Color = clWindowText
    DOC_RTF.CustomSettings.DefaultFont.Height = -13
    DOC_RTF.CustomSettings.DefaultFont.Name = 'MS Sans Serif'
    DOC_RTF.CustomSettings.DefaultFont.Style = []
    DOC_RTF.CustomSettings.HeaderFont.Charset = DEFAULT_CHARSET
    DOC_RTF.CustomSettings.HeaderFont.Color = clWindowText
    DOC_RTF.CustomSettings.HeaderFont.Height = -13
    DOC_RTF.CustomSettings.HeaderFont.Name = 'MS Sans Serif'
    DOC_RTF.CustomSettings.HeaderFont.Style = [fsBold]
    DOC_RTF.CustomSettings.TableFont.Charset = DEFAULT_CHARSET
    DOC_RTF.CustomSettings.TableFont.Color = clWindowText
    DOC_RTF.CustomSettings.TableFont.Height = -13
    DOC_RTF.CustomSettings.TableFont.Name = 'MS Sans Serif'
    DOC_RTF.CustomSettings.TableFont.Style = []
    DOC_RTF.CellWidth = 1400
    DOC_RTF.TopMargin = 101
    DOC_RTF.BottomMargin = 101
    DOC_RTF.LeftMargin = 461
    DOC_RTF.RightMargin = 562
    EXCEL.Options = [reSetMargins, reUseBorders]
    EXCEL.ColumnWidth = 20
    EXCEL.Protected = False
    EXCEL.Footer = '&P'
    EXCEL.DefaultFont.Charset = DEFAULT_CHARSET
    EXCEL.DefaultFont.Color = clWindowText
    EXCEL.DefaultFont.Height = -13
    EXCEL.DefaultFont.Name = 'MS Sans Serif'
    EXCEL.DefaultFont.Style = []
    EXCEL.HeaderFont.Charset = DEFAULT_CHARSET
    EXCEL.HeaderFont.Color = clWindowText
    EXCEL.HeaderFont.Height = -13
    EXCEL.HeaderFont.Name = 'MS Sans Serif'
    EXCEL.HeaderFont.Style = [fsBold]
    EXCEL.TableFont.Charset = DEFAULT_CHARSET
    EXCEL.TableFont.Color = clWindowText
    EXCEL.TableFont.Height = -13
    EXCEL.TableFont.Name = 'MS Sans Serif'
    EXCEL.TableFont.Style = []
    EXCEL.TopMargin = 0.300000000000000000
    EXCEL.BottomMargin = 0.300000000000000000
    EXCEL.LeftMargin = 0.300000000000000000
    EXCEL.RightMargin = 0.300000000000000000
    Options = [xoClipboardMessage, xoFooterLine, xoHeaderLine, xoShowExportDate, xoShowHeader, xoShowProgress, xoUseAlignments]
    Version = '2.37'
    DataSet = ZQdetailpembelian
    Left = 664
    Top = 416
  end
  object ZQpenjualan: TZQuery
    Connection = Zcon_TokoSepatu
    Active = True
    SQL.Strings = (
      'SELECT'
      '    `penjualan`.*'
      '    , `pelanggan`.*'
      'FROM'
      '    `pelanggan`'
      '    INNER JOIN `penjualan` '
      
        '        ON (`pelanggan`.`id_pelanggan` = `penjualan`.`id_pelangg' +
        'an`);')
    Params = <>
    Left = 216
    Top = 552
  end
  object ds_penjualan: TDataSource
    DataSet = ZQpenjualan
    Left = 320
    Top = 552
  end
  object ZQtmpPenjualan: TZQuery
    Connection = Zcon_TokoSepatu
    Active = True
    SQL.Strings = (
      'SELECT'
      '    `temp_penjualan`.*'
      '    , `detail_sepatu`.*'
      '    , `daftar_sepatu`.*'
      'FROM'
      '    `detail_sepatu`'
      '    INNER JOIN `temp_penjualan` '
      
        '        ON (`detail_sepatu`.`id_detail_sepatu` = `temp_penjualan' +
        '`.`id_detail_sepatu`)'
      '    INNER JOIN `daftar_sepatu` '
      
        '        ON (`daftar_sepatu`.`id_sepatu` = `detail_sepatu`.`id_se' +
        'patu`);')
    Params = <>
    Left = 216
    Top = 624
    object strngfldZQtmpPenjualanid_detail_sepatu: TStringField
      FieldName = 'id_detail_sepatu'
      Required = True
    end
    object intgrfldZQtmpPenjualanharga: TIntegerField
      FieldName = 'harga'
      Required = True
    end
    object intgrfldZQtmpPenjualanjumlah: TIntegerField
      FieldName = 'jumlah'
      Required = True
    end
    object intgrfldZQtmpPenjualantotal_harga: TIntegerField
      FieldName = 'total_harga'
      Required = True
    end
    object intgrfldZQtmpPenjualanid_detail_sepatu_1: TIntegerField
      FieldName = 'id_detail_sepatu_1'
      Required = True
    end
    object strngfldZQtmpPenjualanid_sepatu: TStringField
      FieldName = 'id_sepatu'
      Required = True
    end
    object strngfldZQtmpPenjualansatuan: TStringField
      FieldName = 'satuan'
      Required = True
    end
    object strngfldZQtmpPenjualanvarian: TStringField
      FieldName = 'varian'
      Required = True
    end
    object strngfldZQtmpPenjualanwarna: TStringField
      FieldName = 'warna'
      Required = True
      Size = 50
    end
    object strngfldZQtmpPenjualanid_sepatu_1: TStringField
      FieldName = 'id_sepatu_1'
      Required = True
    end
    object strngfldZQtmpPenjualannama_sepatu: TStringField
      FieldName = 'nama_sepatu'
      Required = True
      Size = 50
    end
    object strngfldZQtmpPenjualanjenis_sepatu: TStringField
      FieldName = 'jenis_sepatu'
      Required = True
    end
    object strngfldZQtmpPenjualanbrand: TStringField
      FieldName = 'brand'
      Required = True
    end
  end
  object ZQdetailPenjualan: TZQuery
    Connection = Zcon_TokoSepatu
    Active = True
    SQL.Strings = (
      'SELECT'
      '    `detail_penjualan`.*'
      '    , `detail_sepatu`.*'
      '    , `penjualan`.*'
      '    , `pelanggan`.*'
      '    , `daftar_sepatu`.*'
      'FROM'
      '    `daftar_sepatu`'
      '    INNER JOIN `detail_sepatu` '
      
        '        ON (`daftar_sepatu`.`id_sepatu` = `detail_sepatu`.`id_se' +
        'patu`)'
      '    INNER JOIN `detail_penjualan` '
      
        '        ON (`detail_sepatu`.`id_detail_sepatu` = `detail_penjual' +
        'an`.`id_detail_sepatu`)'
      '    INNER JOIN `penjualan` '
      
        '        ON (`penjualan`.`no_faktur_penjualan` = `detail_penjuala' +
        'n`.`no_faktur_penjualan`)'
      '    INNER JOIN `pelanggan` '
      
        '        ON (`pelanggan`.`id_pelanggan` = `penjualan`.`id_pelangg' +
        'an`);')
    Params = <>
    Left = 216
    Top = 704
  end
  object ds_detailPenjualan: TDataSource
    DataSet = ZQdetailPenjualan
    Left = 328
    Top = 704
  end
  object ds_tmpPenjualan: TDataSource
    DataSet = ZQtmpPenjualan
    Left = 320
    Top = 632
  end
  object frxrprt_pelanggan: TfrxReport
    Version = '4.12.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44674.506436713000000000
    ReportOptions.LastChange = 44674.521097615740000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 432
    Top = 16
    Datasets = <
      item
        DataSet = frxdbdtstPelanggan
        DataSetName = 'frPelanggan'
      end>
    Variables = <>
    Style = <
      item
        Name = 'Title'
        Color = 14211288
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Header'
        Color = 15790320
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Group header'
        Color = 15790320
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Data'
        Color = clNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Arial'
        Font.Style = []
      end
      item
        Name = 'Group footer'
        Color = clNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftTop]
      end
      item
        Name = 'Header line'
        Color = clNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Width = 2.000000000000000000
      end>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object Memo1: TfrxMemoView
        Align = baWidth
        Left = 60.472480000000000000
        Top = 3.779530000000000000
        Width = 657.638220000000000000
        Height = 56.692950000000000000
        ShowHint = False
        Color = 14211288
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HAlign = haCenter
        ParentFont = False
        Style = 'Title'
      end
      object ReportTitle1: TfrxReportTitle
        Height = 71.811070000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
      end
      object PageHeader1: TfrxPageHeader
        Height = 22.677180000000000000
        Top = 113.385900000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          Width = 718.110236220472000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 2.000000000000000000
          ParentFont = False
          Style = 'Header line'
        end
        object Memo3: TfrxMemoView
          Width = 90.000000000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = 15790320
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'ID')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 90.000000000000000000
          Width = 204.267997820000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = 15790320
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Nama')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 294.267997820000000000
          Width = 124.484317210000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = 15790320
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Jenis Kelamin')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 418.752315020000000000
          Width = 175.864650960000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = 15790320
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Alamat')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 594.616965980000000000
          Width = 123.493270240000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = 15790320
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'No.Telepon')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 196.535560000000000000
        Width = 718.110700000000000000
        DataSet = frxdbdtstPelanggan
        DataSetName = 'frPelanggan'
        RowCount = 0
        object Memo8: TfrxMemoView
          Width = 90.000000000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'id_pelanggan'
          DataSet = frxdbdtstPelanggan
          DataSetName = 'frPelanggan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frPelanggan."id_pelanggan"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 90.000000000000000000
          Width = 204.267997820000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'nama_pelanggan'
          DataSet = frxdbdtstPelanggan
          DataSetName = 'frPelanggan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frPelanggan."nama_pelanggan"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 294.267997820000000000
          Width = 124.484317210000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'jenis_kelamin'
          DataSet = frxdbdtstPelanggan
          DataSetName = 'frPelanggan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frPelanggan."jenis_kelamin"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 418.752315020000000000
          Width = 175.864650960000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'alamat'
          DataSet = frxdbdtstPelanggan
          DataSetName = 'frPelanggan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frPelanggan."alamat"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 594.616965980000000000
          Width = 123.493270240000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'tlp'
          DataSet = frxdbdtstPelanggan
          DataSetName = 'frPelanggan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frPelanggan."tlp"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 26.456710000000000000
        Top = 275.905690000000000000
        Width = 718.110700000000000000
        object Memo13: TfrxMemoView
          Align = baWidth
          Width = 718.110700000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Memo14: TfrxMemoView
          Top = 1.000000000000000000
          Height = 22.677180000000000000
          ShowHint = False
          AutoWidth = True
          Memo.UTF8 = (
            '[Date] [Time]')
        end
        object Memo15: TfrxMemoView
          Align = baRight
          Left = 642.520100000000000000
          Top = 1.000000000000000000
          Width = 75.590600000000000000
          Height = 22.677180000000000000
          ShowHint = False
          HAlign = haRight
          Memo.UTF8 = (
            'Page [Page#]')
        end
      end
      object Memo17: TfrxMemoView
        Left = 275.905690000000000000
        Top = 3.779530000000000000
        Width = 143.622140000000000000
        Height = 45.354360000000000000
        ShowHint = False
        Color = 14211288
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8 = (
          'TOKO SEPATU'
          'DATA PELANGGAN')
        ParentFont = False
      end
      object Picture1: TfrxPictureView
        Width = 60.472480000000000000
        Height = 60.472480000000000000
        ShowHint = False
        Picture.Data = {
          0A54504E474F626A65637489504E470D0A1A0A0000000D494844520000005000
          00005008060000008E11F2AD000000017352474200AECE1CE90000000467414D
          410000B18F0BFC6105000000097048597300000EC300000EC301C76FA8640000
          132F494441547801ED5C097814C5B6FE7BB210084BD804423009B22A088A880B
          825C4045408282105695AB2C2A2AB85D140441E53DC303B90F05645501D90C08
          419FA0A06CCA22B213086421AC8190908D8464FAFDA7667A323D4926215E3181
          F477FEAA734E9DEAAEFABBBAAABA27A0A1ECF8530C687FAA7659659411F82707
          4119817F31813E80B692D7E848DC6C64EBECF37A40EFC53C93C8570A23E53112
          F85DBE356F1AA7DE855DFD9EC8570A2330840486E75BF3A671EA3DD9D55544BE
          722D04467238F7CDF72C6E9CA15DDBF9BFF94248849B901257F4F42B61381673
          C6DEAEFF1C817F90C0BBEC672D72A6478707E1AA1E5DE40A2520B045F751D817
          196B6F49198176228A9EFD550426B3091B896B924A152B54E8785FB347AEA9D2
          DF1CFCD3AF07703935DDDE8A3F37029FE122321F37F5A13FCBEE2F4001875680
          5FDC1692B787CA9DC4CD2C32F7B7220156228FB823901B486DB9BD062BEBE3A8
          A7112679B57193D0C08ABEF78AF3ABE818EC4E4C1455F01B179DAF457186A7C5
          6299DCDBEF230F4DF316FFBBE1979096A98B2A98CE3AD1A238E31FB56A35EA1E
          10305C7CD1A9A9981E79545454F2B1E0FD103FA5BB4B96EC48C38E13992AA455
          B56A18101C0477475A7636C6EDDB0FABAEDBC3D4665A5E28EC766E5610811E1C
          7DFB18763B21B2821DEB2D8A33AC030756474E4E0C4F52512E16B8FA5BC4A7A7
          DB43F42154E61126B1CE0D6AA141FB439C577374941F168B1CAB5802BD09D348
          C224D6FEFD43355D5F2CCEC8CB97D1646D84A8F0F1D290F269203CF9AC284701
          C9BC2DA91832FF822A0DF2F5C58927BA43D3D86AE5C93F797ACB562C8F8B330A
          F7B3FF2D69385A4A5D494167E94302BF561140362BB7A07E883089B55FBF0F78
          8231E2DC73E912EEFEEE7B510552C79F4A026112EBBCA077355D9B28CE33C939
          F01F7552543BF4CA54520893F03AA3799D3071A65CBD8ACACB57880A0B9DE7A6
          DD8A1A152DCA2E2839CBEB04BC7E52DD2856C1DEC7BBA0B99F5F41E1CABF3F29
          092DD91F1918CA01BD2FF3A58449E47C26070D0F92B79F7953428444EAA1A238
          430F0DADA16B5A344F5051FCEF1F3880F738EC4527B691F40799E711EB9CA0DD
          BCFB774BC19EB82CDC3DE1B4A88214D61102453781044EE1754619CECACB9623
          858F99D8FB26F8A37980B7A86E71DF0767F09BFD319E7067738C6BD6CC6DBC14
          F6DDBA154B63E344151C66FB9A53C9211CC276397443E94F02BFB21B3292E44A
          9176DB91594343FF8B44BC693864F4C928B4D9FABF984F264C625DD0B02E72B2
          E378518B14ACDB9781AE9F9C135510C9063611C515247009EBC80850458DD7AE
          C5D1CBE49B56C42BB5F0F89DE5A9B997C9EB92F1AF959754D03D9C07773EF6A8
          D2DD2587932FA3D9BA75CE73E100C62F221CC276397451BC48DE412A0D091112
          A90F14C519FAE0C1B5F5AB574FB0B26AB9CC7B32FFD9873B675EBD29E3490853
          27D1E706BDC0F3CF325C737E49C1F30B2F1AE62612D801F91CBC59BFF0663D64
          1475F8F1476C3A775E999F0FAE8E7FB6ABA47477C9C1D357D16CEC291562E1FC
          171FD20375CA9757B6BB64E0B6EDF82A2606F623926D9401956DB7A1198A3D1F
          CC0E2E80EDB8CAE0DBA9461126E188303D5233A3A2307CC74E23E618EB35A6A1
          1326B1CE0D5ACB05A4ABE17CFFDB24BCB73AC93017B35E7FC370CE4960ACA669
          B71ABEFEECD4E29818C831A1871FC63DE127AA5BC8827ADBDBF188BE90ADE23E
          6BDD1AC31A3650BABBE4684A0AEEE0A2952D275081FA60665F104A9C09F42679
          7CCE515F95000BD8A167E17258FBF6F587C512A5018EDBD775D3CF5877FAB411
          3995F51CF395E1B4CE695C095A6602092C67F8867D7111B37EB63D8AF485B1DE
          1BCC4DA2BFF082979E9A9AEC7CBD37F6EC41D8E1232A6E68FB4A9839A8BAD20B
          4B462D4DC4D41F2EABB0C7FDFD11F1707BA517963CF3EBAF587822DA088B623B
          9BD2C8264C237008099C234E228B41321F396AD1A784A3E1138E8691CA6022AB
          628D95DF20CB6AA525A27760BA092E873E3F3004564BB8B3FB89E9E7B1666FBA
          DDA58FA232953089B557AF6AF0F6BEA0B17146C1D4239118F5FBEFCAECDEA202
          BE1D798BD20B4B36455E4187FF3EABC2CA7B7820E1A927E1EBE9A96C7749544A
          2A9A72DE751A85FF64FC5CC24120478526B73408B68344EACFDBD4DC94FBB100
          E8BA8C3EC6DBFCE127E3F1E4E6CD36034824F1B568641326E1EA3B8FC43FEBEC
          BC8B2BF01F5C896DBEFCB709DC6B36D572720ED9626CA9AC8CB2428AD52AC81B
          BBC6FA8B5A28B27374D47AED2412D36C37FB9B760FA1674040A1F524E0F9DF76
          60CEF1E3A20A38B0D49E354B138B18CA1B3C93B9481649684C25062E07E7BE4F
          5961B8B3FB590EEF05B9C37B11EB0E702E175D9FD5CA4BF7483CC3B9DBF1ACE9
          3A50E39538476758AF1D631D7782BA12DEB48E9AAE6F50863DD97C3E01ED36D8
          5CFE7E1E3835A59EBDA4F06CC0E70958F46B9A0A7CA67E30E6DF779FD20B4B62
          D2D2D078CD5AE7276D28EBCC261FF02179C768041022B3D89961A23883E40572
          F41DE328F232FC57F9D8D6090FC7C54C72AE9C7A1F66CB089358E7DDF680A65B
          B73A3BD3B374F8BD1407791BB1F9F540E671844978DD816CE417CECEE37CA41A
          AC59A35CE5BD355C9E51F8DB880A66B26C671AFACC4CA006D4F2F1C1E99E21DC
          90F30ACAE33E19BE7327661E8B328262C953438DD608123883B948069D8DA8C4
          132661476632585877F8B72624A0EDFA0D867D85756BD248254CA2CF0D9E4CC7
          5B84434E25E52060F449C3CE665D5F1AC69DA06A13CEB96FF1A6497D9B83E965
          BE8D545BB11239328C69277C52F8DB08C3945CE2E32B8FB171E3B63DD219F7D7
          A8A1CA0A4B62390A1B9947E18BE4448B0120779F19FE971D79591467E87DFA04
          E916CB5176C4CBD93F66EF5E7C74D0313DAD67DD479CCB0DDD3A37F8102FD4D4
          B025DF159389D613CF882AB8C0BAB750D109939040D3A22585429C1F5FE752B3
          C93B1DBBC6F9A355A037B5A249E72967B1E110EF37C3FF75C7EDF8B0450B6A45
          939776EDC28CA3C78CE058F64B736AB4DE88258E52EA4AD88941246FA1329C12
          F3FCA74F64D138228F58E7045B35EE5F9C0B9C5744FA63486030F23938F2E769
          C0B3AE4532759CCDB091B0F1CDDA78B8B18F6B4881F6B8554998B82649955FCB
          3C28150E2527E38E8875A22A687C7C9D09AC4BEF69C224DCFB0DD62C96057039
          5C089CC0E2F1C8E72869044EE0E67D3C37F1D2D46B25501693E0D5DF4A5505AD
          8CC0A2AFC4C258F1080C0D1D94DF236CDEA1EB137881F1C8E7F84B46E037E138
          7BA5788FF0788EC009F61138B87E301614712B235DCB8FC00C16D82710B5398C
          A46D123EC24FF3115E6A72D2E8BD650B56C49DA4A6248CF3D81B4A7349B888A4
          69400567F7DABD19E83EFD9CE13ACFBAB569384D27B4289C033F65DDE1541D22
          1F2DAA721596D5589C6BF945A66B11BEC848ACE08D659710F67FF21B19D0EBD6
          7A58DEB6ADB88B84039C039BE7CE81196C9B7698359B10147D0093458449F47E
          FD5AD2B1873049432EE9517CD9B63B379084CE76DD9491C03DBC909CC3E19FB4
          360963C3930CDBCABA0134CE1026E1CD7B95376FAAB3338EDB8920CE4306DB93
          7A56C53BDDAA3887B8D53B869DC54F87AFA89806952AE158F76E4A2F4A225F66
          E40B8D3DF608FBA5CDA6F13C21B2811DE92C8A33F4F7DEB3E8478FC66A9A1660
          F837730FD82E770F28EE2CD66D4425963089756ED0075C84C718CE6CD2259F96
          22CF5E355CCCF5B14C261126E187DB26FC707B48E3646D144C3A701063F7ED33
          4C34AEED850313EB16FA695F2A9C48C846E331F19036882DD8DCB913DAD6AC29
          AA5BC80DEBF8E34FD878EE9C11F739DB85F66CDB26388E02DE2642434791C029
          1296919383FB7F588FBDFC8C2FB613B8BEEBDD699322A676E19B483D58ADDC47
          CA5B0FE0FC71D31E22590A6FC0DD54A20893701BB596D7EE2A4E19F1F2F1D6F8
          222D3EC1E45E55F15617F7A3D0AA434D1BF22157EA18B8AB6A556CE786BA1C3F
          3018BEFCF2AF636311BA759B5391FE901048683FD2DB8110C960470650F98670
          88DEBBB7B7EEE5F54B5256569B7E3CC9F767F23C6D46EC02D61F0EC0F68C5011
          B1CE097A5987367DE6C614BCBCF822BFF28A97B78E19FBC554C909D6951B7048
          59F6446DE43D3C761F4E4EAED6EDE75F10CD5FE6A4486362D4F5B000FFEE571D
          C31EE65733296099B364F0D571F85717B1706BAAB3DBA13F56A70E163FF800AA
          7A7B3B7CCE8A7C34E9BF6D1B64F0D8FD1BD8D6CEC6A5EAB32BBB585095109176
          853360368DDD04494540C34A559E49C9CE7ADBD8C0D22F329D4920D18330248A
          753FA6B19EE002814ACCEF6F51AFDCECBD27B36A5057121C500BEF8C780A2FBC
          F31909D5958F8910FF19EB2FA12E0B9AB4B1D13DD5AA8FDB9F9CD42DD3FE139E
          C5A261F6A4E198346305624EC925184DE9D0C407233B55C6FDB79543C572169C
          4FC9C10F073310F67D32A2CE6733C226219DDBA05EEDEAF8F797EB6C0EA6F285
          7A749326E85EB72EEA5628AFC8FA9D3FD37E762C0AABE3E3E168A1EDABD33DAC
          22BF0931B3C903243182AA1FE12C463DE988B35F7476527DF22FCFBA6BE9684F
          B88A4E479EBAF5EA54C78685E3D128C81FD3BF88C06B1FCEE7532EA18CCE15C3
          61AAEF61B160DABBCFE1A5015D70E4C429741A3C1EA7CE25E6D6B26B7CFBE1F7
          0FBBE1943DDCA61922668FE167464F0C78FD132C8DD8EA546A538D0B1A0DB079
          557A8937B72BB5ED84E37BA0E8824624620180FB097792C693BCCF8030C24A88
          9463DD0FA9BC4C7811F98A74AA4BFBBB31E78311A853D318F040C4A6DD18366E
          16E2CF5ECCB79EE10CE0A8993571181EE7390CDF99844B1832E6537CF7F3EF86
          2BDFDCCBD303230775C587A3FBC3DBCB53C55839314E99B71AE3A72F43FA954C
          E573936C63BF9F01708C506210AD0C7B22BE6E246308EDF684312285A8C3B457
          F12433989F21F29386ACFB120BE42ED5672EE743CD6A55D0E9813B31B46F67B4
          BFF70EBAF34AC6952CCC5DF123BE8ED8825DFB8F2333EBAA0A2AE7ED85D6CD1B
          20B45B5B3CD7EB1FF029E7ADFCAEC9A6DF0E60F6D2F5D8B06D1F12122FAB622E
          3EA85FAF16BA77B8072F0E780C0D02EB28BF6B72FA7C22662CFA1EAB37ECC0E1
          A878E7292589B19BD8E7B9E07D2674C221AA730E2BAF124232C2EDEE3F7892BB
          EC7A5133DF492FF76F3E62D0A3DBAB56A958D43A2A2E3B274791200DAC41F23D
          65955025454B129353919E9189AA557CE15BDEA76895EC517FD59FB7158740E8
          87C383E0A147DBDB562AB23202FFE46D2A23B094105899ED6C47D896332AF949
          9B160D6F797BE853B3F22B2B093E4FBE7DB46B7D3B2A57E44ECCDEA0EB31023D
          B8B8ECE1F59A13A55E5A360DC6EEF08FF9F702B26401D783C0EA243081CCD9AE
          48A5348BACF049BBBF846F05DB6AFD7710B88F045A89C2C49701DC2732B54BAD
          5B6F83974FEEE323EEF4CB49483C1B2FAA0DDC7DFBD76F020B1F379B236F9A74
          FE0C52932EAA02BF4A1551A390BFFFB3F227D913A74EAB780F6E9192FF5E0275
          D9E4A5A9D6149C54E2A88D60F1438492B6218310FAD6C7A6BF164DBE7016D35E
          7C12E762A3548C6C849F18FE0E1E1D3452D90525CBA7BE8B8D4B67ABE25E1D1F
          C68B7D9E527A41496A7A06BABFFAA62A2E0D040A79EBD8DAB68492077B0C44BF
          B7C35CC83B87692342702EEEB88A91A4879037F81551DDE2462650C8930F0DED
          0C066CE4C9C8B3182E5CBE781E5347F4E4C83BA67C6AE40D1B83478B409E54B8
          510914F24C232FBFC75608583C7934B6ACFA52543EE91AD4C82BE4B1B505DBD2
          1B914021CF34E755AD1DB06A52F8EE10195DB66EE7A66B667D84EFE64FB59177
          0D23CF38C38D46601EF2D8D1D953361C79BF7CC56A8EE535E5D205FCB66E1902
          9BB644FD3BEFC5AE1FBE41E5EA35D1B44D07865F9BDC48040A79A6C796547CCE
          2F394367EE3C5FDB9AA3D9F60E747EF2D29388DCB5051E9E9E786FD976D4F00F
          A4B77872A31028E499160CD221E40D636E2581759C09FC6870479C8CDCCF95D8
          82B14B7E41EDA0460C2B9EDC08047249D55C471E3766BA90A70B2DAE049E898E
          C44F4B66A2C15D0FA04D97DE12526C947602EB70F65FC6DE3F441822236F280D
          451E73B81228BEFF144A3981D84122EE250C318D3CC379BD086CDFAA25423AB4
          43155F5F04D7F5372E6FCA4BD89B88A96D79469E517ABD0834AE27F96BFDFBE0
          89F68E17207129945402853C99F3ACAA952EC9DF4160E736AD3166C820979600
          2591C0D9DCAA08798E39CFB5D5D78BC00A3E3EA8EC5B017EFCC3A13706F543FD
          007FD7A694380265E499168C3C2DA6E37A1178237E8D217D285B85F9881ABF0B
          57E7B62581AC6804A548DF03CB082C239063C545EC23C8C59B6B8670A485DBCD
          3FDC10F81663B208B7E2774B40E54EFD874F701B54CCC2BD9B22706CCF7655BB
          14CE81AADD2526290D0456E0C89439907989E1CDD190D240A034B60B497C8E8A
          2751A05CAFFFFA69FFD1381C8F3BABDA515A08548D2D2CB95EFF7BDB6B1FCCC7
          B485F2258DFF74A163C9FF55AE30DE1CE53703811EECADFCD81DCD3C9310A9C1
          2480E8C0C7F47F988B447215EE2BCAB5E07AFD078C61735661D19ACDAA699DDA
          DC833E8F74547A4149C6954C8CFC789A2A963F19DEBC6412CAFB9453B6CB7FC0
          388ACE8D443C71811091C0602A473512B492CA93C45E12D49A7933FAB6302F91
          0B04DBF577493AF969CB8B1F243FBB983727560A812C50FF0387CE807A74F666
          C054E665928701FD55BABE253F27988BA49340BC4EC7685AE124F045E6B56853
          4713EA6592CBC011F2D393E639F2F319F31EB4C38440EA65525C06CA082C2E73
          F67A6504DA89286E5646607199B3D7FB7F55BE00E671E27A0E0000000049454E
          44AE426082}
        HightQuality = False
        Transparent = False
        TransparentColor = clWhite
      end
    end
  end
  object frxdbdtstPelanggan: TfrxDBDataset
    UserName = 'frPelanggan'
    CloseDataSource = False
    DataSet = ZQpelanggan
    BCDToCurrency = False
    Left = 568
    Top = 16
  end
  object frxrprt_supplier: TfrxReport
    Version = '4.12.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44674.506436713000000000
    ReportOptions.LastChange = 44674.531390370370000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 440
    Top = 96
    Datasets = <
      item
        DataSet = frxdbdtst_supplier
        DataSetName = 'DataSupplier'
      end>
    Variables = <>
    Style = <
      item
        Name = 'Title'
        Color = 14211288
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Header'
        Color = 15790320
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Group header'
        Color = 15790320
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Data'
        Color = clNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Arial'
        Font.Style = []
      end
      item
        Name = 'Group footer'
        Color = clNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftTop]
      end
      item
        Name = 'Header line'
        Color = clNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Width = 2.000000000000000000
      end>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object Memo1: TfrxMemoView
        Align = baWidth
        Left = 60.472480000000000000
        Top = 3.779530000000000000
        Width = 657.638220000000000000
        Height = 56.692950000000000000
        ShowHint = False
        Color = 14211288
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HAlign = haCenter
        ParentFont = False
        Style = 'Title'
      end
      object ReportTitle1: TfrxReportTitle
        Height = 71.811070000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
      end
      object PageHeader1: TfrxPageHeader
        Height = 22.677180000000000000
        Top = 113.385900000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          Width = 718.110236220472000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 2.000000000000000000
          ParentFont = False
          Style = 'Header line'
        end
        object Memo3: TfrxMemoView
          Width = 90.000000000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = 15790320
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'ID')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 90.000000000000000000
          Width = 204.267997820000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = 15790320
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Nama')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 294.027825020000000000
          Width = 300.589140960000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = 15790320
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Alamat')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 594.616965980000000000
          Width = 123.493270240000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = 15790320
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'No.Telepon')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 196.535560000000000000
        Width = 718.110700000000000000
        DataSet = frxdbdtst_supplier
        DataSetName = 'DataSupplier'
        RowCount = 0
        object Memo8: TfrxMemoView
          Width = 90.000000000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'id_supplier'
          DataSet = frxdbdtst_supplier
          DataSetName = 'DataSupplier'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[DataSupplier."id_supplier"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 90.000000000000000000
          Width = 204.267997820000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'nama_supplier'
          DataSet = frxdbdtst_supplier
          DataSetName = 'DataSupplier'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[DataSupplier."nama_supplier"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 294.027825020000000000
          Width = 300.589140960000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'alamat_supplier'
          DataSet = frxdbdtst_supplier
          DataSetName = 'DataSupplier'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[DataSupplier."alamat_supplier"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 594.616965980000000000
          Width = 123.493270240000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'tlp_supplier'
          DataSet = frxdbdtst_supplier
          DataSetName = 'DataSupplier'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[DataSupplier."tlp_supplier"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 26.456710000000000000
        Top = 275.905690000000000000
        Width = 718.110700000000000000
        object Memo13: TfrxMemoView
          Align = baWidth
          Width = 718.110700000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Memo14: TfrxMemoView
          Top = 1.000000000000000000
          Height = 22.677180000000000000
          ShowHint = False
          AutoWidth = True
          Memo.UTF8 = (
            '[Date] [Time]')
        end
        object Memo15: TfrxMemoView
          Align = baRight
          Left = 642.520100000000000000
          Top = 1.000000000000000000
          Width = 75.590600000000000000
          Height = 22.677180000000000000
          ShowHint = False
          HAlign = haRight
          Memo.UTF8 = (
            'Page [Page#]')
        end
      end
      object Memo17: TfrxMemoView
        Left = 275.905690000000000000
        Top = 3.779530000000000000
        Width = 143.622140000000000000
        Height = 45.354360000000000000
        ShowHint = False
        Color = 14211288
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8 = (
          'TOKO SEPATU'
          'DATA SUPPLIER')
        ParentFont = False
      end
      object Picture1: TfrxPictureView
        Width = 60.472480000000000000
        Height = 60.472480000000000000
        ShowHint = False
        Picture.Data = {
          0A54504E474F626A65637489504E470D0A1A0A0000000D494844520000005000
          00005008060000008E11F2AD000000017352474200AECE1CE90000000467414D
          410000B18F0BFC6105000000097048597300000EC300000EC301C76FA8640000
          132F494441547801ED5C097814C5B6FE7BB210084BD804423009B22A088A880B
          825C4045408282105695AB2C2A2AB85D140441E53DC303B90F05645501D90C08
          419FA0A06CCA22B213086421AC8190908D8464FAFDA7667A323D4926215E3181
          F477FEAA734E9DEAAEFABBBAAABA27A0A1ECF8530C687FAA7659659411F82707
          4119817F31813E80B692D7E848DC6C64EBECF37A40EFC53C93C8570A23E53112
          F85DBE356F1AA7DE855DFD9EC8570A2330840486E75BF3A671EA3DD9D55544BE
          722D04467238F7CDF72C6E9CA15DDBF9BFF94248849B901257F4F42B61381673
          C6DEAEFF1C817F90C0BBEC672D72A6478707E1AA1E5DE40A2520B045F751D817
          196B6F49198176228A9EFD550426B3091B896B924A152B54E8785FB347AEA9D2
          DF1CFCD3AF07703935DDDE8A3F37029FE122321F37F5A13FCBEE2F4001875680
          5FDC1692B787CA9DC4CD2C32F7B7220156228FB823901B486DB9BD062BEBE3A8
          A7112679B57193D0C08ABEF78AF3ABE818EC4E4C1455F01B179DAF457186A7C5
          6299DCDBEF230F4DF316FFBBE1979096A98B2A98CE3AD1A238E31FB56A35EA1E
          10305C7CD1A9A9981E79545454F2B1E0FD103FA5BB4B96EC48C38E13992AA455
          B56A18101C0477475A7636C6EDDB0FABAEDBC3D4665A5E28EC766E5610811E1C
          7DFB18763B21B2821DEB2D8A33AC030756474E4E0C4F52512E16B8FA5BC4A7A7
          DB43F42154E61126B1CE0D6AA141FB439C577374941F168B1CAB5802BD09D348
          C224D6FEFD43355D5F2CCEC8CB97D1646D84A8F0F1D290F269203CF9AC284701
          C9BC2DA91832FF822A0DF2F5C58927BA43D3D86AE5C93F797ACB562C8F8B330A
          F7B3FF2D69385A4A5D494167E94302BF561140362BB7A07E883089B55FBF0F78
          8231E2DC73E912EEFEEE7B510552C79F4A026112EBBCA077355D9B28CE33C939
          F01F7552543BF4CA54520893F03AA3799D3071A65CBD8ACACB57880A0B9DE7A6
          DD8A1A152DCA2E2839CBEB04BC7E52DD2856C1DEC7BBA0B99F5F41E1CABF3F29
          092DD91F1918CA01BD2FF3A58449E47C26070D0F92B79F7953428444EAA1A238
          430F0DADA16B5A344F5051FCEF1F3880F738EC4527B691F40799E711EB9CA0DD
          BCFB774BC19EB82CDC3DE1B4A88214D61102453781044EE1754619CECACB9623
          858F99D8FB26F8A37980B7A86E71DF0767F09BFD319E7067738C6BD6CC6DBC14
          F6DDBA154B63E344151C66FB9A53C9211CC276397443E94F02BFB21B3292E44A
          9176DB91594343FF8B44BC693864F4C928B4D9FABF984F264C625DD0B02E72B2
          E378518B14ACDB9781AE9F9C135510C9063611C515247009EBC80850458DD7AE
          C5D1CBE49B56C42BB5F0F89DE5A9B997C9EB92F1AF959754D03D9C07773EF6A8
          D2DD2587932FA3D9BA75CE73E100C62F221CC276397451BC48DE412A0D091112
          A90F14C519FAE0C1B5F5AB574FB0B26AB9CC7B32FFD9873B675EBD29E3490853
          27D1E706BDC0F3CF325C737E49C1F30B2F1AE62612D801F91CBC59BFF0663D64
          1475F8F1476C3A775E999F0FAE8E7FB6ABA47477C9C1D357D16CEC291562E1FC
          171FD20375CA9757B6BB64E0B6EDF82A2606F623926D9401956DB7A1198A3D1F
          CC0E2E80EDB8CAE0DBA9461126E188303D5233A3A2307CC74E23E618EB35A6A1
          1326B1CE0D5ACB05A4ABE17CFFDB24BCB73AC93017B35E7FC370CE4960ACA669
          B71ABEFEECD4E29818C831A1871FC63DE127AA5BC8827ADBDBF188BE90ADE23E
          6BDD1AC31A3650BABBE4684A0AEEE0A2952D275081FA60665F104A9C09F42679
          7CCE515F95000BD8A167E17258FBF6F587C512A5018EDBD775D3CF5877FAB411
          3995F51CF395E1B4CE695C095A6602092C67F8867D7111B37EB63D8AF485B1DE
          1BCC4DA2BFF082979E9A9AEC7CBD37F6EC41D8E1232A6E68FB4A9839A8BAD20B
          4B462D4DC4D41F2EABB0C7FDFD11F1707BA517963CF3EBAF587822DA088B623B
          9BD2C8264C237008099C234E228B41321F396AD1A784A3E1138E8691CA6022AB
          628D95DF20CB6AA525A27760BA092E873E3F3004564BB8B3FB89E9E7B1666FBA
          DDA58FA232953089B557AF6AF0F6BEA0B17146C1D4239118F5FBEFCAECDEA202
          BE1D798BD20B4B36455E4187FF3EABC2CA7B7820E1A927E1EBE9A96C7749544A
          2A9A72DE751A85FF64FC5CC24120478526B73408B68344EACFDBD4DC94FBB100
          E8BA8C3EC6DBFCE127E3F1E4E6CD36034824F1B568641326E1EA3B8FC43FEBEC
          BC8B2BF01F5C896DBEFCB709DC6B36D572720ED9626CA9AC8CB2428AD52AC81B
          BBC6FA8B5A28B27374D47AED2412D36C37FB9B760FA1674040A1F524E0F9DF76
          60CEF1E3A20A38B0D49E354B138B18CA1B3C93B9481649684C25062E07E7BE4F
          5961B8B3FB590EEF05B9C37B11EB0E702E175D9FD5CA4BF7483CC3B9DBF1ACE9
          3A50E39538476758AF1D631D7782BA12DEB48E9AAE6F50863DD97C3E01ED36D8
          5CFE7E1E3835A59EBDA4F06CC0E70958F46B9A0A7CA67E30E6DF779FD20B4B62
          D2D2D078CD5AE7276D28EBCC261FF02179C768041022B3D89961A23883E40572
          F41DE328F232FC57F9D8D6090FC7C54C72AE9C7A1F66CB089358E7DDF680A65B
          B73A3BD3B374F8BD1407791BB1F9F540E671844978DD816CE417CECEE37CA41A
          AC59A35CE5BD355C9E51F8DB880A66B26C671AFACC4CA006D4F2F1C1E99E21DC
          90F30ACAE33E19BE7327661E8B328262C953438DD608123883B948069D8DA8C4
          132661476632585877F8B72624A0EDFA0D867D85756BD248254CA2CF0D9E4CC7
          5B84434E25E52060F449C3CE665D5F1AC69DA06A13CEB96FF1A6497D9B83E965
          BE8D545BB11239328C69277C52F8DB08C3945CE2E32B8FB171E3B63DD219F7D7
          A8A1CA0A4B62390A1B9947E18BE4448B0120779F19FE971D79591467E87DFA04
          E916CB5176C4CBD93F66EF5E7C74D0313DAD67DD479CCB0DDD3A37F8102FD4D4
          B025DF159389D613CF882AB8C0BAB750D109939040D3A22585429C1F5FE752B3
          C93B1DBBC6F9A355A037B5A249E72967B1E110EF37C3FF75C7EDF8B0450B6A45
          939776EDC28CA3C78CE058F64B736AB4DE88258E52EA4AD88941246FA1329C12
          F3FCA74F64D138228F58E7045B35EE5F9C0B9C5744FA63486030F23938F2E769
          C0B3AE4532759CCDB091B0F1CDDA78B8B18F6B4881F6B8554998B82649955FCB
          3C28150E2527E38E8875A22A687C7C9D09AC4BEF69C224DCFB0DD62C96057039
          5C089CC0E2F1C8E72869044EE0E67D3C37F1D2D46B25501693E0D5DF4A5505AD
          8CC0A2AFC4C258F1080C0D1D94DF236CDEA1EB137881F1C8E7F84B46E037E138
          7BA5788FF0788EC009F61138B87E301614712B235DCB8FC00C16D82710B5398C
          A46D123EC24FF3115E6A72D2E8BD650B56C49DA4A6248CF3D81B4A7349B888A4
          69400567F7DABD19E83EFD9CE13ACFBAB569384D27B4289C033F65DDE1541D22
          1F2DAA721596D5589C6BF945A66B11BEC848ACE08D659710F67FF21B19D0EBD6
          7A58DEB6ADB88B84039C039BE7CE81196C9B7698359B10147D0093458449F47E
          FD5AD2B1873049432EE9517CD9B63B379084CE76DD9491C03DBC909CC3E19FB4
          360963C3930CDBCABA0134CE1026E1CD7B95376FAAB3338EDB8920CE4306DB93
          7A56C53BDDAA3887B8D53B869DC54F87AFA89806952AE158F76E4A2F4A225F66
          E40B8D3DF608FBA5CDA6F13C21B2811DE92C8A33F4F7DEB3E8478FC66A9A1660
          F837730FD82E770F28EE2CD66D4425963089756ED0075C84C718CE6CD2259F96
          22CF5E355CCCF5B14C261126E187DB26FC707B48E3646D144C3A701063F7ED33
          4C34AEED850313EB16FA695F2A9C48C846E331F19036882DD8DCB913DAD6AC29
          AA5BC80DEBF8E34FD878EE9C11F739DB85F66CDB26388E02DE2642434791C029
          1296919383FB7F588FBDFC8C2FB613B8BEEBDD699322A676E19B483D58ADDC47
          CA5B0FE0FC71D31E22590A6FC0DD54A20893701BB596D7EE2A4E19F1F2F1D6F8
          222D3EC1E45E55F15617F7A3D0AA434D1BF22157EA18B8AB6A556CE786BA1C3F
          3018BEFCF2AF636311BA759B5391FE901048683FD2DB8110C960470650F98670
          88DEBBB7B7EEE5F54B5256569B7E3CC9F767F23C6D46EC02D61F0EC0F68C5011
          B1CE097A5987367DE6C614BCBCF822BFF28A97B78E19FBC554C909D6951B7048
          59F6446DE43D3C761F4E4EAED6EDE75F10CD5FE6A4486362D4F5B000FFEE571D
          C31EE65733296099B364F0D571F85717B1706BAAB3DBA13F56A70E163FF800AA
          7A7B3B7CCE8A7C34E9BF6D1B64F0D8FD1BD8D6CEC6A5EAB32BBB585095109176
          853360368DDD04494540C34A559E49C9CE7ADBD8C0D22F329D4920D18330248A
          753FA6B19EE002814ACCEF6F51AFDCECBD27B36A5057121C500BEF8C780A2FBC
          F31909D5958F8910FF19EB2FA12E0B9AB4B1D13DD5AA8FDB9F9CD42DD3FE139E
          C5A261F6A4E198346305624EC925184DE9D0C407233B55C6FDB79543C572169C
          4FC9C10F073310F67D32A2CE6733C226219DDBA05EEDEAF8F797EB6C0EA6F285
          7A749326E85EB72EEA5628AFC8FA9D3FD37E762C0AABE3E3E168A1EDABD33DAC
          22BF0931B3C903243182AA1FE12C463DE988B35F7476527DF22FCFBA6BE9684F
          B88A4E479EBAF5EA54C78685E3D128C81FD3BF88C06B1FCEE7532EA18CCE15C3
          61AAEF61B160DABBCFE1A5015D70E4C429741A3C1EA7CE25E6D6B26B7CFBE1F7
          0FBBE1943DDCA61922668FE167464F0C78FD132C8DD8EA546A538D0B1A0DB079
          557A8937B72BB5ED84E37BA0E8824624620180FB097792C693BCCF8030C24A88
          9463DD0FA9BC4C7811F98A74AA4BFBBB31E78311A853D318F040C4A6DD18366E
          16E2CF5ECCB79EE10CE0A8993571181EE7390CDF99844B1832E6537CF7F3EF86
          2BDFDCCBD303230775C587A3FBC3DBCB53C55839314E99B71AE3A72F43FA954C
          E573936C63BF9F01708C506210AD0C7B22BE6E246308EDF684312285A8C3B457
          F12433989F21F29386ACFB120BE42ED5672EE743CD6A55D0E9813B31B46F67B4
          BFF70EBAF34AC6952CCC5DF123BE8ED8825DFB8F2333EBAA0A2AE7ED85D6CD1B
          20B45B5B3CD7EB1FF029E7ADFCAEC9A6DF0E60F6D2F5D8B06D1F12122FAB622E
          3EA85FAF16BA77B8072F0E780C0D02EB28BF6B72FA7C22662CFA1EAB37ECC0E1
          A878E7292589B19BD8E7B9E07D2674C221AA730E2BAF124232C2EDEE3F7892BB
          EC7A5133DF492FF76F3E62D0A3DBAB56A958D43A2A2E3B274791200DAC41F23D
          65955025454B129353919E9189AA557CE15BDEA76895EC517FD59FB7158740E8
          87C383E0A147DBDB562AB23202FFE46D2A23B094105899ED6C47D896332AF949
          9B160D6F797BE853B3F22B2B093E4FBE7DB46B7D3B2A57E44ECCDEA0EB31023D
          B8B8ECE1F59A13A55E5A360DC6EEF08FF9F702B26401D783C0EA243081CCD9AE
          48A5348BACF049BBBF846F05DB6AFD7710B88F045A89C2C49701DC2732B54BAD
          5B6F83974FEEE323EEF4CB49483C1B2FAA0DDC7DFBD76F020B1F379B236F9A74
          FE0C52932EAA02BF4A1551A390BFFFB3F227D913A74EAB780F6E9192FF5E0275
          D9E4A5A9D6149C54E2A88D60F1438492B6218310FAD6C7A6BF164DBE7016D35E
          7C12E762A3548C6C849F18FE0E1E1D3452D90525CBA7BE8B8D4B67ABE25E1D1F
          C68B7D9E527A41496A7A06BABFFAA62A2E0D040A79EBD8DAB68492077B0C44BF
          B7C35CC83B87692342702EEEB88A91A4879037F81551DDE2462650C8930F0DED
          0C066CE4C9C8B3182E5CBE781E5347F4E4C83BA67C6AE40D1B83478B409E54B8
          510914F24C232FBFC75608583C7934B6ACFA52543EE91AD4C82BE4B1B505DBD2
          1B914021CF34E755AD1DB06A52F8EE10195DB66EE7A66B667D84EFE64FB59177
          0D23CF38C38D46601EF2D8D1D953361C79BF7CC56A8EE535E5D205FCB66E1902
          9BB644FD3BEFC5AE1FBE41E5EA35D1B44D07865F9BDC48040A79A6C796547CCE
          2F394367EE3C5FDB9AA3D9F60E747EF2D29388DCB5051E9E9E786FD976D4F00F
          A4B77872A31028E499160CD221E40D636E2581759C09FC6870479C8CDCCF95D8
          82B14B7E41EDA0460C2B9EDC08047249D55C471E3766BA90A70B2DAE049E898E
          C44F4B66A2C15D0FA04D97DE12526C947602EB70F65FC6DE3F441822236F280D
          451E73B81228BEFF144A3981D84122EE250C318D3CC379BD086CDFAA25423AB4
          43155F5F04D7F5372E6FCA4BD89B88A96D79469E517ABD0834AE27F96BFDFBE0
          89F68E17207129945402853C99F3ACAA952EC9DF4160E736AD3166C820979600
          2591C0D9DCAA08798E39CFB5D5D78BC00A3E3EA8EC5B017EFCC3A13706F543FD
          007FD7A694380265E499168C3C2DA6E37A1178237E8D217D285B85F9881ABF0B
          57E7B62581AC6804A548DF03CB082C239063C545EC23C8C59B6B8670A485DBCD
          3FDC10F81663B208B7E2774B40E54EFD874F701B54CCC2BD9B22706CCF7655BB
          14CE81AADD2526290D0456E0C89439907989E1CDD190D240A034B60B497C8E8A
          2751A05CAFFFFA69FFD1381C8F3BABDA515A08548D2D2CB95EFF7BDB6B1FCCC7
          B485F2258DFF74A163C9FF55AE30DE1CE53703811EECADFCD81DCD3C9310A9C1
          2480E8C0C7F47F988B447215EE2BCAB5E07AFD078C61735661D19ACDAA699DDA
          DC833E8F74547A4149C6954C8CFC789A2A963F19DEBC6412CAFB9453B6CB7FC0
          388ACE8D443C71811091C0602A473512B492CA93C45E12D49A7933FAB6302F91
          0B04DBF577493AF969CB8B1F243FBB983727560A812C50FF0387CE807A74F666
          C054E665928701FD55BABE253F27988BA49340BC4EC7685AE124F045E6B56853
          4713EA6592CBC011F2D393E639F2F319F31EB4C38440EA65525C06CA082C2E73
          F67A6504DA89286E5646607199B3D7FB7F55BE00E671E27A0E0000000049454E
          44AE426082}
        HightQuality = False
        Transparent = False
        TransparentColor = clWhite
      end
    end
  end
  object frxdbdtst_supplier: TfrxDBDataset
    UserName = 'DataSupplier'
    CloseDataSource = False
    DataSet = ZQsupplier
    BCDToCurrency = False
    Left = 568
    Top = 96
  end
  object frxrprt_datadaftarsepatu: TfrxReport
    Version = '4.12.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44674.506436713000000000
    ReportOptions.LastChange = 44674.542890925900000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 440
    Top = 168
    Datasets = <
      item
        DataSet = frxdbdtst_datadaftarsepatu
        DataSetName = 'frDataDaftarBarang'
      end>
    Variables = <>
    Style = <
      item
        Name = 'Title'
        Color = 14211288
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Header'
        Color = 15790320
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Group header'
        Color = 15790320
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Data'
        Color = clNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Arial'
        Font.Style = []
      end
      item
        Name = 'Group footer'
        Color = clNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftTop]
      end
      item
        Name = 'Header line'
        Color = clNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Width = 2.000000000000000000
      end>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 330.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 256
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object Memo1: TfrxMemoView
        Align = baWidth
        Left = 1171.654300000000000000
        Top = 3.779530000000000000
        Height = 56.692950000000000000
        ShowHint = False
        Color = 14211288
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HAlign = haCenter
        ParentFont = False
        Style = 'Title'
      end
      object ReportTitle1: TfrxReportTitle
        Height = 71.811070000000000000
        Top = 18.897650000000000000
        Width = 1171.654300000000000000
      end
      object PageHeader1: TfrxPageHeader
        Height = 22.677180000000000000
        Top = 113.385900000000000000
        Width = 1171.654300000000000000
        object Memo2: TfrxMemoView
          Width = 718.110236220472000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 2.000000000000000000
          ParentFont = False
          Style = 'Header line'
        end
        object Memo3: TfrxMemoView
          Width = 90.000000000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = 15790320
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'ID Sepatu')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 90.000000000000000000
          Width = 204.267997820000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = 15790320
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'ID Detail')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 294.027825020000000000
          Width = 224.998540960000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = 15790320
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Nama')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 519.026365980000000000
          Width = 85.697970240000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = 15790320
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Jenis')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 604.724800000000000000
          Width = 149.949980240000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = 15790320
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Brand')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 752.126470000000000000
          Width = 142.390920240000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = 15790320
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Varian')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 891.969080000000000000
          Width = 153.729510240000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = 15790320
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Warna')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 1043.150280000000000000
          Width = 127.272800240000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = 15790320
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Satuan')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 196.535560000000000000
        Width = 1171.654300000000000000
        DataSet = frxdbdtst_datadaftarsepatu
        DataSetName = 'frDataDaftarBarang'
        RowCount = 0
        object Memo8: TfrxMemoView
          Width = 90.000000000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'id_detail_sepatu'
          DataSet = frxdbdtst_datadaftarsepatu
          DataSetName = 'frDataDaftarBarang'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frDataDaftarBarang."id_detail_sepatu"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 90.000000000000000000
          Width = 204.267997820000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'id_sepatu'
          DataSet = frxdbdtst_datadaftarsepatu
          DataSetName = 'frDataDaftarBarang'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frDataDaftarBarang."id_sepatu"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 294.027825020000000000
          Width = 224.998540960000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'nama_sepatu'
          DataSet = frxdbdtst_datadaftarsepatu
          DataSetName = 'frDataDaftarBarang'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frDataDaftarBarang."nama_sepatu"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 519.026365980000000000
          Width = 85.697970240000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'jenis_sepatu'
          DataSet = frxdbdtst_datadaftarsepatu
          DataSetName = 'frDataDaftarBarang'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frDataDaftarBarang."jenis_sepatu"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 604.724800000000000000
          Width = 149.949980240000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'brand'
          DataSet = frxdbdtst_datadaftarsepatu
          DataSetName = 'frDataDaftarBarang'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frDataDaftarBarang."brand"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 752.126470000000000000
          Width = 142.390920240000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'varian'
          DataSet = frxdbdtst_datadaftarsepatu
          DataSetName = 'frDataDaftarBarang'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frDataDaftarBarang."varian"]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 891.969080000000000000
          Width = 153.729510240000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'warna'
          DataSet = frxdbdtst_datadaftarsepatu
          DataSetName = 'frDataDaftarBarang'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frDataDaftarBarang."warna"]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 1043.150280000000000000
          Width = 127.272800240000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'satuan'
          DataSet = frxdbdtst_datadaftarsepatu
          DataSetName = 'frDataDaftarBarang'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frDataDaftarBarang."satuan"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 26.456710000000000000
        Top = 275.905690000000000000
        Width = 1171.654300000000000000
        object Memo13: TfrxMemoView
          Align = baWidth
          Width = 1171.654300000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Memo14: TfrxMemoView
          Top = 1.000000000000000000
          Height = 22.677180000000000000
          ShowHint = False
          AutoWidth = True
          Memo.UTF8 = (
            '[Date] [Time]')
        end
        object Memo15: TfrxMemoView
          Align = baRight
          Left = 1096.063700000000000000
          Top = 1.000000000000000000
          Width = 75.590600000000000000
          Height = 22.677180000000000000
          ShowHint = False
          HAlign = haRight
          Memo.UTF8 = (
            'Page [Page#]')
        end
      end
      object Memo17: TfrxMemoView
        Left = 3.779530000000000000
        Top = 3.779530000000000000
        Width = 1167.874770000000000000
        Height = 56.692950000000000000
        ShowHint = False
        Color = 14211288
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8 = (
          'TOKO SEPATU'
          ''
          'DATA DAFTAR SEPATU')
        ParentFont = False
      end
      object Picture1: TfrxPictureView
        Width = 60.472480000000000000
        Height = 60.472480000000000000
        ShowHint = False
        Picture.Data = {
          0A54504E474F626A65637489504E470D0A1A0A0000000D494844520000005000
          00005008060000008E11F2AD000000017352474200AECE1CE90000000467414D
          410000B18F0BFC6105000000097048597300000EC300000EC301C76FA8640000
          132F494441547801ED5C097814C5B6FE7BB210084BD804423009B22A088A880B
          825C4045408282105695AB2C2A2AB85D140441E53DC303B90F05645501D90C08
          419FA0A06CCA22B213086421AC8190908D8464FAFDA7667A323D4926215E3181
          F477FEAA734E9DEAAEFABBBAAABA27A0A1ECF8530C687FAA7659659411F82707
          4119817F31813E80B692D7E848DC6C64EBECF37A40EFC53C93C8570A23E53112
          F85DBE356F1AA7DE855DFD9EC8570A2330840486E75BF3A671EA3DD9D55544BE
          722D04467238F7CDF72C6E9CA15DDBF9BFF94248849B901257F4F42B61381673
          C6DEAEFF1C817F90C0BBEC672D72A6478707E1AA1E5DE40A2520B045F751D817
          196B6F49198176228A9EFD550426B3091B896B924A152B54E8785FB347AEA9D2
          DF1CFCD3AF07703935DDDE8A3F37029FE122321F37F5A13FCBEE2F4001875680
          5FDC1692B787CA9DC4CD2C32F7B7220156228FB823901B486DB9BD062BEBE3A8
          A7112679B57193D0C08ABEF78AF3ABE818EC4E4C1455F01B179DAF457186A7C5
          6299DCDBEF230F4DF316FFBBE1979096A98B2A98CE3AD1A238E31FB56A35EA1E
          10305C7CD1A9A9981E79545454F2B1E0FD103FA5BB4B96EC48C38E13992AA455
          B56A18101C0477475A7636C6EDDB0FABAEDBC3D4665A5E28EC766E5610811E1C
          7DFB18763B21B2821DEB2D8A33AC030756474E4E0C4F52512E16B8FA5BC4A7A7
          DB43F42154E61126B1CE0D6AA141FB439C577374941F168B1CAB5802BD09D348
          C224D6FEFD43355D5F2CCEC8CB97D1646D84A8F0F1D290F269203CF9AC284701
          C9BC2DA91832FF822A0DF2F5C58927BA43D3D86AE5C93F797ACB562C8F8B330A
          F7B3FF2D69385A4A5D494167E94302BF561140362BB7A07E883089B55FBF0F78
          8231E2DC73E912EEFEEE7B510552C79F4A026112EBBCA077355D9B28CE33C939
          F01F7552543BF4CA54520893F03AA3799D3071A65CBD8ACACB57880A0B9DE7A6
          DD8A1A152DCA2E2839CBEB04BC7E52DD2856C1DEC7BBA0B99F5F41E1CABF3F29
          092DD91F1918CA01BD2FF3A58449E47C26070D0F92B79F7953428444EAA1A238
          430F0DADA16B5A344F5051FCEF1F3880F738EC4527B691F40799E711EB9CA0DD
          BCFB774BC19EB82CDC3DE1B4A88214D61102453781044EE1754619CECACB9623
          858F99D8FB26F8A37980B7A86E71DF0767F09BFD319E7067738C6BD6CC6DBC14
          F6DDBA154B63E344151C66FB9A53C9211CC276397443E94F02BFB21B3292E44A
          9176DB91594343FF8B44BC693864F4C928B4D9FABF984F264C625DD0B02E72B2
          E378518B14ACDB9781AE9F9C135510C9063611C515247009EBC80850458DD7AE
          C5D1CBE49B56C42BB5F0F89DE5A9B997C9EB92F1AF959754D03D9C07773EF6A8
          D2DD2587932FA3D9BA75CE73E100C62F221CC276397451BC48DE412A0D091112
          A90F14C519FAE0C1B5F5AB574FB0B26AB9CC7B32FFD9873B675EBD29E3490853
          27D1E706BDC0F3CF325C737E49C1F30B2F1AE62612D801F91CBC59BFF0663D64
          1475F8F1476C3A775E999F0FAE8E7FB6ABA47477C9C1D357D16CEC291562E1FC
          171FD20375CA9757B6BB64E0B6EDF82A2606F623926D9401956DB7A1198A3D1F
          CC0E2E80EDB8CAE0DBA9461126E188303D5233A3A2307CC74E23E618EB35A6A1
          1326B1CE0D5ACB05A4ABE17CFFDB24BCB73AC93017B35E7FC370CE4960ACA669
          B71ABEFEECD4E29818C831A1871FC63DE127AA5BC8827ADBDBF188BE90ADE23E
          6BDD1AC31A3650BABBE4684A0AEEE0A2952D275081FA60665F104A9C09F42679
          7CCE515F95000BD8A167E17258FBF6F587C512A5018EDBD775D3CF5877FAB411
          3995F51CF395E1B4CE695C095A6602092C67F8867D7111B37EB63D8AF485B1DE
          1BCC4DA2BFF082979E9A9AEC7CBD37F6EC41D8E1232A6E68FB4A9839A8BAD20B
          4B462D4DC4D41F2EABB0C7FDFD11F1707BA517963CF3EBAF587822DA088B623B
          9BD2C8264C237008099C234E228B41321F396AD1A784A3E1138E8691CA6022AB
          628D95DF20CB6AA525A27760BA092E873E3F3004564BB8B3FB89E9E7B1666FBA
          DDA58FA232953089B557AF6AF0F6BEA0B17146C1D4239118F5FBEFCAECDEA202
          BE1D798BD20B4B36455E4187FF3EABC2CA7B7820E1A927E1EBE9A96C7749544A
          2A9A72DE751A85FF64FC5CC24120478526B73408B68344EACFDBD4DC94FBB100
          E8BA8C3EC6DBFCE127E3F1E4E6CD36034824F1B568641326E1EA3B8FC43FEBEC
          BC8B2BF01F5C896DBEFCB709DC6B36D572720ED9626CA9AC8CB2428AD52AC81B
          BBC6FA8B5A28B27374D47AED2412D36C37FB9B760FA1674040A1F524E0F9DF76
          60CEF1E3A20A38B0D49E354B138B18CA1B3C93B9481649684C25062E07E7BE4F
          5961B8B3FB590EEF05B9C37B11EB0E702E175D9FD5CA4BF7483CC3B9DBF1ACE9
          3A50E39538476758AF1D631D7782BA12DEB48E9AAE6F50863DD97C3E01ED36D8
          5CFE7E1E3835A59EBDA4F06CC0E70958F46B9A0A7CA67E30E6DF779FD20B4B62
          D2D2D078CD5AE7276D28EBCC261FF02179C768041022B3D89961A23883E40572
          F41DE328F232FC57F9D8D6090FC7C54C72AE9C7A1F66CB089358E7DDF680A65B
          B73A3BD3B374F8BD1407791BB1F9F540E671844978DD816CE417CECEE37CA41A
          AC59A35CE5BD355C9E51F8DB880A66B26C671AFACC4CA006D4F2F1C1E99E21DC
          90F30ACAE33E19BE7327661E8B328262C953438DD608123883B948069D8DA8C4
          132661476632585877F8B72624A0EDFA0D867D85756BD248254CA2CF0D9E4CC7
          5B84434E25E52060F449C3CE665D5F1AC69DA06A13CEB96FF1A6497D9B83E965
          BE8D545BB11239328C69277C52F8DB08C3945CE2E32B8FB171E3B63DD219F7D7
          A8A1CA0A4B62390A1B9947E18BE4448B0120779F19FE971D79591467E87DFA04
          E916CB5176C4CBD93F66EF5E7C74D0313DAD67DD479CCB0DDD3A37F8102FD4D4
          B025DF159389D613CF882AB8C0BAB750D109939040D3A22585429C1F5FE752B3
          C93B1DBBC6F9A355A037B5A249E72967B1E110EF37C3FF75C7EDF8B0450B6A45
          939776EDC28CA3C78CE058F64B736AB4DE88258E52EA4AD88941246FA1329C12
          F3FCA74F64D138228F58E7045B35EE5F9C0B9C5744FA63486030F23938F2E769
          C0B3AE4532759CCDB091B0F1CDDA78B8B18F6B4881F6B8554998B82649955FCB
          3C28150E2527E38E8875A22A687C7C9D09AC4BEF69C224DCFB0DD62C96057039
          5C089CC0E2F1C8E72869044EE0E67D3C37F1D2D46B25501693E0D5DF4A5505AD
          8CC0A2AFC4C258F1080C0D1D94DF236CDEA1EB137881F1C8E7F84B46E037E138
          7BA5788FF0788EC009F61138B87E301614712B235DCB8FC00C16D82710B5398C
          A46D123EC24FF3115E6A72D2E8BD650B56C49DA4A6248CF3D81B4A7349B888A4
          69400567F7DABD19E83EFD9CE13ACFBAB569384D27B4289C033F65DDE1541D22
          1F2DAA721596D5589C6BF945A66B11BEC848ACE08D659710F67FF21B19D0EBD6
          7A58DEB6ADB88B84039C039BE7CE81196C9B7698359B10147D0093458449F47E
          FD5AD2B1873049432EE9517CD9B63B379084CE76DD9491C03DBC909CC3E19FB4
          360963C3930CDBCABA0134CE1026E1CD7B95376FAAB3338EDB8920CE4306DB93
          7A56C53BDDAA3887B8D53B869DC54F87AFA89806952AE158F76E4A2F4A225F66
          E40B8D3DF608FBA5CDA6F13C21B2811DE92C8A33F4F7DEB3E8478FC66A9A1660
          F837730FD82E770F28EE2CD66D4425963089756ED0075C84C718CE6CD2259F96
          22CF5E355CCCF5B14C261126E187DB26FC707B48E3646D144C3A701063F7ED33
          4C34AEED850313EB16FA695F2A9C48C846E331F19036882DD8DCB913DAD6AC29
          AA5BC80DEBF8E34FD878EE9C11F739DB85F66CDB26388E02DE2642434791C029
          1296919383FB7F588FBDFC8C2FB613B8BEEBDD699322A676E19B483D58ADDC47
          CA5B0FE0FC71D31E22590A6FC0DD54A20893701BB596D7EE2A4E19F1F2F1D6F8
          222D3EC1E45E55F15617F7A3D0AA434D1BF22157EA18B8AB6A556CE786BA1C3F
          3018BEFCF2AF636311BA759B5391FE901048683FD2DB8110C960470650F98670
          88DEBBB7B7EEE5F54B5256569B7E3CC9F767F23C6D46EC02D61F0EC0F68C5011
          B1CE097A5987367DE6C614BCBCF822BFF28A97B78E19FBC554C909D6951B7048
          59F6446DE43D3C761F4E4EAED6EDE75F10CD5FE6A4486362D4F5B000FFEE571D
          C31EE65733296099B364F0D571F85717B1706BAAB3DBA13F56A70E163FF800AA
          7A7B3B7CCE8A7C34E9BF6D1B64F0D8FD1BD8D6CEC6A5EAB32BBB585095109176
          853360368DDD04494540C34A559E49C9CE7ADBD8C0D22F329D4920D18330248A
          753FA6B19EE002814ACCEF6F51AFDCECBD27B36A5057121C500BEF8C780A2FBC
          F31909D5958F8910FF19EB2FA12E0B9AB4B1D13DD5AA8FDB9F9CD42DD3FE139E
          C5A261F6A4E198346305624EC925184DE9D0C407233B55C6FDB79543C572169C
          4FC9C10F073310F67D32A2CE6733C226219DDBA05EEDEAF8F797EB6C0EA6F285
          7A749326E85EB72EEA5628AFC8FA9D3FD37E762C0AABE3E3E168A1EDABD33DAC
          22BF0931B3C903243182AA1FE12C463DE988B35F7476527DF22FCFBA6BE9684F
          B88A4E479EBAF5EA54C78685E3D128C81FD3BF88C06B1FCEE7532EA18CCE15C3
          61AAEF61B160DABBCFE1A5015D70E4C429741A3C1EA7CE25E6D6B26B7CFBE1F7
          0FBBE1943DDCA61922668FE167464F0C78FD132C8DD8EA546A538D0B1A0DB079
          557A8937B72BB5ED84E37BA0E8824624620180FB097792C693BCCF8030C24A88
          9463DD0FA9BC4C7811F98A74AA4BFBBB31E78311A853D318F040C4A6DD18366E
          16E2CF5ECCB79EE10CE0A8993571181EE7390CDF99844B1832E6537CF7F3EF86
          2BDFDCCBD303230775C587A3FBC3DBCB53C55839314E99B71AE3A72F43FA954C
          E573936C63BF9F01708C506210AD0C7B22BE6E246308EDF684312285A8C3B457
          F12433989F21F29386ACFB120BE42ED5672EE743CD6A55D0E9813B31B46F67B4
          BFF70EBAF34AC6952CCC5DF123BE8ED8825DFB8F2333EBAA0A2AE7ED85D6CD1B
          20B45B5B3CD7EB1FF029E7ADFCAEC9A6DF0E60F6D2F5D8B06D1F12122FAB622E
          3EA85FAF16BA77B8072F0E780C0D02EB28BF6B72FA7C22662CFA1EAB37ECC0E1
          A878E7292589B19BD8E7B9E07D2674C221AA730E2BAF124232C2EDEE3F7892BB
          EC7A5133DF492FF76F3E62D0A3DBAB56A958D43A2A2E3B274791200DAC41F23D
          65955025454B129353919E9189AA557CE15BDEA76895EC517FD59FB7158740E8
          87C383E0A147DBDB562AB23202FFE46D2A23B094105899ED6C47D896332AF949
          9B160D6F797BE853B3F22B2B093E4FBE7DB46B7D3B2A57E44ECCDEA0EB31023D
          B8B8ECE1F59A13A55E5A360DC6EEF08FF9F702B26401D783C0EA243081CCD9AE
          48A5348BACF049BBBF846F05DB6AFD7710B88F045A89C2C49701DC2732B54BAD
          5B6F83974FEEE323EEF4CB49483C1B2FAA0DDC7DFBD76F020B1F379B236F9A74
          FE0C52932EAA02BF4A1551A390BFFFB3F227D913A74EAB780F6E9192FF5E0275
          D9E4A5A9D6149C54E2A88D60F1438492B6218310FAD6C7A6BF164DBE7016D35E
          7C12E762A3548C6C849F18FE0E1E1D3452D90525CBA7BE8B8D4B67ABE25E1D1F
          C68B7D9E527A41496A7A06BABFFAA62A2E0D040A79EBD8DAB68492077B0C44BF
          B7C35CC83B87692342702EEEB88A91A4879037F81551DDE2462650C8930F0DED
          0C066CE4C9C8B3182E5CBE781E5347F4E4C83BA67C6AE40D1B83478B409E54B8
          510914F24C232FBFC75608583C7934B6ACFA52543EE91AD4C82BE4B1B505DBD2
          1B914021CF34E755AD1DB06A52F8EE10195DB66EE7A66B667D84EFE64FB59177
          0D23CF38C38D46601EF2D8D1D953361C79BF7CC56A8EE535E5D205FCB66E1902
          9BB644FD3BEFC5AE1FBE41E5EA35D1B44D07865F9BDC48040A79A6C796547CCE
          2F394367EE3C5FDB9AA3D9F60E747EF2D29388DCB5051E9E9E786FD976D4F00F
          A4B77872A31028E499160CD221E40D636E2581759C09FC6870479C8CDCCF95D8
          82B14B7E41EDA0460C2B9EDC08047249D55C471E3766BA90A70B2DAE049E898E
          C44F4B66A2C15D0FA04D97DE12526C947602EB70F65FC6DE3F441822236F280D
          451E73B81228BEFF144A3981D84122EE250C318D3CC379BD086CDFAA25423AB4
          43155F5F04D7F5372E6FCA4BD89B88A96D79469E517ABD0834AE27F96BFDFBE0
          89F68E17207129945402853C99F3ACAA952EC9DF4160E736AD3166C820979600
          2591C0D9DCAA08798E39CFB5D5D78BC00A3E3EA8EC5B017EFCC3A13706F543FD
          007FD7A694380265E499168C3C2DA6E37A1178237E8D217D285B85F9881ABF0B
          57E7B62581AC6804A548DF03CB082C239063C545EC23C8C59B6B8670A485DBCD
          3FDC10F81663B208B7E2774B40E54EFD874F701B54CCC2BD9B22706CCF7655BB
          14CE81AADD2526290D0456E0C89439907989E1CDD190D240A034B60B497C8E8A
          2751A05CAFFFFA69FFD1381C8F3BABDA515A08548D2D2CB95EFF7BDB6B1FCCC7
          B485F2258DFF74A163C9FF55AE30DE1CE53703811EECADFCD81DCD3C9310A9C1
          2480E8C0C7F47F988B447215EE2BCAB5E07AFD078C61735661D19ACDAA699DDA
          DC833E8F74547A4149C6954C8CFC789A2A963F19DEBC6412CAFB9453B6CB7FC0
          388ACE8D443C71811091C0602A473512B492CA93C45E12D49A7933FAB6302F91
          0B04DBF577493AF969CB8B1F243FBB983727560A812C50FF0387CE807A74F666
          C054E665928701FD55BABE253F27988BA49340BC4EC7685AE124F045E6B56853
          4713EA6592CBC011F2D393E639F2F319F31EB4C38440EA65525C06CA082C2E73
          F67A6504DA89286E5646607199B3D7FB7F55BE00E671E27A0E0000000049454E
          44AE426082}
        HightQuality = False
        Transparent = False
        TransparentColor = clWhite
      end
    end
  end
  object frxdbdtst_datadaftarsepatu: TfrxDBDataset
    UserName = 'frDataDaftarBarang'
    CloseDataSource = False
    DataSet = ZQdetailsepatu
    BCDToCurrency = False
    Left = 568
    Top = 168
  end
  object frxrprt_penjualan: TfrxReport
    Version = '4.12.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44674.506436713000000000
    ReportOptions.LastChange = 44674.681110405100000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 440
    Top = 704
    Datasets = <
      item
        DataSet = frxdbdtst_penjualan
        DataSetName = 'DataPenjualan'
      end>
    Variables = <>
    Style = <
      item
        Name = 'Title'
        Color = 14211288
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Header'
        Color = 15790320
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Group header'
        Color = 15790320
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Data'
        Color = clNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Arial'
        Font.Style = []
      end
      item
        Name = 'Group footer'
        Color = clNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftTop]
      end
      item
        Name = 'Header line'
        Color = clNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Width = 2.000000000000000000
      end>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 120.944960000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo16: TfrxMemoView
          Left = -249.448980000000000000
          Top = 30.236240000000000000
          Width = 1224.567720000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Jln.RH Abdul Halim, Cimahi Tengah, Cimahi, Jawa Barat')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 37.795300000000000000
          Top = 49.133890000000000000
          Width = 642.520100000000000000
          ShowHint = False
          Diagonal = True
        end
        object Line2: TfrxLineView
          Left = 37.795300000000000000
          Top = 52.913420000000000000
          Width = 642.520100000000000000
          ShowHint = False
          Frame.Width = 3.000000000000000000
          Diagonal = True
        end
        object Memo17: TfrxMemoView
          Top = 86.929190000000000000
          Width = 718.110700000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'DATA PELANGGAN')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 60.472480000000000000
        Top = 162.519790000000000000
        Width = 718.110700000000000000
        object Line4: TfrxLineView
          Top = 34.015770000000000000
          Width = 710.551640000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Line3: TfrxLineView
          Top = 60.472480000000000000
          Width = 710.551640000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
      end
      object MasterData1: TfrxMasterData
        Height = 30.236240000000000000
        Top = 283.464750000000000000
        Width = 718.110700000000000000
        DataSet = frxdbdtst_penjualan
        DataSetName = 'DataPenjualan'
        RowCount = 0
        object DataPenjualannama_sepatu: TfrxMemoView
          Align = baLeft
          Top = 3.779530000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'nama_sepatu'
          DataSet = frxdbdtst_penjualan
          DataSetName = 'DataPenjualan'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Color = clNone
          Memo.UTF8 = (
            '[DataPenjualan."nama_sepatu"]')
          ParentFont = False
        end
        object DataPenjualanvarian: TfrxMemoView
          Align = baLeft
          Left = 102.047310000000000000
          Top = 3.779530000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'varian'
          DataSet = frxdbdtst_penjualan
          DataSetName = 'DataPenjualan'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Color = clNone
          Memo.UTF8 = (
            '[DataPenjualan."varian"]')
          ParentFont = False
        end
        object DataPenjualanwarna: TfrxMemoView
          Align = baLeft
          Left = 260.787570000000000000
          Top = 3.779530000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'warna'
          DataSet = frxdbdtst_penjualan
          DataSetName = 'DataPenjualan'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Color = clNone
          Memo.UTF8 = (
            '[DataPenjualan."warna"]')
          ParentFont = False
        end
        object DataPenjualanjumlah: TfrxMemoView
          Left = 419.527830000000000000
          Top = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'jumlah'
          DataSet = frxdbdtst_penjualan
          DataSetName = 'DataPenjualan'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Color = clNone
          HAlign = haCenter
          Memo.UTF8 = (
            '[DataPenjualan."jumlah"]')
          ParentFont = False
        end
        object DataPenjualanharga_sepatu: TfrxMemoView
          Align = baRight
          Left = 498.897960000000000000
          Top = 3.779530000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'harga_sepatu'
          DataSet = frxdbdtst_penjualan
          DataSetName = 'DataPenjualan'
          DisplayFormat.FormatStr = '%2.0m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Color = clNone
          HAlign = haRight
          Memo.UTF8 = (
            '[DataPenjualan."harga_sepatu"]')
          ParentFont = False
        end
        object DataPenjualantotal_harga: TfrxMemoView
          Align = baRight
          Left = 608.504330000000000000
          Top = 3.779530000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'total_harga'
          DataSet = frxdbdtst_penjualan
          DataSetName = 'DataPenjualan'
          DisplayFormat.FormatStr = '%2.0m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Color = clNone
          HAlign = haRight
          Memo.UTF8 = (
            '[DataPenjualan."total_harga"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 26.456710000000000000
        Top = 616.063390000000000000
        Width = 718.110700000000000000
        object Memo13: TfrxMemoView
          Align = baWidth
          Width = 718.110700000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Memo14: TfrxMemoView
          Top = 1.000000000000000000
          Height = 22.677180000000000000
          ShowHint = False
          AutoWidth = True
          Memo.UTF8 = (
            '[Date] [Time]')
        end
        object Memo15: TfrxMemoView
          Align = baRight
          Left = 642.520100000000000000
          Top = 1.000000000000000000
          Width = 75.590600000000000000
          Height = 22.677180000000000000
          ShowHint = False
          HAlign = haRight
          Memo.UTF8 = (
            'Page [Page#]')
        end
      end
      object Memo1: TfrxMemoView
        Top = 3.779530000000000000
        Width = 718.110700000000000000
        Height = 22.677180000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsUnderline]
        HAlign = haCenter
        Memo.UTF8 = (
          'TOKO SEPATU')
        ParentFont = False
      end
      object Picture1: TfrxPictureView
        Left = 37.795300000000000000
        Top = 3.779530000000000000
        Width = 60.472480000000000000
        Height = 52.913420000000000000
        ShowHint = False
        Picture.Data = {
          0A54504E474F626A65637489504E470D0A1A0A0000000D494844520000005000
          00005008060000008E11F2AD000000017352474200AECE1CE90000000467414D
          410000B18F0BFC6105000000097048597300000EC300000EC301C76FA8640000
          132F494441547801ED5C097814C5B6FE7BB210084BD804423009B22A088A880B
          825C4045408282105695AB2C2A2AB85D140441E53DC303B90F05645501D90C08
          419FA0A06CCA22B213086421AC8190908D8464FAFDA7667A323D4926215E3181
          F477FEAA734E9DEAAEFABBBAAABA27A0A1ECF8530C687FAA7659659411F82707
          4119817F31813E80B692D7E848DC6C64EBECF37A40EFC53C93C8570A23E53112
          F85DBE356F1AA7DE855DFD9EC8570A2330840486E75BF3A671EA3DD9D55544BE
          722D04467238F7CDF72C6E9CA15DDBF9BFF94248849B901257F4F42B61381673
          C6DEAEFF1C817F90C0BBEC672D72A6478707E1AA1E5DE40A2520B045F751D817
          196B6F49198176228A9EFD550426B3091B896B924A152B54E8785FB347AEA9D2
          DF1CFCD3AF07703935DDDE8A3F37029FE122321F37F5A13FCBEE2F4001875680
          5FDC1692B787CA9DC4CD2C32F7B7220156228FB823901B486DB9BD062BEBE3A8
          A7112679B57193D0C08ABEF78AF3ABE818EC4E4C1455F01B179DAF457186A7C5
          6299DCDBEF230F4DF316FFBBE1979096A98B2A98CE3AD1A238E31FB56A35EA1E
          10305C7CD1A9A9981E79545454F2B1E0FD103FA5BB4B96EC48C38E13992AA455
          B56A18101C0477475A7636C6EDDB0FABAEDBC3D4665A5E28EC766E5610811E1C
          7DFB18763B21B2821DEB2D8A33AC030756474E4E0C4F52512E16B8FA5BC4A7A7
          DB43F42154E61126B1CE0D6AA141FB439C577374941F168B1CAB5802BD09D348
          C224D6FEFD43355D5F2CCEC8CB97D1646D84A8F0F1D290F269203CF9AC284701
          C9BC2DA91832FF822A0DF2F5C58927BA43D3D86AE5C93F797ACB562C8F8B330A
          F7B3FF2D69385A4A5D494167E94302BF561140362BB7A07E883089B55FBF0F78
          8231E2DC73E912EEFEEE7B510552C79F4A026112EBBCA077355D9B28CE33C939
          F01F7552543BF4CA54520893F03AA3799D3071A65CBD8ACACB57880A0B9DE7A6
          DD8A1A152DCA2E2839CBEB04BC7E52DD2856C1DEC7BBA0B99F5F41E1CABF3F29
          092DD91F1918CA01BD2FF3A58449E47C26070D0F92B79F7953428444EAA1A238
          430F0DADA16B5A344F5051FCEF1F3880F738EC4527B691F40799E711EB9CA0DD
          BCFB774BC19EB82CDC3DE1B4A88214D61102453781044EE1754619CECACB9623
          858F99D8FB26F8A37980B7A86E71DF0767F09BFD319E7067738C6BD6CC6DBC14
          F6DDBA154B63E344151C66FB9A53C9211CC276397443E94F02BFB21B3292E44A
          9176DB91594343FF8B44BC693864F4C928B4D9FABF984F264C625DD0B02E72B2
          E378518B14ACDB9781AE9F9C135510C9063611C515247009EBC80850458DD7AE
          C5D1CBE49B56C42BB5F0F89DE5A9B997C9EB92F1AF959754D03D9C07773EF6A8
          D2DD2587932FA3D9BA75CE73E100C62F221CC276397451BC48DE412A0D091112
          A90F14C519FAE0C1B5F5AB574FB0B26AB9CC7B32FFD9873B675EBD29E3490853
          27D1E706BDC0F3CF325C737E49C1F30B2F1AE62612D801F91CBC59BFF0663D64
          1475F8F1476C3A775E999F0FAE8E7FB6ABA47477C9C1D357D16CEC291562E1FC
          171FD20375CA9757B6BB64E0B6EDF82A2606F623926D9401956DB7A1198A3D1F
          CC0E2E80EDB8CAE0DBA9461126E188303D5233A3A2307CC74E23E618EB35A6A1
          1326B1CE0D5ACB05A4ABE17CFFDB24BCB73AC93017B35E7FC370CE4960ACA669
          B71ABEFEECD4E29818C831A1871FC63DE127AA5BC8827ADBDBF188BE90ADE23E
          6BDD1AC31A3650BABBE4684A0AEEE0A2952D275081FA60665F104A9C09F42679
          7CCE515F95000BD8A167E17258FBF6F587C512A5018EDBD775D3CF5877FAB411
          3995F51CF395E1B4CE695C095A6602092C67F8867D7111B37EB63D8AF485B1DE
          1BCC4DA2BFF082979E9A9AEC7CBD37F6EC41D8E1232A6E68FB4A9839A8BAD20B
          4B462D4DC4D41F2EABB0C7FDFD11F1707BA517963CF3EBAF587822DA088B623B
          9BD2C8264C237008099C234E228B41321F396AD1A784A3E1138E8691CA6022AB
          628D95DF20CB6AA525A27760BA092E873E3F3004564BB8B3FB89E9E7B1666FBA
          DDA58FA232953089B557AF6AF0F6BEA0B17146C1D4239118F5FBEFCAECDEA202
          BE1D798BD20B4B36455E4187FF3EABC2CA7B7820E1A927E1EBE9A96C7749544A
          2A9A72DE751A85FF64FC5CC24120478526B73408B68344EACFDBD4DC94FBB100
          E8BA8C3EC6DBFCE127E3F1E4E6CD36034824F1B568641326E1EA3B8FC43FEBEC
          BC8B2BF01F5C896DBEFCB709DC6B36D572720ED9626CA9AC8CB2428AD52AC81B
          BBC6FA8B5A28B27374D47AED2412D36C37FB9B760FA1674040A1F524E0F9DF76
          60CEF1E3A20A38B0D49E354B138B18CA1B3C93B9481649684C25062E07E7BE4F
          5961B8B3FB590EEF05B9C37B11EB0E702E175D9FD5CA4BF7483CC3B9DBF1ACE9
          3A50E39538476758AF1D631D7782BA12DEB48E9AAE6F50863DD97C3E01ED36D8
          5CFE7E1E3835A59EBDA4F06CC0E70958F46B9A0A7CA67E30E6DF779FD20B4B62
          D2D2D078CD5AE7276D28EBCC261FF02179C768041022B3D89961A23883E40572
          F41DE328F232FC57F9D8D6090FC7C54C72AE9C7A1F66CB089358E7DDF680A65B
          B73A3BD3B374F8BD1407791BB1F9F540E671844978DD816CE417CECEE37CA41A
          AC59A35CE5BD355C9E51F8DB880A66B26C671AFACC4CA006D4F2F1C1E99E21DC
          90F30ACAE33E19BE7327661E8B328262C953438DD608123883B948069D8DA8C4
          132661476632585877F8B72624A0EDFA0D867D85756BD248254CA2CF0D9E4CC7
          5B84434E25E52060F449C3CE665D5F1AC69DA06A13CEB96FF1A6497D9B83E965
          BE8D545BB11239328C69277C52F8DB08C3945CE2E32B8FB171E3B63DD219F7D7
          A8A1CA0A4B62390A1B9947E18BE4448B0120779F19FE971D79591467E87DFA04
          E916CB5176C4CBD93F66EF5E7C74D0313DAD67DD479CCB0DDD3A37F8102FD4D4
          B025DF159389D613CF882AB8C0BAB750D109939040D3A22585429C1F5FE752B3
          C93B1DBBC6F9A355A037B5A249E72967B1E110EF37C3FF75C7EDF8B0450B6A45
          939776EDC28CA3C78CE058F64B736AB4DE88258E52EA4AD88941246FA1329C12
          F3FCA74F64D138228F58E7045B35EE5F9C0B9C5744FA63486030F23938F2E769
          C0B3AE4532759CCDB091B0F1CDDA78B8B18F6B4881F6B8554998B82649955FCB
          3C28150E2527E38E8875A22A687C7C9D09AC4BEF69C224DCFB0DD62C96057039
          5C089CC0E2F1C8E72869044EE0E67D3C37F1D2D46B25501693E0D5DF4A5505AD
          8CC0A2AFC4C258F1080C0D1D94DF236CDEA1EB137881F1C8E7F84B46E037E138
          7BA5788FF0788EC009F61138B87E301614712B235DCB8FC00C16D82710B5398C
          A46D123EC24FF3115E6A72D2E8BD650B56C49DA4A6248CF3D81B4A7349B888A4
          69400567F7DABD19E83EFD9CE13ACFBAB569384D27B4289C033F65DDE1541D22
          1F2DAA721596D5589C6BF945A66B11BEC848ACE08D659710F67FF21B19D0EBD6
          7A58DEB6ADB88B84039C039BE7CE81196C9B7698359B10147D0093458449F47E
          FD5AD2B1873049432EE9517CD9B63B379084CE76DD9491C03DBC909CC3E19FB4
          360963C3930CDBCABA0134CE1026E1CD7B95376FAAB3338EDB8920CE4306DB93
          7A56C53BDDAA3887B8D53B869DC54F87AFA89806952AE158F76E4A2F4A225F66
          E40B8D3DF608FBA5CDA6F13C21B2811DE92C8A33F4F7DEB3E8478FC66A9A1660
          F837730FD82E770F28EE2CD66D4425963089756ED0075C84C718CE6CD2259F96
          22CF5E355CCCF5B14C261126E187DB26FC707B48E3646D144C3A701063F7ED33
          4C34AEED850313EB16FA695F2A9C48C846E331F19036882DD8DCB913DAD6AC29
          AA5BC80DEBF8E34FD878EE9C11F739DB85F66CDB26388E02DE2642434791C029
          1296919383FB7F588FBDFC8C2FB613B8BEEBDD699322A676E19B483D58ADDC47
          CA5B0FE0FC71D31E22590A6FC0DD54A20893701BB596D7EE2A4E19F1F2F1D6F8
          222D3EC1E45E55F15617F7A3D0AA434D1BF22157EA18B8AB6A556CE786BA1C3F
          3018BEFCF2AF636311BA759B5391FE901048683FD2DB8110C960470650F98670
          88DEBBB7B7EEE5F54B5256569B7E3CC9F767F23C6D46EC02D61F0EC0F68C5011
          B1CE097A5987367DE6C614BCBCF822BFF28A97B78E19FBC554C909D6951B7048
          59F6446DE43D3C761F4E4EAED6EDE75F10CD5FE6A4486362D4F5B000FFEE571D
          C31EE65733296099B364F0D571F85717B1706BAAB3DBA13F56A70E163FF800AA
          7A7B3B7CCE8A7C34E9BF6D1B64F0D8FD1BD8D6CEC6A5EAB32BBB585095109176
          853360368DDD04494540C34A559E49C9CE7ADBD8C0D22F329D4920D18330248A
          753FA6B19EE002814ACCEF6F51AFDCECBD27B36A5057121C500BEF8C780A2FBC
          F31909D5958F8910FF19EB2FA12E0B9AB4B1D13DD5AA8FDB9F9CD42DD3FE139E
          C5A261F6A4E198346305624EC925184DE9D0C407233B55C6FDB79543C572169C
          4FC9C10F073310F67D32A2CE6733C226219DDBA05EEDEAF8F797EB6C0EA6F285
          7A749326E85EB72EEA5628AFC8FA9D3FD37E762C0AABE3E3E168A1EDABD33DAC
          22BF0931B3C903243182AA1FE12C463DE988B35F7476527DF22FCFBA6BE9684F
          B88A4E479EBAF5EA54C78685E3D128C81FD3BF88C06B1FCEE7532EA18CCE15C3
          61AAEF61B160DABBCFE1A5015D70E4C429741A3C1EA7CE25E6D6B26B7CFBE1F7
          0FBBE1943DDCA61922668FE167464F0C78FD132C8DD8EA546A538D0B1A0DB079
          557A8937B72BB5ED84E37BA0E8824624620180FB097792C693BCCF8030C24A88
          9463DD0FA9BC4C7811F98A74AA4BFBBB31E78311A853D318F040C4A6DD18366E
          16E2CF5ECCB79EE10CE0A8993571181EE7390CDF99844B1832E6537CF7F3EF86
          2BDFDCCBD303230775C587A3FBC3DBCB53C55839314E99B71AE3A72F43FA954C
          E573936C63BF9F01708C506210AD0C7B22BE6E246308EDF684312285A8C3B457
          F12433989F21F29386ACFB120BE42ED5672EE743CD6A55D0E9813B31B46F67B4
          BFF70EBAF34AC6952CCC5DF123BE8ED8825DFB8F2333EBAA0A2AE7ED85D6CD1B
          20B45B5B3CD7EB1FF029E7ADFCAEC9A6DF0E60F6D2F5D8B06D1F12122FAB622E
          3EA85FAF16BA77B8072F0E780C0D02EB28BF6B72FA7C22662CFA1EAB37ECC0E1
          A878E7292589B19BD8E7B9E07D2674C221AA730E2BAF124232C2EDEE3F7892BB
          EC7A5133DF492FF76F3E62D0A3DBAB56A958D43A2A2E3B274791200DAC41F23D
          65955025454B129353919E9189AA557CE15BDEA76895EC517FD59FB7158740E8
          87C383E0A147DBDB562AB23202FFE46D2A23B094105899ED6C47D896332AF949
          9B160D6F797BE853B3F22B2B093E4FBE7DB46B7D3B2A57E44ECCDEA0EB31023D
          B8B8ECE1F59A13A55E5A360DC6EEF08FF9F702B26401D783C0EA243081CCD9AE
          48A5348BACF049BBBF846F05DB6AFD7710B88F045A89C2C49701DC2732B54BAD
          5B6F83974FEEE323EEF4CB49483C1B2FAA0DDC7DFBD76F020B1F379B236F9A74
          FE0C52932EAA02BF4A1551A390BFFFB3F227D913A74EAB780F6E9192FF5E0275
          D9E4A5A9D6149C54E2A88D60F1438492B6218310FAD6C7A6BF164DBE7016D35E
          7C12E762A3548C6C849F18FE0E1E1D3452D90525CBA7BE8B8D4B67ABE25E1D1F
          C68B7D9E527A41496A7A06BABFFAA62A2E0D040A79EBD8DAB68492077B0C44BF
          B7C35CC83B87692342702EEEB88A91A4879037F81551DDE2462650C8930F0DED
          0C066CE4C9C8B3182E5CBE781E5347F4E4C83BA67C6AE40D1B83478B409E54B8
          510914F24C232FBFC75608583C7934B6ACFA52543EE91AD4C82BE4B1B505DBD2
          1B914021CF34E755AD1DB06A52F8EE10195DB66EE7A66B667D84EFE64FB59177
          0D23CF38C38D46601EF2D8D1D953361C79BF7CC56A8EE535E5D205FCB66E1902
          9BB644FD3BEFC5AE1FBE41E5EA35D1B44D07865F9BDC48040A79A6C796547CCE
          2F394367EE3C5FDB9AA3D9F60E747EF2D29388DCB5051E9E9E786FD976D4F00F
          A4B77872A31028E499160CD221E40D636E2581759C09FC6870479C8CDCCF95D8
          82B14B7E41EDA0460C2B9EDC08047249D55C471E3766BA90A70B2DAE049E898E
          C44F4B66A2C15D0FA04D97DE12526C947602EB70F65FC6DE3F441822236F280D
          451E73B81228BEFF144A3981D84122EE250C318D3CC379BD086CDFAA25423AB4
          43155F5F04D7F5372E6FCA4BD89B88A96D79469E517ABD0834AE27F96BFDFBE0
          89F68E17207129945402853C99F3ACAA952EC9DF4160E736AD3166C820979600
          2591C0D9DCAA08798E39CFB5D5D78BC00A3E3EA8EC5B017EFCC3A13706F543FD
          007FD7A694380265E499168C3C2DA6E37A1178237E8D217D285B85F9881ABF0B
          57E7B62581AC6804A548DF03CB082C239063C545EC23C8C59B6B8670A485DBCD
          3FDC10F81663B208B7E2774B40E54EFD874F701B54CCC2BD9B22706CCF7655BB
          14CE81AADD2526290D0456E0C89439907989E1CDD190D240A034B60B497C8E8A
          2751A05CAFFFFA69FFD1381C8F3BABDA515A08548D2D2CB95EFF7BDB6B1FCCC7
          B485F2258DFF74A163C9FF55AE30DE1CE53703811EECADFCD81DCD3C9310A9C1
          2480E8C0C7F47F988B447215EE2BCAB5E07AFD078C61735661D19ACDAA699DDA
          DC833E8F74547A4149C6954C8CFC789A2A963F19DEBC6412CAFB9453B6CB7FC0
          388ACE8D443C71811091C0602A473512B492CA93C45E12D49A7933FAB6302F91
          0B04DBF577493AF969CB8B1F243FBB983727560A812C50FF0387CE807A74F666
          C054E665928701FD55BABE253F27988BA49340BC4EC7685AE124F045E6B56853
          4713EA6592CBC011F2D393E639F2F319F31EB4C38440EA65525C06CA082C2E73
          F67A6504DA89286E5646607199B3D7FB7F55BE00E671E27A0E0000000049454E
          44AE426082}
        HightQuality = False
        Transparent = False
        TransparentColor = clWhite
      end
      object DataPenjualantgl_penjualan: TfrxMemoView
        Top = 158.740260000000000000
        Width = 79.370130000000000000
        Height = 18.897650000000000000
        ShowHint = False
        DataField = 'tgl_penjualan'
        DataSet = frxdbdtst_penjualan
        DataSetName = 'DataPenjualan'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Courier New'
        Font.Style = []
        Frame.Color = clNone
        HAlign = haCenter
        Memo.UTF8 = (
          '[DataPenjualan."tgl_penjualan"]')
        ParentFont = False
      end
      object DataPenjualannama_pelanggan: TfrxMemoView
        Left = 196.535560000000000000
        Top = 158.740260000000000000
        Width = 249.448980000000000000
        Height = 18.897650000000000000
        ShowHint = False
        DataField = 'nama_pelanggan'
        DataSet = frxdbdtst_penjualan
        DataSetName = 'DataPenjualan'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Courier New'
        Font.Style = []
        Frame.Color = clNone
        HAlign = haCenter
        Memo.UTF8 = (
          '[DataPenjualan."nama_pelanggan"]')
        ParentFont = False
      end
      object DataPenjualanno_faktur_penjualan: TfrxMemoView
        Left = 487.559370000000000000
        Top = 158.740260000000000000
        Width = 230.551330000000000000
        Height = 18.897650000000000000
        ShowHint = False
        DataField = 'no_faktur_penjualan'
        DataSet = frxdbdtst_penjualan
        DataSetName = 'DataPenjualan'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Courier New'
        Font.Style = []
        Frame.Color = clNone
        HAlign = haCenter
        Memo.UTF8 = (
          '[DataPenjualan."no_faktur_penjualan"]')
        ParentFont = False
      end
      object Footer1: TfrxFooter
        Height = 219.212740000000000000
        Top = 336.378170000000000000
        Width = 718.110700000000000000
        object Line5: TfrxLineView
          Left = 529.134200000000000000
          Top = 7.559060000000000000
          Width = 188.976500000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 0.500000000000000000
        end
        object Memo2: TfrxMemoView
          Left = 623.622450000000000000
          Top = 11.338590000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.0m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Color = clNone
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(strtofloat(<DataPenjualan."total_harga">),MasterData1)]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 529.134200000000000000
          Top = 11.338590000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Color = clNone
          Memo.UTF8 = (
            'Total :')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Top = 181.417440000000000000
          Width = 718.110700000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Color = clNone
          HAlign = haCenter
          Memo.UTF8 = (
            '-Terima Kasih-'
            ': )')
          ParentFont = False
        end
      end
    end
  end
  object frxdbdtst_penjualan: TfrxDBDataset
    UserName = 'DataPenjualan'
    CloseDataSource = False
    DataSet = ZQdetailPenjualan
    BCDToCurrency = False
    Left = 568
    Top = 704
  end
  object frxrprt_stok: TfrxReport
    Version = '4.12.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44674.506436713000000000
    ReportOptions.LastChange = 44674.612966365740000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 432
    Top = 488
    Datasets = <
      item
        DataSet = frxdbdtst1
        DataSetName = 'DataPembelian'
      end>
    Variables = <>
    Style = <
      item
        Name = 'Title'
        Color = 14211288
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Header'
        Color = 15790320
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Group header'
        Color = 15790320
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Data'
        Color = clNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Arial'
        Font.Style = []
      end
      item
        Name = 'Group footer'
        Color = clNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftTop]
      end
      item
        Name = 'Header line'
        Color = clNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Width = 2.000000000000000000
      end>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 330.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 256
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 128.504020000000000000
        Top = 18.897650000000000000
        Width = 1171.654300000000000000
        object Memo1: TfrxMemoView
          Top = 7.559060000000000000
          Width = 1224.567720000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          HAlign = haCenter
          Memo.UTF8 = (
            'TOKO SEPATU')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = -7.559060000000000000
          Top = 30.236240000000000000
          Width = 1224.567720000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Jln.RH Abdul Halim, Cimahi Tengah, Cimahi, Jawa Barat')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 37.795300000000000000
          Top = 68.031540000000000000
          Width = 1096.063700000000000000
          ShowHint = False
          Diagonal = True
        end
        object Line2: TfrxLineView
          Left = 37.795300000000000000
          Top = 64.252010000000000000
          Width = 1096.063700000000000000
          ShowHint = False
          Frame.Width = 3.000000000000000000
          Diagonal = True
        end
        object Memo3: TfrxMemoView
          Top = 86.929190000000000000
          Width = 1224.567720000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'DATA PEMBELIAN')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Left = 37.795300000000000000
          Top = 7.559060000000000000
          Width = 60.472480000000000000
          Height = 52.913420000000000000
          ShowHint = False
          Picture.Data = {
            0A54504E474F626A65637489504E470D0A1A0A0000000D494844520000005000
            00005008060000008E11F2AD000000017352474200AECE1CE90000000467414D
            410000B18F0BFC6105000000097048597300000EC300000EC301C76FA8640000
            132F494441547801ED5C097814C5B6FE7BB210084BD804423009B22A088A880B
            825C4045408282105695AB2C2A2AB85D140441E53DC303B90F05645501D90C08
            419FA0A06CCA22B213086421AC8190908D8464FAFDA7667A323D4926215E3181
            F477FEAA734E9DEAAEFABBBAAABA27A0A1ECF8530C687FAA7659659411F82707
            4119817F31813E80B692D7E848DC6C64EBECF37A40EFC53C93C8570A23E53112
            F85DBE356F1AA7DE855DFD9EC8570A2330840486E75BF3A671EA3DD9D55544BE
            722D04467238F7CDF72C6E9CA15DDBF9BFF94248849B901257F4F42B61381673
            C6DEAEFF1C817F90C0BBEC672D72A6478707E1AA1E5DE40A2520B045F751D817
            196B6F49198176228A9EFD550426B3091B896B924A152B54E8785FB347AEA9D2
            DF1CFCD3AF07703935DDDE8A3F37029FE122321F37F5A13FCBEE2F4001875680
            5FDC1692B787CA9DC4CD2C32F7B7220156228FB823901B486DB9BD062BEBE3A8
            A7112679B57193D0C08ABEF78AF3ABE818EC4E4C1455F01B179DAF457186A7C5
            6299DCDBEF230F4DF316FFBBE1979096A98B2A98CE3AD1A238E31FB56A35EA1E
            10305C7CD1A9A9981E79545454F2B1E0FD103FA5BB4B96EC48C38E13992AA455
            B56A18101C0477475A7636C6EDDB0FABAEDBC3D4665A5E28EC766E5610811E1C
            7DFB18763B21B2821DEB2D8A33AC030756474E4E0C4F52512E16B8FA5BC4A7A7
            DB43F42154E61126B1CE0D6AA141FB439C577374941F168B1CAB5802BD09D348
            C224D6FEFD43355D5F2CCEC8CB97D1646D84A8F0F1D290F269203CF9AC284701
            C9BC2DA91832FF822A0DF2F5C58927BA43D3D86AE5C93F797ACB562C8F8B330A
            F7B3FF2D69385A4A5D494167E94302BF561140362BB7A07E883089B55FBF0F78
            8231E2DC73E912EEFEEE7B510552C79F4A026112EBBCA077355D9B28CE33C939
            F01F7552543BF4CA54520893F03AA3799D3071A65CBD8ACACB57880A0B9DE7A6
            DD8A1A152DCA2E2839CBEB04BC7E52DD2856C1DEC7BBA0B99F5F41E1CABF3F29
            092DD91F1918CA01BD2FF3A58449E47C26070D0F92B79F7953428444EAA1A238
            430F0DADA16B5A344F5051FCEF1F3880F738EC4527B691F40799E711EB9CA0DD
            BCFB774BC19EB82CDC3DE1B4A88214D61102453781044EE1754619CECACB9623
            858F99D8FB26F8A37980B7A86E71DF0767F09BFD319E7067738C6BD6CC6DBC14
            F6DDBA154B63E344151C66FB9A53C9211CC276397443E94F02BFB21B3292E44A
            9176DB91594343FF8B44BC693864F4C928B4D9FABF984F264C625DD0B02E72B2
            E378518B14ACDB9781AE9F9C135510C9063611C515247009EBC80850458DD7AE
            C5D1CBE49B56C42BB5F0F89DE5A9B997C9EB92F1AF959754D03D9C07773EF6A8
            D2DD2587932FA3D9BA75CE73E100C62F221CC276397451BC48DE412A0D091112
            A90F14C519FAE0C1B5F5AB574FB0B26AB9CC7B32FFD9873B675EBD29E3490853
            27D1E706BDC0F3CF325C737E49C1F30B2F1AE62612D801F91CBC59BFF0663D64
            1475F8F1476C3A775E999F0FAE8E7FB6ABA47477C9C1D357D16CEC291562E1FC
            171FD20375CA9757B6BB64E0B6EDF82A2606F623926D9401956DB7A1198A3D1F
            CC0E2E80EDB8CAE0DBA9461126E188303D5233A3A2307CC74E23E618EB35A6A1
            1326B1CE0D5ACB05A4ABE17CFFDB24BCB73AC93017B35E7FC370CE4960ACA669
            B71ABEFEECD4E29818C831A1871FC63DE127AA5BC8827ADBDBF188BE90ADE23E
            6BDD1AC31A3650BABBE4684A0AEEE0A2952D275081FA60665F104A9C09F42679
            7CCE515F95000BD8A167E17258FBF6F587C512A5018EDBD775D3CF5877FAB411
            3995F51CF395E1B4CE695C095A6602092C67F8867D7111B37EB63D8AF485B1DE
            1BCC4DA2BFF082979E9A9AEC7CBD37F6EC41D8E1232A6E68FB4A9839A8BAD20B
            4B462D4DC4D41F2EABB0C7FDFD11F1707BA517963CF3EBAF587822DA088B623B
            9BD2C8264C237008099C234E228B41321F396AD1A784A3E1138E8691CA6022AB
            628D95DF20CB6AA525A27760BA092E873E3F3004564BB8B3FB89E9E7B1666FBA
            DDA58FA232953089B557AF6AF0F6BEA0B17146C1D4239118F5FBEFCAECDEA202
            BE1D798BD20B4B36455E4187FF3EABC2CA7B7820E1A927E1EBE9A96C7749544A
            2A9A72DE751A85FF64FC5CC24120478526B73408B68344EACFDBD4DC94FBB100
            E8BA8C3EC6DBFCE127E3F1E4E6CD36034824F1B568641326E1EA3B8FC43FEBEC
            BC8B2BF01F5C896DBEFCB709DC6B36D572720ED9626CA9AC8CB2428AD52AC81B
            BBC6FA8B5A28B27374D47AED2412D36C37FB9B760FA1674040A1F524E0F9DF76
            60CEF1E3A20A38B0D49E354B138B18CA1B3C93B9481649684C25062E07E7BE4F
            5961B8B3FB590EEF05B9C37B11EB0E702E175D9FD5CA4BF7483CC3B9DBF1ACE9
            3A50E39538476758AF1D631D7782BA12DEB48E9AAE6F50863DD97C3E01ED36D8
            5CFE7E1E3835A59EBDA4F06CC0E70958F46B9A0A7CA67E30E6DF779FD20B4B62
            D2D2D078CD5AE7276D28EBCC261FF02179C768041022B3D89961A23883E40572
            F41DE328F232FC57F9D8D6090FC7C54C72AE9C7A1F66CB089358E7DDF680A65B
            B73A3BD3B374F8BD1407791BB1F9F540E671844978DD816CE417CECEE37CA41A
            AC59A35CE5BD355C9E51F8DB880A66B26C671AFACC4CA006D4F2F1C1E99E21DC
            90F30ACAE33E19BE7327661E8B328262C953438DD608123883B948069D8DA8C4
            132661476632585877F8B72624A0EDFA0D867D85756BD248254CA2CF0D9E4CC7
            5B84434E25E52060F449C3CE665D5F1AC69DA06A13CEB96FF1A6497D9B83E965
            BE8D545BB11239328C69277C52F8DB08C3945CE2E32B8FB171E3B63DD219F7D7
            A8A1CA0A4B62390A1B9947E18BE4448B0120779F19FE971D79591467E87DFA04
            E916CB5176C4CBD93F66EF5E7C74D0313DAD67DD479CCB0DDD3A37F8102FD4D4
            B025DF159389D613CF882AB8C0BAB750D109939040D3A22585429C1F5FE752B3
            C93B1DBBC6F9A355A037B5A249E72967B1E110EF37C3FF75C7EDF8B0450B6A45
            939776EDC28CA3C78CE058F64B736AB4DE88258E52EA4AD88941246FA1329C12
            F3FCA74F64D138228F58E7045B35EE5F9C0B9C5744FA63486030F23938F2E769
            C0B3AE4532759CCDB091B0F1CDDA78B8B18F6B4881F6B8554998B82649955FCB
            3C28150E2527E38E8875A22A687C7C9D09AC4BEF69C224DCFB0DD62C96057039
            5C089CC0E2F1C8E72869044EE0E67D3C37F1D2D46B25501693E0D5DF4A5505AD
            8CC0A2AFC4C258F1080C0D1D94DF236CDEA1EB137881F1C8E7F84B46E037E138
            7BA5788FF0788EC009F61138B87E301614712B235DCB8FC00C16D82710B5398C
            A46D123EC24FF3115E6A72D2E8BD650B56C49DA4A6248CF3D81B4A7349B888A4
            69400567F7DABD19E83EFD9CE13ACFBAB569384D27B4289C033F65DDE1541D22
            1F2DAA721596D5589C6BF945A66B11BEC848ACE08D659710F67FF21B19D0EBD6
            7A58DEB6ADB88B84039C039BE7CE81196C9B7698359B10147D0093458449F47E
            FD5AD2B1873049432EE9517CD9B63B379084CE76DD9491C03DBC909CC3E19FB4
            360963C3930CDBCABA0134CE1026E1CD7B95376FAAB3338EDB8920CE4306DB93
            7A56C53BDDAA3887B8D53B869DC54F87AFA89806952AE158F76E4A2F4A225F66
            E40B8D3DF608FBA5CDA6F13C21B2811DE92C8A33F4F7DEB3E8478FC66A9A1660
            F837730FD82E770F28EE2CD66D4425963089756ED0075C84C718CE6CD2259F96
            22CF5E355CCCF5B14C261126E187DB26FC707B48E3646D144C3A701063F7ED33
            4C34AEED850313EB16FA695F2A9C48C846E331F19036882DD8DCB913DAD6AC29
            AA5BC80DEBF8E34FD878EE9C11F739DB85F66CDB26388E02DE2642434791C029
            1296919383FB7F588FBDFC8C2FB613B8BEEBDD699322A676E19B483D58ADDC47
            CA5B0FE0FC71D31E22590A6FC0DD54A20893701BB596D7EE2A4E19F1F2F1D6F8
            222D3EC1E45E55F15617F7A3D0AA434D1BF22157EA18B8AB6A556CE786BA1C3F
            3018BEFCF2AF636311BA759B5391FE901048683FD2DB8110C960470650F98670
            88DEBBB7B7EEE5F54B5256569B7E3CC9F767F23C6D46EC02D61F0EC0F68C5011
            B1CE097A5987367DE6C614BCBCF822BFF28A97B78E19FBC554C909D6951B7048
            59F6446DE43D3C761F4E4EAED6EDE75F10CD5FE6A4486362D4F5B000FFEE571D
            C31EE65733296099B364F0D571F85717B1706BAAB3DBA13F56A70E163FF800AA
            7A7B3B7CCE8A7C34E9BF6D1B64F0D8FD1BD8D6CEC6A5EAB32BBB585095109176
            853360368DDD04494540C34A559E49C9CE7ADBD8C0D22F329D4920D18330248A
            753FA6B19EE002814ACCEF6F51AFDCECBD27B36A5057121C500BEF8C780A2FBC
            F31909D5958F8910FF19EB2FA12E0B9AB4B1D13DD5AA8FDB9F9CD42DD3FE139E
            C5A261F6A4E198346305624EC925184DE9D0C407233B55C6FDB79543C572169C
            4FC9C10F073310F67D32A2CE6733C226219DDBA05EEDEAF8F797EB6C0EA6F285
            7A749326E85EB72EEA5628AFC8FA9D3FD37E762C0AABE3E3E168A1EDABD33DAC
            22BF0931B3C903243182AA1FE12C463DE988B35F7476527DF22FCFBA6BE9684F
            B88A4E479EBAF5EA54C78685E3D128C81FD3BF88C06B1FCEE7532EA18CCE15C3
            61AAEF61B160DABBCFE1A5015D70E4C429741A3C1EA7CE25E6D6B26B7CFBE1F7
            0FBBE1943DDCA61922668FE167464F0C78FD132C8DD8EA546A538D0B1A0DB079
            557A8937B72BB5ED84E37BA0E8824624620180FB097792C693BCCF8030C24A88
            9463DD0FA9BC4C7811F98A74AA4BFBBB31E78311A853D318F040C4A6DD18366E
            16E2CF5ECCB79EE10CE0A8993571181EE7390CDF99844B1832E6537CF7F3EF86
            2BDFDCCBD303230775C587A3FBC3DBCB53C55839314E99B71AE3A72F43FA954C
            E573936C63BF9F01708C506210AD0C7B22BE6E246308EDF684312285A8C3B457
            F12433989F21F29386ACFB120BE42ED5672EE743CD6A55D0E9813B31B46F67B4
            BFF70EBAF34AC6952CCC5DF123BE8ED8825DFB8F2333EBAA0A2AE7ED85D6CD1B
            20B45B5B3CD7EB1FF029E7ADFCAEC9A6DF0E60F6D2F5D8B06D1F12122FAB622E
            3EA85FAF16BA77B8072F0E780C0D02EB28BF6B72FA7C22662CFA1EAB37ECC0E1
            A878E7292589B19BD8E7B9E07D2674C221AA730E2BAF124232C2EDEE3F7892BB
            EC7A5133DF492FF76F3E62D0A3DBAB56A958D43A2A2E3B274791200DAC41F23D
            65955025454B129353919E9189AA557CE15BDEA76895EC517FD59FB7158740E8
            87C383E0A147DBDB562AB23202FFE46D2A23B094105899ED6C47D896332AF949
            9B160D6F797BE853B3F22B2B093E4FBE7DB46B7D3B2A57E44ECCDEA0EB31023D
            B8B8ECE1F59A13A55E5A360DC6EEF08FF9F702B26401D783C0EA243081CCD9AE
            48A5348BACF049BBBF846F05DB6AFD7710B88F045A89C2C49701DC2732B54BAD
            5B6F83974FEEE323EEF4CB49483C1B2FAA0DDC7DFBD76F020B1F379B236F9A74
            FE0C52932EAA02BF4A1551A390BFFFB3F227D913A74EAB780F6E9192FF5E0275
            D9E4A5A9D6149C54E2A88D60F1438492B6218310FAD6C7A6BF164DBE7016D35E
            7C12E762A3548C6C849F18FE0E1E1D3452D90525CBA7BE8B8D4B67ABE25E1D1F
            C68B7D9E527A41496A7A06BABFFAA62A2E0D040A79EBD8DAB68492077B0C44BF
            B7C35CC83B87692342702EEEB88A91A4879037F81551DDE2462650C8930F0DED
            0C066CE4C9C8B3182E5CBE781E5347F4E4C83BA67C6AE40D1B83478B409E54B8
            510914F24C232FBFC75608583C7934B6ACFA52543EE91AD4C82BE4B1B505DBD2
            1B914021CF34E755AD1DB06A52F8EE10195DB66EE7A66B667D84EFE64FB59177
            0D23CF38C38D46601EF2D8D1D953361C79BF7CC56A8EE535E5D205FCB66E1902
            9BB644FD3BEFC5AE1FBE41E5EA35D1B44D07865F9BDC48040A79A6C796547CCE
            2F394367EE3C5FDB9AA3D9F60E747EF2D29388DCB5051E9E9E786FD976D4F00F
            A4B77872A31028E499160CD221E40D636E2581759C09FC6870479C8CDCCF95D8
            82B14B7E41EDA0460C2B9EDC08047249D55C471E3766BA90A70B2DAE049E898E
            C44F4B66A2C15D0FA04D97DE12526C947602EB70F65FC6DE3F441822236F280D
            451E73B81228BEFF144A3981D84122EE250C318D3CC379BD086CDFAA25423AB4
            43155F5F04D7F5372E6FCA4BD89B88A96D79469E517ABD0834AE27F96BFDFBE0
            89F68E17207129945402853C99F3ACAA952EC9DF4160E736AD3166C820979600
            2591C0D9DCAA08798E39CFB5D5D78BC00A3E3EA8EC5B017EFCC3A13706F543FD
            007FD7A694380265E499168C3C2DA6E37A1178237E8D217D285B85F9881ABF0B
            57E7B62581AC6804A548DF03CB082C239063C545EC23C8C59B6B8670A485DBCD
            3FDC10F81663B208B7E2774B40E54EFD874F701B54CCC2BD9B22706CCF7655BB
            14CE81AADD2526290D0456E0C89439907989E1CDD190D240A034B60B497C8E8A
            2751A05CAFFFFA69FFD1381C8F3BABDA515A08548D2D2CB95EFF7BDB6B1FCCC7
            B485F2258DFF74A163C9FF55AE30DE1CE53703811EECADFCD81DCD3C9310A9C1
            2480E8C0C7F47F988B447215EE2BCAB5E07AFD078C61735661D19ACDAA699DDA
            DC833E8F74547A4149C6954C8CFC789A2A963F19DEBC6412CAFB9453B6CB7FC0
            388ACE8D443C71811091C0602A473512B492CA93C45E12D49A7933FAB6302F91
            0B04DBF577493AF969CB8B1F243FBB983727560A812C50FF0387CE807A74F666
            C054E665928701FD55BABE253F27988BA49340BC4EC7685AE124F045E6B56853
            4713EA6592CBC011F2D393E639F2F319F31EB4C38440EA65525C06CA082C2E73
            F67A6504DA89286E5646607199B3D7FB7F55BE00E671E27A0E0000000049454E
            44AE426082}
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 22.677180000000000000
        Top = 170.078850000000000000
        Width = 1171.654300000000000000
        object Memo5: TfrxMemoView
          Width = 37.086580000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = 15790320
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'No')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 37.086580000000000000
          Width = 415.921677820000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = 15790320
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Supplier')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 453.008257820000000000
          Width = 415.508127210000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = 15790320
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Rincian Sepatu')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 868.516385020000000000
          Width = 179.644180960000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = 15790320
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Harga')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 1048.160565980000000000
          Width = 123.493270240000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = 15790320
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Jumlah')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 128.504020000000000000
        Top = 253.228510000000000000
        Width = 1171.654300000000000000
        DataSet = frxdbdtst1
        DataSetName = 'DataPembelian'
        RowCount = 0
        object Memo11: TfrxMemoView
          Left = 187.952690000000000000
          Width = 265.055567820000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'no_faktur_pembelian'
          DataSet = frxdbdtst1
          DataSetName = 'DataPembelian'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          Memo.UTF8 = (
            '[DataPembelian."no_faktur_pembelian"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 188.976500000000000000
          Top = 18.897650000000000000
          Width = 265.055567820000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'tgl_pembelian'
          DataSet = frxdbdtst1
          DataSetName = 'DataPembelian'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          Memo.UTF8 = (
            '[DataPembelian."tgl_pembelian"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 188.976500000000000000
          Top = 37.795300000000000000
          Width = 265.055567820000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'id_supplier'
          DataSet = frxdbdtst1
          DataSetName = 'DataPembelian'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight]
          Memo.UTF8 = (
            '[DataPembelian."id_supplier"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 188.976500000000000000
          Top = 56.692950000000000000
          Width = 265.055567820000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'nama_supplier'
          DataSet = frxdbdtst1
          DataSetName = 'DataPembelian'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight]
          Memo.UTF8 = (
            '[DataPembelian."nama_supplier"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Align = baLeft
          Width = 37.795300000000000000
          Height = 113.385900000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[Line#]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 37.795300000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          Memo.UTF8 = (
            '    No.Faktur ')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 143.622140000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 37.795300000000000000
          Top = 18.897650000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8 = (
            '    Tanggal')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 143.622140000000000000
          Top = 18.897650000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 37.795300000000000000
          Top = 37.795300000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '    ID ')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 143.622140000000000000
          Top = 37.795300000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 37.795300000000000000
          Top = 56.692950000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '    Nama')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 143.622140000000000000
          Top = 56.692950000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 37.795300000000000000
          Top = 75.590600000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '    Alamat')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 143.622140000000000000
          Top = 75.590600000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 188.976500000000000000
          Top = 75.590600000000000000
          Width = 265.055567820000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'alamat_supplier'
          DataSet = frxdbdtst1
          DataSetName = 'DataPembelian'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[DataPembelian."alamat_supplier"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 603.700990000000000000
          Width = 265.055567820000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'varian'
          DataSet = frxdbdtst_stok
          DataSetName = 'frStok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          Memo.UTF8 = (
            '[frStok."varian"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 453.543600000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          Memo.UTF8 = (
            '    Varian')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 559.370440000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 603.700990000000000000
          Top = 41.574830000000000000
          Width = 265.055567820000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'warna'
          DataSet = frxdbdtst_stok
          DataSetName = 'frStok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frStok."warna"]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 453.543600000000000000
          Top = 41.574830000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '    Warna')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 559.370440000000000000
          Top = 41.574830000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 603.700990000000000000
          Top = 75.590600000000000000
          Width = 265.055567820000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'satuan'
          DataSet = frxdbdtst_stok
          DataSetName = 'frStok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8 = (
            '[frStok."satuan"]')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 453.543600000000000000
          Top = 75.590600000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8 = (
            '    Satuan')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 559.370440000000000000
          Top = 75.590600000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Left = 868.268090000000000000
          Width = 178.126377820000000000
          Height = 113.385900000000000000
          ShowHint = False
          DataField = 'harga_sepatu'
          DataSet = frxdbdtst_stok
          DataSetName = 'frStok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frStok."harga_sepatu"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo35: TfrxMemoView
          Left = 1046.929810000000000000
          Width = 125.212957820000000000
          Height = 113.385900000000000000
          ShowHint = False
          DataField = 'jumlah_stok'
          DataSet = frxdbdtst_stok
          DataSetName = 'frStok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frStok."jumlah_stok"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo39: TfrxMemoView
          Left = 37.795300000000000000
          Top = 94.488250000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8 = (
            '    No.Telepon')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          Left = 143.622140000000000000
          Top = 94.488250000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          Left = 188.976500000000000000
          Top = 94.488250000000000000
          Width = 265.055567820000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'tlp_supplier'
          DataSet = frxdbdtst1
          DataSetName = 'DataPembelian'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          Memo.UTF8 = (
            '[DataPembelian."tlp_supplier"]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        Height = 211.653680000000000000
        Top = 404.409710000000000000
        Width = 1171.654300000000000000
        object Memo36: TfrxMemoView
          Left = 7.559060000000000000
          Top = 86.929190000000000000
          Width = 415.748300000000000000
          Height = 113.385900000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Mengetahui'
            'Kepala Toko,'
            ''
            ''
            ''
            
              '................................................................' +
              '.'
            'Fahmi Triseptiyadi')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 45.354360000000000000
        Top = 676.535870000000000000
        Width = 1171.654300000000000000
        object Memo37: TfrxMemoView
          Align = baRight
          Left = 1114.961350000000000000
          Top = 18.897650000000000000
          Width = 56.692950000000000000
          Height = 22.677180000000000000
          ShowHint = False
          HAlign = haRight
          Memo.UTF8 = (
            'Page [Page#]')
        end
        object Memo38: TfrxMemoView
          Align = baLeft
          Top = 18.897650000000000000
          Width = 283.464750000000000000
          Height = 22.677180000000000000
          ShowHint = False
          DisplayFormat.FormatStr = 'hh:mm am/pm, mmmm dd, yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[Date]')
          ParentFont = False
        end
      end
    end
  end
  object frxdbdtst_stok: TfrxDBDataset
    UserName = 'frStok'
    CloseDataSource = False
    DataSet = ZQstok
    BCDToCurrency = False
    Left = 560
    Top = 488
  end
  object frxrprt_detailpembelian: TfrxReport
    Version = '4.12.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44674.506436713000000000
    ReportOptions.LastChange = 44674.626553495370000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 440
    Top = 328
    Datasets = <
      item
        DataSet = frxdbdtst_detailpembelian
        DataSetName = 'DetailPembelian'
      end>
    Variables = <>
    Style = <
      item
        Name = 'Title'
        Color = 14211288
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Header'
        Color = 15790320
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Group header'
        Color = 15790320
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Data'
        Color = clNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Arial'
        Font.Style = []
      end
      item
        Name = 'Group footer'
        Color = clNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftTop]
      end
      item
        Name = 'Header line'
        Color = clNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Width = 2.000000000000000000
      end>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 330.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 256
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 128.504020000000000000
        Top = 18.897650000000000000
        Width = 1171.654300000000000000
        object Memo1: TfrxMemoView
          Top = 7.559060000000000000
          Width = 1224.567720000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          HAlign = haCenter
          Memo.UTF8 = (
            'TOKO SEPATU')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = -7.559060000000000000
          Top = 30.236240000000000000
          Width = 1224.567720000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Jln.RH Abdul Halim, Cimahi Tengah, Cimahi, Jawa Barat')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 37.795300000000000000
          Top = 68.031540000000000000
          Width = 1096.063700000000000000
          ShowHint = False
          Diagonal = True
        end
        object Line2: TfrxLineView
          Left = 37.795300000000000000
          Top = 64.252010000000000000
          Width = 1096.063700000000000000
          ShowHint = False
          Frame.Width = 3.000000000000000000
          Diagonal = True
        end
        object Memo3: TfrxMemoView
          Top = 86.929190000000000000
          Width = 1224.567720000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'DATA PEMBELIAN')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Left = 37.795300000000000000
          Top = 7.559060000000000000
          Width = 60.472480000000000000
          Height = 52.913420000000000000
          ShowHint = False
          Picture.Data = {
            0A54504E474F626A65637489504E470D0A1A0A0000000D494844520000005000
            00005008060000008E11F2AD000000017352474200AECE1CE90000000467414D
            410000B18F0BFC6105000000097048597300000EC300000EC301C76FA8640000
            132F494441547801ED5C097814C5B6FE7BB210084BD804423009B22A088A880B
            825C4045408282105695AB2C2A2AB85D140441E53DC303B90F05645501D90C08
            419FA0A06CCA22B213086421AC8190908D8464FAFDA7667A323D4926215E3181
            F477FEAA734E9DEAAEFABBBAAABA27A0A1ECF8530C687FAA7659659411F82707
            4119817F31813E80B692D7E848DC6C64EBECF37A40EFC53C93C8570A23E53112
            F85DBE356F1AA7DE855DFD9EC8570A2330840486E75BF3A671EA3DD9D55544BE
            722D04467238F7CDF72C6E9CA15DDBF9BFF94248849B901257F4F42B61381673
            C6DEAEFF1C817F90C0BBEC672D72A6478707E1AA1E5DE40A2520B045F751D817
            196B6F49198176228A9EFD550426B3091B896B924A152B54E8785FB347AEA9D2
            DF1CFCD3AF07703935DDDE8A3F37029FE122321F37F5A13FCBEE2F4001875680
            5FDC1692B787CA9DC4CD2C32F7B7220156228FB823901B486DB9BD062BEBE3A8
            A7112679B57193D0C08ABEF78AF3ABE818EC4E4C1455F01B179DAF457186A7C5
            6299DCDBEF230F4DF316FFBBE1979096A98B2A98CE3AD1A238E31FB56A35EA1E
            10305C7CD1A9A9981E79545454F2B1E0FD103FA5BB4B96EC48C38E13992AA455
            B56A18101C0477475A7636C6EDDB0FABAEDBC3D4665A5E28EC766E5610811E1C
            7DFB18763B21B2821DEB2D8A33AC030756474E4E0C4F52512E16B8FA5BC4A7A7
            DB43F42154E61126B1CE0D6AA141FB439C577374941F168B1CAB5802BD09D348
            C224D6FEFD43355D5F2CCEC8CB97D1646D84A8F0F1D290F269203CF9AC284701
            C9BC2DA91832FF822A0DF2F5C58927BA43D3D86AE5C93F797ACB562C8F8B330A
            F7B3FF2D69385A4A5D494167E94302BF561140362BB7A07E883089B55FBF0F78
            8231E2DC73E912EEFEEE7B510552C79F4A026112EBBCA077355D9B28CE33C939
            F01F7552543BF4CA54520893F03AA3799D3071A65CBD8ACACB57880A0B9DE7A6
            DD8A1A152DCA2E2839CBEB04BC7E52DD2856C1DEC7BBA0B99F5F41E1CABF3F29
            092DD91F1918CA01BD2FF3A58449E47C26070D0F92B79F7953428444EAA1A238
            430F0DADA16B5A344F5051FCEF1F3880F738EC4527B691F40799E711EB9CA0DD
            BCFB774BC19EB82CDC3DE1B4A88214D61102453781044EE1754619CECACB9623
            858F99D8FB26F8A37980B7A86E71DF0767F09BFD319E7067738C6BD6CC6DBC14
            F6DDBA154B63E344151C66FB9A53C9211CC276397443E94F02BFB21B3292E44A
            9176DB91594343FF8B44BC693864F4C928B4D9FABF984F264C625DD0B02E72B2
            E378518B14ACDB9781AE9F9C135510C9063611C515247009EBC80850458DD7AE
            C5D1CBE49B56C42BB5F0F89DE5A9B997C9EB92F1AF959754D03D9C07773EF6A8
            D2DD2587932FA3D9BA75CE73E100C62F221CC276397451BC48DE412A0D091112
            A90F14C519FAE0C1B5F5AB574FB0B26AB9CC7B32FFD9873B675EBD29E3490853
            27D1E706BDC0F3CF325C737E49C1F30B2F1AE62612D801F91CBC59BFF0663D64
            1475F8F1476C3A775E999F0FAE8E7FB6ABA47477C9C1D357D16CEC291562E1FC
            171FD20375CA9757B6BB64E0B6EDF82A2606F623926D9401956DB7A1198A3D1F
            CC0E2E80EDB8CAE0DBA9461126E188303D5233A3A2307CC74E23E618EB35A6A1
            1326B1CE0D5ACB05A4ABE17CFFDB24BCB73AC93017B35E7FC370CE4960ACA669
            B71ABEFEECD4E29818C831A1871FC63DE127AA5BC8827ADBDBF188BE90ADE23E
            6BDD1AC31A3650BABBE4684A0AEEE0A2952D275081FA60665F104A9C09F42679
            7CCE515F95000BD8A167E17258FBF6F587C512A5018EDBD775D3CF5877FAB411
            3995F51CF395E1B4CE695C095A6602092C67F8867D7111B37EB63D8AF485B1DE
            1BCC4DA2BFF082979E9A9AEC7CBD37F6EC41D8E1232A6E68FB4A9839A8BAD20B
            4B462D4DC4D41F2EABB0C7FDFD11F1707BA517963CF3EBAF587822DA088B623B
            9BD2C8264C237008099C234E228B41321F396AD1A784A3E1138E8691CA6022AB
            628D95DF20CB6AA525A27760BA092E873E3F3004564BB8B3FB89E9E7B1666FBA
            DDA58FA232953089B557AF6AF0F6BEA0B17146C1D4239118F5FBEFCAECDEA202
            BE1D798BD20B4B36455E4187FF3EABC2CA7B7820E1A927E1EBE9A96C7749544A
            2A9A72DE751A85FF64FC5CC24120478526B73408B68344EACFDBD4DC94FBB100
            E8BA8C3EC6DBFCE127E3F1E4E6CD36034824F1B568641326E1EA3B8FC43FEBEC
            BC8B2BF01F5C896DBEFCB709DC6B36D572720ED9626CA9AC8CB2428AD52AC81B
            BBC6FA8B5A28B27374D47AED2412D36C37FB9B760FA1674040A1F524E0F9DF76
            60CEF1E3A20A38B0D49E354B138B18CA1B3C93B9481649684C25062E07E7BE4F
            5961B8B3FB590EEF05B9C37B11EB0E702E175D9FD5CA4BF7483CC3B9DBF1ACE9
            3A50E39538476758AF1D631D7782BA12DEB48E9AAE6F50863DD97C3E01ED36D8
            5CFE7E1E3835A59EBDA4F06CC0E70958F46B9A0A7CA67E30E6DF779FD20B4B62
            D2D2D078CD5AE7276D28EBCC261FF02179C768041022B3D89961A23883E40572
            F41DE328F232FC57F9D8D6090FC7C54C72AE9C7A1F66CB089358E7DDF680A65B
            B73A3BD3B374F8BD1407791BB1F9F540E671844978DD816CE417CECEE37CA41A
            AC59A35CE5BD355C9E51F8DB880A66B26C671AFACC4CA006D4F2F1C1E99E21DC
            90F30ACAE33E19BE7327661E8B328262C953438DD608123883B948069D8DA8C4
            132661476632585877F8B72624A0EDFA0D867D85756BD248254CA2CF0D9E4CC7
            5B84434E25E52060F449C3CE665D5F1AC69DA06A13CEB96FF1A6497D9B83E965
            BE8D545BB11239328C69277C52F8DB08C3945CE2E32B8FB171E3B63DD219F7D7
            A8A1CA0A4B62390A1B9947E18BE4448B0120779F19FE971D79591467E87DFA04
            E916CB5176C4CBD93F66EF5E7C74D0313DAD67DD479CCB0DDD3A37F8102FD4D4
            B025DF159389D613CF882AB8C0BAB750D109939040D3A22585429C1F5FE752B3
            C93B1DBBC6F9A355A037B5A249E72967B1E110EF37C3FF75C7EDF8B0450B6A45
            939776EDC28CA3C78CE058F64B736AB4DE88258E52EA4AD88941246FA1329C12
            F3FCA74F64D138228F58E7045B35EE5F9C0B9C5744FA63486030F23938F2E769
            C0B3AE4532759CCDB091B0F1CDDA78B8B18F6B4881F6B8554998B82649955FCB
            3C28150E2527E38E8875A22A687C7C9D09AC4BEF69C224DCFB0DD62C96057039
            5C089CC0E2F1C8E72869044EE0E67D3C37F1D2D46B25501693E0D5DF4A5505AD
            8CC0A2AFC4C258F1080C0D1D94DF236CDEA1EB137881F1C8E7F84B46E037E138
            7BA5788FF0788EC009F61138B87E301614712B235DCB8FC00C16D82710B5398C
            A46D123EC24FF3115E6A72D2E8BD650B56C49DA4A6248CF3D81B4A7349B888A4
            69400567F7DABD19E83EFD9CE13ACFBAB569384D27B4289C033F65DDE1541D22
            1F2DAA721596D5589C6BF945A66B11BEC848ACE08D659710F67FF21B19D0EBD6
            7A58DEB6ADB88B84039C039BE7CE81196C9B7698359B10147D0093458449F47E
            FD5AD2B1873049432EE9517CD9B63B379084CE76DD9491C03DBC909CC3E19FB4
            360963C3930CDBCABA0134CE1026E1CD7B95376FAAB3338EDB8920CE4306DB93
            7A56C53BDDAA3887B8D53B869DC54F87AFA89806952AE158F76E4A2F4A225F66
            E40B8D3DF608FBA5CDA6F13C21B2811DE92C8A33F4F7DEB3E8478FC66A9A1660
            F837730FD82E770F28EE2CD66D4425963089756ED0075C84C718CE6CD2259F96
            22CF5E355CCCF5B14C261126E187DB26FC707B48E3646D144C3A701063F7ED33
            4C34AEED850313EB16FA695F2A9C48C846E331F19036882DD8DCB913DAD6AC29
            AA5BC80DEBF8E34FD878EE9C11F739DB85F66CDB26388E02DE2642434791C029
            1296919383FB7F588FBDFC8C2FB613B8BEEBDD699322A676E19B483D58ADDC47
            CA5B0FE0FC71D31E22590A6FC0DD54A20893701BB596D7EE2A4E19F1F2F1D6F8
            222D3EC1E45E55F15617F7A3D0AA434D1BF22157EA18B8AB6A556CE786BA1C3F
            3018BEFCF2AF636311BA759B5391FE901048683FD2DB8110C960470650F98670
            88DEBBB7B7EEE5F54B5256569B7E3CC9F767F23C6D46EC02D61F0EC0F68C5011
            B1CE097A5987367DE6C614BCBCF822BFF28A97B78E19FBC554C909D6951B7048
            59F6446DE43D3C761F4E4EAED6EDE75F10CD5FE6A4486362D4F5B000FFEE571D
            C31EE65733296099B364F0D571F85717B1706BAAB3DBA13F56A70E163FF800AA
            7A7B3B7CCE8A7C34E9BF6D1B64F0D8FD1BD8D6CEC6A5EAB32BBB585095109176
            853360368DDD04494540C34A559E49C9CE7ADBD8C0D22F329D4920D18330248A
            753FA6B19EE002814ACCEF6F51AFDCECBD27B36A5057121C500BEF8C780A2FBC
            F31909D5958F8910FF19EB2FA12E0B9AB4B1D13DD5AA8FDB9F9CD42DD3FE139E
            C5A261F6A4E198346305624EC925184DE9D0C407233B55C6FDB79543C572169C
            4FC9C10F073310F67D32A2CE6733C226219DDBA05EEDEAF8F797EB6C0EA6F285
            7A749326E85EB72EEA5628AFC8FA9D3FD37E762C0AABE3E3E168A1EDABD33DAC
            22BF0931B3C903243182AA1FE12C463DE988B35F7476527DF22FCFBA6BE9684F
            B88A4E479EBAF5EA54C78685E3D128C81FD3BF88C06B1FCEE7532EA18CCE15C3
            61AAEF61B160DABBCFE1A5015D70E4C429741A3C1EA7CE25E6D6B26B7CFBE1F7
            0FBBE1943DDCA61922668FE167464F0C78FD132C8DD8EA546A538D0B1A0DB079
            557A8937B72BB5ED84E37BA0E8824624620180FB097792C693BCCF8030C24A88
            9463DD0FA9BC4C7811F98A74AA4BFBBB31E78311A853D318F040C4A6DD18366E
            16E2CF5ECCB79EE10CE0A8993571181EE7390CDF99844B1832E6537CF7F3EF86
            2BDFDCCBD303230775C587A3FBC3DBCB53C55839314E99B71AE3A72F43FA954C
            E573936C63BF9F01708C506210AD0C7B22BE6E246308EDF684312285A8C3B457
            F12433989F21F29386ACFB120BE42ED5672EE743CD6A55D0E9813B31B46F67B4
            BFF70EBAF34AC6952CCC5DF123BE8ED8825DFB8F2333EBAA0A2AE7ED85D6CD1B
            20B45B5B3CD7EB1FF029E7ADFCAEC9A6DF0E60F6D2F5D8B06D1F12122FAB622E
            3EA85FAF16BA77B8072F0E780C0D02EB28BF6B72FA7C22662CFA1EAB37ECC0E1
            A878E7292589B19BD8E7B9E07D2674C221AA730E2BAF124232C2EDEE3F7892BB
            EC7A5133DF492FF76F3E62D0A3DBAB56A958D43A2A2E3B274791200DAC41F23D
            65955025454B129353919E9189AA557CE15BDEA76895EC517FD59FB7158740E8
            87C383E0A147DBDB562AB23202FFE46D2A23B094105899ED6C47D896332AF949
            9B160D6F797BE853B3F22B2B093E4FBE7DB46B7D3B2A57E44ECCDEA0EB31023D
            B8B8ECE1F59A13A55E5A360DC6EEF08FF9F702B26401D783C0EA243081CCD9AE
            48A5348BACF049BBBF846F05DB6AFD7710B88F045A89C2C49701DC2732B54BAD
            5B6F83974FEEE323EEF4CB49483C1B2FAA0DDC7DFBD76F020B1F379B236F9A74
            FE0C52932EAA02BF4A1551A390BFFFB3F227D913A74EAB780F6E9192FF5E0275
            D9E4A5A9D6149C54E2A88D60F1438492B6218310FAD6C7A6BF164DBE7016D35E
            7C12E762A3548C6C849F18FE0E1E1D3452D90525CBA7BE8B8D4B67ABE25E1D1F
            C68B7D9E527A41496A7A06BABFFAA62A2E0D040A79EBD8DAB68492077B0C44BF
            B7C35CC83B87692342702EEEB88A91A4879037F81551DDE2462650C8930F0DED
            0C066CE4C9C8B3182E5CBE781E5347F4E4C83BA67C6AE40D1B83478B409E54B8
            510914F24C232FBFC75608583C7934B6ACFA52543EE91AD4C82BE4B1B505DBD2
            1B914021CF34E755AD1DB06A52F8EE10195DB66EE7A66B667D84EFE64FB59177
            0D23CF38C38D46601EF2D8D1D953361C79BF7CC56A8EE535E5D205FCB66E1902
            9BB644FD3BEFC5AE1FBE41E5EA35D1B44D07865F9BDC48040A79A6C796547CCE
            2F394367EE3C5FDB9AA3D9F60E747EF2D29388DCB5051E9E9E786FD976D4F00F
            A4B77872A31028E499160CD221E40D636E2581759C09FC6870479C8CDCCF95D8
            82B14B7E41EDA0460C2B9EDC08047249D55C471E3766BA90A70B2DAE049E898E
            C44F4B66A2C15D0FA04D97DE12526C947602EB70F65FC6DE3F441822236F280D
            451E73B81228BEFF144A3981D84122EE250C318D3CC379BD086CDFAA25423AB4
            43155F5F04D7F5372E6FCA4BD89B88A96D79469E517ABD0834AE27F96BFDFBE0
            89F68E17207129945402853C99F3ACAA952EC9DF4160E736AD3166C820979600
            2591C0D9DCAA08798E39CFB5D5D78BC00A3E3EA8EC5B017EFCC3A13706F543FD
            007FD7A694380265E499168C3C2DA6E37A1178237E8D217D285B85F9881ABF0B
            57E7B62581AC6804A548DF03CB082C239063C545EC23C8C59B6B8670A485DBCD
            3FDC10F81663B208B7E2774B40E54EFD874F701B54CCC2BD9B22706CCF7655BB
            14CE81AADD2526290D0456E0C89439907989E1CDD190D240A034B60B497C8E8A
            2751A05CAFFFFA69FFD1381C8F3BABDA515A08548D2D2CB95EFF7BDB6B1FCCC7
            B485F2258DFF74A163C9FF55AE30DE1CE53703811EECADFCD81DCD3C9310A9C1
            2480E8C0C7F47F988B447215EE2BCAB5E07AFD078C61735661D19ACDAA699DDA
            DC833E8F74547A4149C6954C8CFC789A2A963F19DEBC6412CAFB9453B6CB7FC0
            388ACE8D443C71811091C0602A473512B492CA93C45E12D49A7933FAB6302F91
            0B04DBF577493AF969CB8B1F243FBB983727560A812C50FF0387CE807A74F666
            C054E665928701FD55BABE253F27988BA49340BC4EC7685AE124F045E6B56853
            4713EA6592CBC011F2D393E639F2F319F31EB4C38440EA65525C06CA082C2E73
            F67A6504DA89286E5646607199B3D7FB7F55BE00E671E27A0E0000000049454E
            44AE426082}
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 22.677180000000000000
        Top = 170.078850000000000000
        Width = 1171.654300000000000000
        object Memo5: TfrxMemoView
          Width = 37.086580000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = 15790320
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'No')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 37.086580000000000000
          Width = 415.921677820000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = 15790320
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Supplier')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 453.008257820000000000
          Width = 415.508127210000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = 15790320
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Data Sepatu')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 868.516385020000000000
          Width = 115.392170960000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = 15790320
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Harga Beli')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 983.908555980000000000
          Width = 81.918440240000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = 15790320
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Jumlah Beli')
          ParentFont = False
        end
        object Memo60: TfrxMemoView
          Left = 1065.827460000000000000
          Width = 104.595620240000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = 15790320
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Total Harga')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 170.078850000000000000
        Top = 253.228510000000000000
        Width = 1171.654300000000000000
        DataSet = frxdbdtst_detailpembelian
        DataSetName = 'DetailPembelian'
        RowCount = 0
        object Memo11: TfrxMemoView
          Left = 187.952690000000000000
          Width = 265.055567820000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'no_faktur_pembelian'
          DataSet = frxdbdtst1
          DataSetName = 'DataPembelian'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop]
          Memo.UTF8 = (
            '[DataPembelian."no_faktur_pembelian"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 188.976500000000000000
          Top = 18.897650000000000000
          Width = 265.055567820000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'tgl_pembelian'
          DataSet = frxdbdtst1
          DataSetName = 'DataPembelian'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          Memo.UTF8 = (
            '[DataPembelian."tgl_pembelian"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 188.976500000000000000
          Top = 37.795300000000000000
          Width = 265.055567820000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'id_supplier'
          DataSet = frxdbdtst1
          DataSetName = 'DataPembelian'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight]
          Memo.UTF8 = (
            '[DataPembelian."id_supplier"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 188.976500000000000000
          Top = 56.692950000000000000
          Width = 265.055567820000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'nama_supplier'
          DataSet = frxdbdtst1
          DataSetName = 'DataPembelian'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight]
          Memo.UTF8 = (
            '[DataPembelian."nama_supplier"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Align = baLeft
          Width = 37.795300000000000000
          Height = 170.078850000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[Line#]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 37.795300000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          Memo.UTF8 = (
            '    No.Faktur ')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 143.622140000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 37.795300000000000000
          Top = 18.897650000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8 = (
            '    Tanggal')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 143.622140000000000000
          Top = 18.897650000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 37.795300000000000000
          Top = 37.795300000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '    ID ')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 143.622140000000000000
          Top = 37.795300000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 37.795300000000000000
          Top = 56.692950000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '    Nama')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 143.622140000000000000
          Top = 56.692950000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 37.795300000000000000
          Top = 75.590600000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '    Alamat')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 143.622140000000000000
          Top = 75.590600000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 188.976500000000000000
          Top = 75.590600000000000000
          Width = 265.055567820000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'alamat_supplier'
          DataSet = frxdbdtst1
          DataSetName = 'DataPembelian'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight]
          Memo.UTF8 = (
            '[DataPembelian."alamat_supplier"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 603.700990000000000000
          Width = 265.055567820000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'id_detail_sepatu'
          DataSet = frxdbdtst_detailpembelian
          DataSetName = 'DetailPembelian'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          Memo.UTF8 = (
            '[DetailPembelian."id_detail_sepatu"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 453.543600000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          Memo.UTF8 = (
            '    ID Detail')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 559.370440000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 603.700990000000000000
          Top = 37.795300000000000000
          Width = 265.055567820000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'nama_sepatu'
          DataSet = frxdbdtst_detailpembelian
          DataSetName = 'DetailPembelian'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[DetailPembelian."nama_sepatu"]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 453.543600000000000000
          Top = 37.795300000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '    Nama')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 559.370440000000000000
          Top = 37.795300000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 603.700990000000000000
          Top = 75.590600000000000000
          Width = 265.055567820000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'brand'
          DataSet = frxdbdtst_detailpembelian
          DataSetName = 'DetailPembelian'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[DetailPembelian."brand"]')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 453.543600000000000000
          Top = 75.590600000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '    Brand')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 559.370440000000000000
          Top = 75.590600000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Left = 868.268090000000000000
          Width = 113.874367820000000000
          Height = 170.078850000000000000
          ShowHint = False
          DataField = 'harga_beli'
          DataSet = frxdbdtst_detailpembelian
          DataSetName = 'DetailPembelian'
          DisplayFormat.FormatStr = '%2.0m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[DetailPembelian."harga_beli"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo35: TfrxMemoView
          Left = 982.677800000000000000
          Width = 83.638127820000000000
          Height = 170.078850000000000000
          ShowHint = False
          DataField = 'jumlah_sepatu'
          DataSet = frxdbdtst_detailpembelian
          DataSetName = 'DetailPembelian'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[DetailPembelian."jumlah_sepatu"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo39: TfrxMemoView
          Left = 37.795300000000000000
          Top = 94.488250000000000000
          Width = 105.826840000000000000
          Height = 75.590600000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8 = (
            '    No.Telepon')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          Left = 143.622140000000000000
          Top = 94.488250000000000000
          Width = 45.354360000000000000
          Height = 75.590600000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          Left = 188.976500000000000000
          Top = 94.488250000000000000
          Width = 265.055567820000000000
          Height = 75.590600000000000000
          ShowHint = False
          DataField = 'tlp_supplier'
          DataSet = frxdbdtst1
          DataSetName = 'DataPembelian'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          Memo.UTF8 = (
            '[DataPembelian."tlp_supplier"]')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          Left = 603.700990000000000000
          Top = 18.897650000000000000
          Width = 265.055567820000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'id_sepatu'
          DataSet = frxdbdtst_detailpembelian
          DataSetName = 'DetailPembelian'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[DetailPembelian."id_sepatu"]')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          Left = 453.543600000000000000
          Top = 18.897650000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '    ID Sepatu')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          Left = 559.370440000000000000
          Top = 18.897650000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          Left = 603.700990000000000000
          Top = 56.692950000000000000
          Width = 265.055567820000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'jenis_sepatu'
          DataSet = frxdbdtst_detailpembelian
          DataSetName = 'DetailPembelian'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[DetailPembelian."jenis_sepatu"]')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          Left = 453.543600000000000000
          Top = 56.692950000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '    Jenis')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          Left = 559.370440000000000000
          Top = 56.692950000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          Left = 603.700990000000000000
          Top = 94.488250000000000000
          Width = 265.055567820000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'varian'
          DataSet = frxdbdtst_detailpembelian
          DataSetName = 'DetailPembelian'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[DetailPembelian."varian"]')
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          Left = 453.543600000000000000
          Top = 94.488250000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '    Varian')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          Left = 559.370440000000000000
          Top = 94.488250000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          Left = 603.700990000000000000
          Top = 113.385900000000000000
          Width = 265.055567820000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'warna'
          DataSet = frxdbdtst_detailpembelian
          DataSetName = 'DetailPembelian'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[DetailPembelian."warna"]')
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          Left = 453.543600000000000000
          Top = 113.385900000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '    Warna')
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          Left = 559.370440000000000000
          Top = 113.385900000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Memo54: TfrxMemoView
          Left = 603.700990000000000000
          Top = 132.283550000000000000
          Width = 265.055567820000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'satuan'
          DataSet = frxdbdtst_detailpembelian
          DataSetName = 'DetailPembelian'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[DetailPembelian."satuan"]')
          ParentFont = False
        end
        object Memo55: TfrxMemoView
          Left = 453.543600000000000000
          Top = 132.283550000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '    Satuan')
          ParentFont = False
        end
        object Memo56: TfrxMemoView
          Left = 559.370440000000000000
          Top = 132.283550000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Memo57: TfrxMemoView
          Left = 603.700990000000000000
          Top = 151.181200000000000000
          Width = 265.055567820000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'status'
          DataSet = frxdbdtst_detailpembelian
          DataSetName = 'DetailPembelian'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Memo.UTF8 = (
            '[DetailPembelian."status"]')
          ParentFont = False
        end
        object Memo58: TfrxMemoView
          Left = 453.543600000000000000
          Top = 151.181200000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8 = (
            '    Status')
          ParentFont = False
        end
        object Memo59: TfrxMemoView
          Left = 559.370440000000000000
          Top = 151.181200000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Memo61: TfrxMemoView
          Left = 1065.827460000000000000
          Width = 106.315307820000000000
          Height = 170.078850000000000000
          ShowHint = False
          DataField = 'total_harga'
          DataSet = frxdbdtst_detailpembelian
          DataSetName = 'DetailPembelian'
          DisplayFormat.FormatStr = '%2.0m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[DetailPembelian."total_harga"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Footer1: TfrxFooter
        Height = 204.094620000000000000
        Top = 445.984540000000000000
        Width = 1171.654300000000000000
        object Memo36: TfrxMemoView
          Left = 7.559060000000000000
          Top = 79.370130000000000000
          Width = 415.748300000000000000
          Height = 113.385900000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Mengetahui'
            'Kepala Toko,'
            ''
            ''
            ''
            
              '................................................................' +
              '.'
            'Fahmi Triseptiyadi')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 45.354360000000000000
        Top = 710.551640000000000000
        Width = 1171.654300000000000000
        object Memo37: TfrxMemoView
          Align = baRight
          Left = 1114.961350000000000000
          Top = 18.897650000000000000
          Width = 56.692950000000000000
          Height = 22.677180000000000000
          ShowHint = False
          HAlign = haRight
          Memo.UTF8 = (
            'Page [Page#]')
        end
        object Memo38: TfrxMemoView
          Align = baLeft
          Top = 18.897650000000000000
          Width = 283.464750000000000000
          Height = 22.677180000000000000
          ShowHint = False
          DisplayFormat.FormatStr = 'hh:mm am/pm, mmmm dd, yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[Date]')
          ParentFont = False
        end
      end
    end
  end
  object frxdbdtst_detailpembelian: TfrxDBDataset
    UserName = 'DetailPembelian'
    CloseDataSource = False
    DataSet = ZQdetailpembelian
    BCDToCurrency = False
    Left = 576
    Top = 328
  end
  object ZQadmin: TZQuery
    Connection = Zcon_TokoSepatu
    Active = True
    SQL.Strings = (
      'select * from admin')
    Params = <>
    Left = 208
    Top = 776
    object strngfldZQadminusername: TStringField
      FieldName = 'username'
      Required = True
    end
    object strngfldZQadminpassword: TStringField
      FieldName = 'password'
      Required = True
    end
    object strngfldZQadminnama_user: TStringField
      FieldName = 'nama_user'
      Required = True
      Size = 50
    end
    object strngfldZQadminno_tlp_user: TStringField
      FieldName = 'no_tlp_user'
      Required = True
      Size = 13
    end
  end
  object ds_admin: TDataSource
    DataSet = ZQadmin
    Left = 320
    Top = 776
  end
end
