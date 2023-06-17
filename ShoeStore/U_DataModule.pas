unit U_DataModule;

interface

uses
  SysUtils, Classes, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZConnection, frxClass, frxDBSet, mxExport;

type
  TDataModuleTokoSepatu = class(TDataModule)
    Zcon_TokoSepatu: TZConnection;
    ZQpelanggan: TZQuery;
    ZQcommandSql: TZQuery;
    ds_pelanggan: TDataSource;
    ZQsupplier: TZQuery;
    ds_supplier: TDataSource;
    ZQdaftarsepatu: TZQuery;
    ds_daftarsepatu: TDataSource;
    ZQdetailsepatu: TZQuery;
    ds_detailsepatu: TDataSource;
    ZQpembelian: TZQuery;
    ds_pembelian: TDataSource;
    ds_tmpPembelian: TDataSource;
    ZQtmpPembelian: TZQuery;
    ZQtmpPembelianid_detail_sepatu: TStringField;
    intgrfldZQtmpPembelianharga_beli_sepatu: TIntegerField;
    intgrfldZQtmpPembelianjumlah_beli: TIntegerField;
    intgrfldZQtmpPembeliantotal_harga: TIntegerField;
    intgrfldZQtmpPembelianid_detail_sepatu_1: TIntegerField;
    ZQtmpPembelianid_sepatu: TStringField;
    ZQtmpPembeliansatuan: TStringField;
    ZQtmpPembelianvarian: TStringField;
    ZQtmpPembelianwarna: TStringField;
    ZQtmpPembelianid_sepatu_1: TStringField;
    ZQtmpPembeliannama_sepatu: TStringField;
    ZQtmpPembelianjenis_sepatu: TStringField;
    ZQtmpPembelianbrand: TStringField;
    ZQdetailpembelian: TZQuery;
    ds_detailpembelian: TDataSource;
    ZQstok: TZQuery;
    ds_stok: TDataSource;
    strngfldZQstokid_stok: TStringField;
    intgrfldZQstokid_detail_sepatu: TIntegerField;
    intgrfldZQstokharga_sepatu: TIntegerField;
    intgrfldZQstokjumlah_stok: TIntegerField;
    intgrfldZQstokid_detail_sepatu_1: TIntegerField;
    strngfldZQstokid_sepatu: TStringField;
    strngfldZQstoksatuan: TStringField;
    strngfldZQstokvarian: TStringField;
    strngfldZQstokwarna: TStringField;
    strngfldZQstokid_sepatu_1: TStringField;
    strngfldZQstoknama_sepatu: TStringField;
    strngfldZQstokjenis_sepatu: TStringField;
    strngfldZQstokbrand: TStringField;
    strngfldZQdetailpembelianno_faktur_pembelian: TStringField;
    dtfldZQdetailpembeliantgl_pembelian: TDateField;
    intgrfldZQdetailpembelianid_supplier: TIntegerField;
    strngfldZQdetailpembeliannama_supplier: TStringField;
    strngfldZQdetailpembelianalamat_supplier: TStringField;
    strngfldZQdetailpembeliantlp_supplier: TStringField;
    intgrfldZQdetailpembelianId_detail_pembelian: TIntegerField;
    intgrfldZQdetailpembelianid_detail_sepatu: TIntegerField;
    intgrfldZQdetailpembelianjumlah_sepatu: TIntegerField;
    intgrfldZQdetailpembelianharga_beli: TIntegerField;
    intgrfldZQdetailpembeliantotal_harga: TIntegerField;
    strngfldZQdetailpembelianstatus: TStringField;
    strngfldZQdetailpembelianid_sepatu: TStringField;
    strngfldZQdetailpembeliansatuan: TStringField;
    strngfldZQdetailpembelianvarian: TStringField;
    strngfldZQdetailpembelianwarna: TStringField;
    strngfldZQdetailpembeliannama_sepatu: TStringField;
    strngfldZQdetailpembelianjenis_sepatu: TStringField;
    strngfldZQdetailpembelianbrand: TStringField;
    frxdbdtst1: TfrxDBDataset;
    frxrprt1: TfrxReport;
    mxdtstxprt1: TmxDataSetExport;
    ZQpenjualan: TZQuery;
    ds_penjualan: TDataSource;
    ZQtmpPenjualan: TZQuery;
    ZQdetailPenjualan: TZQuery;
    ds_detailPenjualan: TDataSource;
    ds_tmpPenjualan: TDataSource;
    frxrprt_pelanggan: TfrxReport;
    frxdbdtstPelanggan: TfrxDBDataset;
    frxrprt_supplier: TfrxReport;
    frxdbdtst_supplier: TfrxDBDataset;
    frxrprt_datadaftarsepatu: TfrxReport;
    frxdbdtst_datadaftarsepatu: TfrxDBDataset;
    frxrprt_penjualan: TfrxReport;
    frxdbdtst_penjualan: TfrxDBDataset;
    frxrprt_stok: TfrxReport;
    frxdbdtst_stok: TfrxDBDataset;
    frxrprt_detailpembelian: TfrxReport;
    frxdbdtst_detailpembelian: TfrxDBDataset;
    ZQadmin: TZQuery;
    ds_admin: TDataSource;
    strngfldZQadminusername: TStringField;
    strngfldZQadminpassword: TStringField;
    strngfldZQadminnama_user: TStringField;
    strngfldZQadminno_tlp_user: TStringField;
    strngfldZQtmpPenjualanid_detail_sepatu: TStringField;
    intgrfldZQtmpPenjualanharga: TIntegerField;
    intgrfldZQtmpPenjualanjumlah: TIntegerField;
    intgrfldZQtmpPenjualantotal_harga: TIntegerField;
    intgrfldZQtmpPenjualanid_detail_sepatu_1: TIntegerField;
    strngfldZQtmpPenjualanid_sepatu: TStringField;
    strngfldZQtmpPenjualansatuan: TStringField;
    strngfldZQtmpPenjualanvarian: TStringField;
    strngfldZQtmpPenjualanwarna: TStringField;
    strngfldZQtmpPenjualanid_sepatu_1: TStringField;
    strngfldZQtmpPenjualannama_sepatu: TStringField;
    strngfldZQtmpPenjualanjenis_sepatu: TStringField;
    strngfldZQtmpPenjualanbrand: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModuleTokoSepatu: TDataModuleTokoSepatu;

implementation

{$R *.dfm}

end.
