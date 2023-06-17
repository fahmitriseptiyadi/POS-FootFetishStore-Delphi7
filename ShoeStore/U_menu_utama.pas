unit U_menu_utama;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, frxpngimage, ExtCtrls, ComCtrls, XPMan, Grids, DBGrids,
  Buttons, DBCtrls, SMDBGrid, jpeg;

type
  TFormMenuUtama = class(TForm)
    PC_menu_atas: TPageControl;
    ts_login: TTabSheet;
    ts_menu: TTabSheet;
    IM_login: TImage;
    lbl1: TLabel;
    E_username: TEdit;
    lbl2: TLabel;
    E_pass: TEdit;
    lbl3: TLabel;
    xpmnfst1: TXPManifest;
    img_pelanggan: TImage;
    lbl5: TLabel;
    Image1: TImage;
    shp1: TShape;
    Label11: TLabel;
    Label13: TLabel;
    L_37: TLabel;
    L_38: TLabel;
    L_39: TLabel;
    L_69: TLabel;
    L_70: TLabel;
    L_71: TLabel;
    pgcPC_MenuKonten: TPageControl;
    ts_beranda: TTabSheet;
    ts_datapelanggan: TTabSheet;
    L_lbl6: TLabel;
    L_lbl7: TLabel;
    L_lbl8: TLabel;
    L_lbl9: TLabel;
    L_lbl10: TLabel;
    E_nama_pelanggan: TEdit;
    E_telepon: TEdit;
    cbb_jenis_kelamin_pelanggan: TComboBox;
    mmo_alamat_pelanggan: TMemo;
    dbgrd1: TDBGrid;
    btn_btn1: TButton;
    btn_Simpan: TButton;
    btn_Hapus: TButton;
    grp1: TGroupBox;
    L_lbl11: TLabel;
    E_cari_pelanggan: TEdit;
    ts_datasupplier: TTabSheet;
    L_20: TLabel;
    L_21: TLabel;
    L_22: TLabel;
    E_NamaSupplier: TEdit;
    E_teleponSupplier: TEdit;
    mmo_alamatSuplier: TMemo;
    dbgrd4: TDBGrid;
    btn_EditSupplier: TButton;
    btn_btn2SimpanSupplier: TButton;
    btn_HapusSupplier: TButton;
    grp5: TGroupBox;
    L_23: TLabel;
    E_cari_namaSupplier: TEdit;
    ts_daftarsepatu: TTabSheet;
    L_24: TLabel;
    L_25: TLabel;
    L_26: TLabel;
    shp5: TShape;
    grp6: TGroupBox;
    L_28: TLabel;
    E_cari_daftarSepatu: TEdit;
    btn_HapusdaftarBarang: TButton;
    btn_SimpandaftarBarang: TButton;
    btn_EditdaftarBarang: TButton;
    dbgrd5: TDBGrid;
    E_brand: TEdit;
    E_namaSepatu: TEdit;
    cbb_jenis_sepatu: TComboBox;
    btn_tambahdetailsepatu: TBitBtn;
    dbgrd2: TDBGrid;
    btn__editdetailsepatu: TButton;
    btn__hapusdetailsepatu: TButton;
    ts_pembelian: TTabSheet;
    L_2: TLabel;
    L_3: TLabel;
    shp6: TShape;
    L_31: TLabel;
    shp7: TShape;
    grp2: TGroupBox;
    L_11: TLabel;
    L_12: TLabel;
    L_IdSupplier: TLabel;
    L_13: TLabel;
    L_14: TLabel;
    L_NamaSupplier: TLabel;
    L_15: TLabel;
    L_AlamatSupplier: TLabel;
    L_16: TLabel;
    L_9: TLabel;
    L_NoTlpSupplier: TLabel;
    L_10: TLabel;
    grp3: TGroupBox;
    L_4: TLabel;
    dblklst_DaftarSupplier: TDBLookupListBox;
    E_CariNamaSupplier: TEdit;
    E_NoFakturPembelian: TEdit;
    dtp_TanggalPembelian: TDateTimePicker;
    grp4: TGroupBox;
    L_6: TLabel;
    L_7: TLabel;
    L_IdSepatu: TLabel;
    L_17: TLabel;
    L_18: TLabel;
    L_NamaSepatu: TLabel;
    L_30: TLabel;
    L_JenisSepatu: TLabel;
    L_32: TLabel;
    L_33: TLabel;
    L_BrandSepatu: TLabel;
    L_35: TLabel;
    L_40: TLabel;
    L_41: TLabel;
    L_SatuanSepatu: TLabel;
    L_VarianSepatu: TLabel;
    L_44: TLabel;
    L_45: TLabel;
    L_WarnaSepatu: TLabel;
    L_47: TLabel;
    L_48: TLabel;
    grp7: TGroupBox;
    L_36: TLabel;
    dblklst_DaftarSepatu: TDBLookupListBox;
    E_CariDftSepatu: TEdit;
    grp8: TGroupBox;
    L_8: TLabel;
    L_29: TLabel;
    E_HargaBeliSepatu: TEdit;
    E_JumlahBeliSepatu: TEdit;
    btn_TambahDaftarBeli: TButton;
    dbgrd3: TDBGrid;
    btn_HapusListPembelian: TButton;
    btn_BersihkanDaftar: TButton;
    btn_SimpanDataBeli: TButton;
    btn_DataPembeli: TButton;
    btn_TambahFakturBaru: TButton;
    grp9: TGroupBox;
    L_34: TLabel;
    L_42: TLabel;
    L_IdSepatuStok: TLabel;
    L_46: TLabel;
    L_49: TLabel;
    L_NamaSepatuStok: TLabel;
    L_51: TLabel;
    L_52: TLabel;
    L_JenisSepatuStok: TLabel;
    L_54: TLabel;
    L_55: TLabel;
    L_BrandSepatuStok: TLabel;
    L_57: TLabel;
    L_58: TLabel;
    L_SatuanSepatuStok: TLabel;
    L_60: TLabel;
    L_61: TLabel;
    L_VarianSepatuStok: TLabel;
    L_63: TLabel;
    L_64: TLabel;
    L_WarnaSepatuStok: TLabel;
    L_66: TLabel;
    L_HargaJualStok: TLabel;
    L_68: TLabel;
    L_72: TLabel;
    L_JumlahStok: TLabel;
    L_74: TLabel;
    dbgrd6: TDBGrid;
    btn_SetHarga: TButton;
    btn_KonfirmasiStok: TButton;
    E_CariStok: TEdit;
    ts_penjualan: TTabSheet;
    btn_BersihDaftarFP: TButton;
    btn_2: TButton;
    btn_DataPenjualan: TButton;
    btn_SimpanDataBlj: TButton;
    btn_HapusListFP: TButton;
    grp10: TGroupBox;
    L_43: TLabel;
    L_50: TLabel;
    L_IdSepatuFP: TLabel;
    L_56: TLabel;
    L_59: TLabel;
    L_NamaSepatuFP: TLabel;
    L_65: TLabel;
    L_JenisSepatuFP: TLabel;
    L_73: TLabel;
    L_75: TLabel;
    L_BrandFP: TLabel;
    L_77: TLabel;
    L_78: TLabel;
    L_79: TLabel;
    L_SatuanFP: TLabel;
    L_VarianFP: TLabel;
    L_82: TLabel;
    L_83: TLabel;
    L_WanaFP: TLabel;
    L_85: TLabel;
    L_86: TLabel;
    grp11: TGroupBox;
    L_87: TLabel;
    dblklst_DaftarBrgFP: TDBLookupListBox;
    E_CariSptFP: TEdit;
    grp12: TGroupBox;
    L_88: TLabel;
    L_89: TLabel;
    E_JumlahSepatuFP: TEdit;
    btn_TambahDaftarBlj: TButton;
    dtp_1: TDateTimePicker;
    E_FakturPenjulan: TEdit;
    grp13: TGroupBox;
    L_90: TLabel;
    L_91: TLabel;
    L_IdPelangganFP: TLabel;
    L_93: TLabel;
    L_94: TLabel;
    L_NamaPlgFP: TLabel;
    L_96: TLabel;
    L_AlamatFP: TLabel;
    L_98: TLabel;
    L_99: TLabel;
    L_NoTlpFP: TLabel;
    L_101: TLabel;
    grp14: TGroupBox;
    L_102: TLabel;
    dblklst_NamaPlg: TDBLookupListBox;
    E_CariPlgFP: TEdit;
    shp8: TShape;
    L_103: TLabel;
    shp9: TShape;
    L_104: TLabel;
    L_105: TLabel;
    L_107: TLabel;
    L_108: TLabel;
    L_109: TLabel;
    L_110: TLabel;
    L_111: TLabel;
    L_112: TLabel;
    L_113: TLabel;
    L_114: TLabel;
    L_JenisKelFP: TLabel;
    L_HargaJualFP: TLabel;
    L_117: TLabel;
    img_RefreshStok: TImage;
    dbgrd7: TDBGrid;
    ts_Laporan: TTabSheet;
    grp16: TGroupBox;
    img_10: TImage;
    L_100: TLabel;
    img_5: TImage;
    L_80: TLabel;
    btn_CetakTransaksi: TButton;
    grp15: TGroupBox;
    img_1: TImage;
    L_53: TLabel;
    img_2: TImage;
    L_62: TLabel;
    img_3: TImage;
    L_67: TLabel;
    img_4: TImage;
    L_76: TLabel;
    img_6: TImage;
    L_84: TLabel;
    img_supplier: TImage;
    L_92: TLabel;
    img_daftarbarang: TImage;
    L_95: TLabel;
    img_9: TImage;
    L_97: TLabel;
    img_stok: TImage;
    L_115: TLabel;
    img_pembelian: TImage;
    L_116: TLabel;
    img_penjualan: TImage;
    L_118: TLabel;
    img_laporan: TImage;
    L_119: TLabel;
    ts_stok: TTabSheet;
    img_logout: TImage;
    shp11: TShape;
    L_19: TLabel;
    shp2: TShape;
    L_27: TLabel;
    shp3: TShape;
    L_121: TLabel;
    shp12: TShape;
    L_1: TLabel;
    shp4: TShape;
    L_122: TLabel;
    shp13: TShape;
    L_123: TLabel;
    shp14: TShape;
    L_5: TLabel;
    shp10: TShape;
    L_81: TLabel;
    shp15: TShape;
    L_106: TLabel;
    shp17: TShape;
    shp18: TShape;
    shp19: TShape;
    shp20: TShape;
    shp21: TShape;
    shp22: TShape;
    shp23: TShape;
    shp24: TShape;
    shp25: TShape;
    L_124: TLabel;
    L_125: TLabel;
    img_7: TImage;
    xpmnfst2: TXPManifest;
    procedure btn_SimpanClick(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure btn_btn1Click(Sender: TObject);
    procedure btn_HapusClick(Sender: TObject);
    procedure E_cari_pelangganChange(Sender: TObject);
    procedure btn_btn2SimpanSupplierClick(Sender: TObject);
    procedure btn_EditSupplierClick(Sender: TObject);
    procedure dbgrd4CellClick(Column: TColumn);
    procedure btn_HapusSupplierClick(Sender: TObject);
    procedure E_cari_namaSupplierChange(Sender: TObject);
    procedure btn_SimpandaftarBarangClick(Sender: TObject);
    procedure dbgrd5CellClick(Column: TColumn);
    procedure btn_EditdaftarBarangClick(Sender: TObject);
    procedure btn_HapusdaftarBarangClick(Sender: TObject);
    procedure E_cari_daftarSepatuChange(Sender: TObject);
    procedure btn_tambahdetailsepatuClick(Sender: TObject);
    procedure btn__editdetailsepatuClick(Sender: TObject);
    procedure btn__hapusdetailsepatuClick(Sender: TObject);
    procedure dblklst_NamaSupplierDblClick(Sender: TObject);
    procedure dblklst_DaftarSupplierDblClick(Sender: TObject);
    procedure E_CariNamaSupplierChange(Sender: TObject);
    procedure dblklst_DaftarSepatuDblClick(Sender: TObject);
    procedure btn_TambahFakturBaruClick(Sender: TObject);
    procedure E_HargaBeliSepatuChange(Sender: TObject);
    procedure E_CariDftSepatuChange(Sender: TObject);
    procedure btn_TambahDaftarBeliClick(Sender: TObject);
    procedure btn_HapusListPembelianClick(Sender: TObject);
    procedure btn_BersihkanDaftarClick(Sender: TObject);
    procedure btn_SimpanDataBeliClick(Sender: TObject);
    procedure btn_DataPembeliClick(Sender: TObject);
    procedure btn_KonfirmasiStokClick(Sender: TObject);
    procedure dbgrd6CellClick(Column: TColumn);
    procedure btn_SetHargaClick(Sender: TObject);
    procedure E_CariStokChange(Sender: TObject);
    procedure dblklst_NamaPlgDblClick(Sender: TObject);
    procedure E_CariPlgFPChange(Sender: TObject);
    procedure dblklst_DaftarBrgFPDblClick(Sender: TObject);
    procedure img_RefreshStokClick(Sender: TObject);
    procedure btn_TambahDaftarBljClick(Sender: TObject);
    procedure btn_HapusListFPClick(Sender: TObject);
    procedure btn_BersihDaftarFPClick(Sender: TObject);
    procedure btn_SimpanDataBljClick(Sender: TObject);
    procedure btn_2Click(Sender: TObject);
    procedure btn_DataPenjualanClick(Sender: TObject);
    procedure img_DataPelanganClick(Sender: TObject);
    procedure img_2Click(Sender: TObject);
    procedure img_3Click(Sender: TObject);
    procedure img_4Click(Sender: TObject);
    procedure img_10Click(Sender: TObject);
    procedure btn_CetakTransaksiClick(Sender: TObject);
    procedure img_1Click(Sender: TObject);
    procedure img_pelangganClick(Sender: TObject);
    procedure img_supplierClick(Sender: TObject);
    procedure img_daftarbarangClick(Sender: TObject);
    procedure img_stokClick(Sender: TObject);
    procedure img_pembelianClick(Sender: TObject);
    procedure img_penjualanClick(Sender: TObject);
    procedure img_laporanClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure IM_loginClick(Sender: TObject);
    procedure img_logoutClick(Sender: TObject);
    procedure IM_registerClick(Sender: TObject);
    procedure L_125Click(Sender: TObject);

  private
    { Private declarations }
  public
    procedure ribuan(edit: TEdit);
    function hapusribuan(edit: TEdit): string;
    { Public declarations }
  end;

var
  FormMenuUtama: TFormMenuUtama;

implementation

uses
  U_DataModule, U_PopUp, U_FormDataPembelian, U_SetHarga,
  U_FormDataPenjualan, U_Registrasi;

{$R *.dfm}

function TFormMenuUtama.hapusribuan(edit: TEdit): string;
var
  hasil: string;
begin
  hasil := edit.Text;
  hasil := StringReplace(hasil, ',', '', [rfReplaceAll, rfIgnoreCase]);

  hasil := StringReplace(hasil, '.', '', [rfReplaceAll, rfIgnoreCase]);
  hapusribuan := hasil;
end;

procedure TFormMenuUtama.ribuan(edit: TEdit);
var
  sRupiah: string;
  iRupiah: Currency;
begin
  sRupiah := edit.Text;
  sRupiah := StringReplace(sRupiah, ',', '', [rfReplaceAll, rfIgnoreCase]);

  sRupiah := StringReplace(sRupiah, '.', '', [rfReplaceAll, rfIgnoreCase]);

  iRupiah := StrTOCurrDef(sRupiah, 0);

  edit.Text := FormatCurr('#,###', iRupiah);
  edit.SelStart := length(edit.Text);
end;

procedure TFormMenuUtama.btn_SimpanClick(Sender: TObject);
begin
  if E_nama_pelanggan.Text = '' then
    MessageDlg('Anda Belum Mengisi Nama', mtWarning, [mbOK], 0)
  else if cbb_jenis_kelamin_pelanggan.Text = '' then
    MessageDlg('Anda Belum Mengisi Jenis Kelamin', mtWarning, [mbOK], 0)
  else if mmo_alamat_pelanggan.Text = '' then
    MessageDlg('Anda Belum Mengisi Alamat', mtWarning, [mbOK], 0)
  else if E_telepon.Text = '' then
    MessageDlg('Anda Belum Mengisi No Telepon', mtWarning, [mbOK], 0)
  else
  begin
    with DataModuleTokoSepatu.ZQcommandSql do
    begin
      SQL.Clear;
      SQL.Add('select  * from pelanggan');
      Active := True;

      Append;
      FieldByName('nama_pelanggan').AsString := E_nama_pelanggan.Text;
      FieldByName('jenis_kelamin').AsString := cbb_jenis_kelamin_pelanggan.Text;
      FieldByName('alamat').AsString := mmo_alamat_pelanggan.Text;
      FieldByName('tlp').AsString := E_telepon.Text;

      Post;
      MessageDlg('Data Pelanggan Berhasil Disimpan !', mtInformation, [mbOK],
        0);
      //      refresh data untuk DataModuleTokoSepatu yang baru ditambahkan
      DataModuleTokoSepatu.ZQpelanggan.Refresh;
    end;
  end;

end;

procedure TFormMenuUtama.dbgrd1CellClick(Column: TColumn);
begin
  with DataModuleTokoSepatu.ZQpelanggan do
  begin
    E_nama_pelanggan.Text := fieldByName('nama_pelanggan').AsString;
    cbb_jenis_kelamin_pelanggan.Text := fieldByName('jenis_kelamin').AsString;
    mmo_alamat_pelanggan.Text := fieldByName('alamat').AsString;
    E_telepon.Text := fieldByName('tlp').AsString;
  end;

end;

procedure TFormMenuUtama.btn_btn1Click(Sender: TObject);
var
  id_pelanggan: string;
begin

  id_pelanggan :=
    DataModuleTokoSepatu.ZQpelanggan.fieldByName('id_pelanggan').AsString;
  if (E_nama_pelanggan.Text = '') or (id_pelanggan = '') then
    MessageDlg('Pilih Data Untuk Diubah Terlebih Dahulu', mtWarning, [mbOK], 0)
  else
  begin

    with DataModuleTokoSepatu.ZQcommandSql do
    begin
      SQL.Clear;
      SQL.Add('select * from pelanggan Where id_pelanggan = "' + id_pelanggan +
        '"');
      Active := true;

      Edit;
      FieldByName('nama_pelanggan').AsString := E_nama_pelanggan.Text;
      FieldByName('jenis_kelamin').AsString := cbb_jenis_kelamin_pelanggan.Text;
      FieldByName('alamat').AsString := mmo_alamat_pelanggan.Text;
      FieldByName('tlp').AsString := E_telepon.Text;

      Post;
      MessageDlg('Data Pelanggan Berhasil Diubah!', mtInformation, [mbOK], 0);
      //      refresh data untuk DataModuleTokoSepatu yang baru ditambahkan
      DataModuleTokoSepatu.ZQpelanggan.Refresh;

    end;

  end;
end;

procedure TFormMenuUtama.btn_HapusClick(Sender: TObject);
var
  id_pelanggan: string;
begin
  id_pelanggan :=
    DataModuleTokoSepatu.ZQpelanggan.fieldByName('id_pelanggan').AsString;
  if (E_nama_pelanggan.Text = '') or (id_pelanggan = '') then
    MessageDlg('Pilih Data Untuk Dihapus Terlebih Dahulu', mtWarning, [mbOK], 0)
  else
  begin
    if MessageDlg('Anda Yakin Ingin Menghapus Data?', mtConfirmation, [mbOK,
      mbCancel], 0) = mrOK then
    begin
      with DataModuleTokoSepatu.ZQcommandSql do
      begin
        SQL.Clear;
        SQL.Add('select * from pelanggan Where id_pelanggan = "' + id_pelanggan
          +
          '"');
        Active := true;
        Delete;

        MessageDlg('Data Pelanggan Berhasil Dihapus!', mtInformation, [mbOK],
          0);
        //      refresh data untuk DataModuleTokoSepatu yang baru ditambahkan
        DataModuleTokoSepatu.ZQpelanggan.Refresh;

      end;
    end;
  end;
end;

procedure TFormMenuUtama.E_cari_pelangganChange(Sender: TObject);
begin
  with DataModuleTokoSepatu.ZQpelanggan do
  begin
    SQL.Text := 'select * from pelanggan WHERE nama_pelanggan  like  "%' +
      E_cari_pelanggan.Text + '%"';
    Active := True;

  end;

end;

procedure TFormMenuUtama.btn_btn2SimpanSupplierClick(Sender: TObject);
begin
  if E_NamaSupplier.Text = '' then
    MessageDlg('Anda Belum Mengisi Nama Supplier', mtWarning, [mbOK], 0)
  else if mmo_alamatSuplier.Text = '' then
    MessageDlg('Anda Belum Mengisi Alamat Supplier', mtWarning, [mbOK], 0)
  else if E_teleponSupplier.Text = '' then
    MessageDlg('Anda Belum Mengisi No Telepon Supplier', mtWarning, [mbOK], 0)
  else
  begin
    with DataModuleTokoSepatu.ZQcommandSql do
    begin
      SQL.Clear;
      SQL.Add('select  * from supplier');
      Active := True;

      Append;
      FieldByName('nama_supplier').AsString := E_NamaSupplier.Text;
      FieldByName('alamat_supplier').AsString := mmo_alamatSuplier.Text;
      FieldByName('tlp_supplier').AsString := E_teleponSupplier.Text;

      Post;
      MessageDlg('Data Supplier Berhasil Disimpan !', mtInformation, [mbOK], 0);
      //      refresh data untuk DataModuleTokoSepatu yang baru ditambahkan
      DataModuleTokoSepatu.ZQsupplier.Refresh;
    end;
  end;

end;

procedure TFormMenuUtama.btn_EditSupplierClick(Sender: TObject);
var
  id_supplier: string;
begin

  id_supplier :=
    DataModuleTokoSepatu.ZQsupplier.fieldByName('id_supplier').AsString;
  if (E_NamaSupplier.Text = '') or (id_supplier = '') then
    MessageDlg('Pilih Data Untuk Diubah Terlebih Dahulu', mtWarning, [mbOK], 0)
  else
  begin
    with DataModuleTokoSepatu.ZQcommandSql do
    begin
      SQL.Clear;
      SQL.Add('select * from supplier Where id_supplier = "' + id_supplier +
        '"');
      Active := true;

      Edit;
      FieldByName('nama_supplier').AsString := E_NamaSupplier.Text;
      FieldByName('alamat_supplier').AsString := mmo_alamatSuplier.Text;
      FieldByName('tlp_supplier').AsString := E_teleponSupplier.Text;

      Post;
      MessageDlg('Data Supplier Berhasil Diubah!', mtInformation, [mbOK], 0);
      //      refresh data untuk DataModuleTokoSepatu yang baru ditambahkan
      DataModuleTokoSepatu.ZQsupplier.Refresh;

    end;

  end;
end;

procedure TFormMenuUtama.dbgrd4CellClick(Column: TColumn);
begin
  with DataModuleTokoSepatu.ZQsupplier do
  begin
    E_NamaSupplier.Text := fieldByName('nama_supplier').AsString;
    mmo_alamatSuplier.Text := fieldByName('alamat_supplier').AsString;
    E_teleponSupplier.Text := fieldByName('tlp_supplier').AsString;
  end;

end;

procedure TFormMenuUtama.btn_HapusSupplierClick(Sender: TObject);
var
  id_supplier: string;
begin
  id_supplier :=
    DataModuleTokoSepatu.ZQsupplier.fieldByName('id_supplier').AsString;
  if (E_NamaSupplier.Text = '') or (id_supplier = '') then
    MessageDlg('Pilih Data Untuk Dihapus Terlebih Dahulu', mtWarning, [mbOK], 0)
  else
  begin
    if MessageDlg('Anda Yakin Ingin Menghapus Data?', mtConfirmation, [mbOK,
      mbCancel], 0) = mrOK then
    begin
      with DataModuleTokoSepatu.ZQcommandSql do
      begin
        SQL.Clear;
        SQL.Add('select * from supplier Where id_supplier = "' + id_supplier +
          '"');
        Active := true;
        Delete;

        MessageDlg('Data Supplier Berhasil Dihapus!', mtInformation, [mbOK], 0);
        //      refresh data untuk DataModuleTokoSepatu yang baru ditambahkan
        DataModuleTokoSepatu.ZQsupplier.Refresh;

      end;
    end;
  end;
end;

procedure TFormMenuUtama.E_cari_namaSupplierChange(Sender: TObject);
begin
  with DataModuleTokoSepatu.ZQsupplier do
  begin
    SQL.Text := 'select * from supplier WHERE nama_supplier  like  "%' +
      E_cari_namaSupplier.Text + '%"';
    Active := True;

  end;

end;

procedure TFormMenuUtama.btn_SimpandaftarBarangClick(Sender: TObject);
var
  id_sepatu: string;
begin
  id_sepatu := 'SPT-' + FormatDateTime('hhmmss', now);
  if E_namaSepatu.Text = '' then
    MessageDlg('Anda Belum Mengisi Nama Sepatu', mtWarning, [mbOK], 0)
  else if cbb_jenis_sepatu.Text = '' then
    MessageDlg('Anda Belum Mengisi Jenis Sepatu', mtWarning, [mbOK], 0)
  else if E_brand.Text = '' then
    MessageDlg('Anda Belum Mengisi Brand', mtWarning, [mbOK], 0)
  else
  begin
    with DataModuleTokoSepatu.ZQcommandSql do
    begin
      SQL.Clear;
      SQL.Add('select * from daftar_sepatu');
      Active := True;

      Append;
      FieldByName('id_sepatu').AsString := id_sepatu;
      FieldByName('nama_sepatu').AsString := E_namaSepatu.Text;
      FieldByName('jenis_sepatu').AsString := cbb_jenis_sepatu.Text;
      FieldByName('brand').AsString := E_brand.Text;

      Post;
      MessageDlg('Data Sepatu Berhasil Disimpan !', mtInformation, [mbOK], 0);
      //      refresh data untuk DataModuleTokoSepatu yang baru ditambahkan
      DataModuleTokoSepatu.ZQdaftarsepatu.Refresh;
    end;
  end;

end;

procedure TFormMenuUtama.dbgrd5CellClick(Column: TColumn);
begin
  E_namaSepatu.Text :=
    DataModuleTokoSepatu.ZQdaftarsepatu.fieldByName('nama_sepatu').AsString;
  cbb_jenis_sepatu.Text :=
    DataModuleTokoSepatu.ZQdaftarsepatu.fieldByName('jenis_sepatu').AsString;
  E_brand.Text :=
    DataModuleTokoSepatu.ZQdaftarsepatu.fieldByName('Brand').AsString;

  with DataModuleTokoSepatu.ZQdetailsepatu do
  begin
    SQL.Text :=
      'SELECT`detail_sepatu`. *, `daftar_sepatu`. * FROM `tokosepatu`.`daftar_sepatu` INNER JOIN `tokosepatu`.`detail_sepatu`on(`daftar_sepatu`.`id_sepatu` = `detail_sepatu`.`id_sepatu`)' + 'WHERE detail_sepatu.id_sepatu Like  "'
      + DataModuleTokoSepatu.ZQdaftarsepatu.fieldByName('id_sepatu').AsString +
      '"';
    Active := True;
    dbgrd2.Refresh;
  end;

end;

procedure TFormMenuUtama.btn_EditdaftarBarangClick(Sender: TObject);
var
  id_sepatu: string;
begin

  id_sepatu :=
    DataModuleTokoSepatu.ZQdaftarsepatu.fieldByName('id_sepatu').AsString;
  if (E_namaSepatu.Text = '') or (id_sepatu = '') then
    MessageDlg('Pilih Data Untuk Diubah Terlebih Dahulu', mtWarning, [mbOK], 0)
  else
  begin
    with DataModuleTokoSepatu.ZQcommandSql do
    begin
      SQL.Clear;
      SQL.Add('select * from daftar_sepatu Where id_sepatu = "' + id_sepatu +
        '"');
      Active := true;

      Edit;
      FieldByName('nama_sepatu').AsString := E_namaSepatu.Text;
      FieldByName('jenis_sepatu').AsString := cbb_jenis_sepatu.Text;
      FieldByName('brand').AsString := E_brand.Text;

      Post;
      MessageDlg('Data Sepatu Berhasil Diubah!', mtInformation, [mbOK], 0);
      //      refresh data untuk DataModuleTokoSepatu yang baru ditambahkan
      DataModuleTokoSepatu.ZQdaftarsepatu.Refresh;

    end;
  end;
end;

procedure TFormMenuUtama.btn_HapusdaftarBarangClick(Sender: TObject);
var
  id_sepatu: string;
begin
  id_sepatu :=
    DataModuleTokoSepatu.ZQdaftarsepatu.fieldByName('id_sepatu').AsString;
  if (E_namaSepatu.Text = '') or (id_sepatu = '') then
    MessageDlg('Pilih Data Untuk Dihapus Terlebih Dahulu', mtWarning, [mbOK], 0)
  else
  begin
    if MessageDlg('Anda Yakin Ingin Menghapus Data?', mtConfirmation, [mbOK,
      mbCancel], 0) = mrOK then
    begin
      with DataModuleTokoSepatu.ZQcommandSql do
      begin
        SQL.Clear;
        SQL.Add('select * from daftar_sepatu WHERE id_sepatu = "' + id_Sepatu +
          '"');
        Active := true;
        Delete;

        MessageDlg('Data Sepatu Berhasil Dihapus!', mtInformation, [mbOK], 0);
        //      refresh data untuk DataModuleTokoSepatu yang baru ditambahkan
        DataModuleTokoSepatu.ZQdaftarsepatu.Refresh;

      end;
    end;
  end;
end;

procedure TFormMenuUtama.E_cari_daftarSepatuChange(Sender: TObject);
begin
  with DataModuleTokoSepatu.ZQdaftarsepatu do
  begin
    SQL.Text := 'select * from daftar_sepatu WHERE nama_sepatu  like  "%' +
      E_cari_daftarSepatu.Text + '%"';
    Active := True;

  end;

end;

procedure TFormMenuUtama.btn_tambahdetailsepatuClick(Sender: TObject);
var
  id_sepatu: string;
begin
  id_sepatu :=
    DataModuleTokoSepatu.ZQdaftarsepatu.fieldByName('id_sepatu').AsString;
  if (E_namaSepatu.Text = '') then
    MessageDlg('Pilih Data Detail Sepatu Untuk Diubah Terlebih Dahulu',
      mtWarning, [mbOK], 0)
  else
  begin
    F_PopUp.Show;
    F_PopUp.L_kodesepatu.Caption := id_sepatu;
    F_PopUp.L_namasepatu.Caption := E_namaSepatu.Text;
    F_PopUp.L_jenissepatu.Caption := cbb_jenis_sepatu.Text;
    F_PopUp.L_brand.Caption := E_brand.Text;

    F_PopUp.PGC1.ActivePage := F_PopUp.TS_InputDetailSepatu;
  end;

end;

procedure TFormMenuUtama.btn__editdetailsepatuClick(Sender: TObject);
var
  id_detail_sepatu: string;
begin
  id_detail_sepatu :=
    DataModuleTokoSepatu.ZQdetailsepatu.fieldByName('id_detail_sepatu').AsString;
  if (E_namaSepatu.Text = '') or (id_detail_sepatu = '') then
    MessageDlg('Pilih Data Detail Sepatu Untuk Mengubah',
      mtWarning, [mbOK], 0)
  else
  begin
    F_PopUp.Show;
    F_PopUp.L_kodesepatu.Caption :=
      DataModuleTokoSepatu.ZQdetailsepatu.fieldByName('id_sepatu').AsString;
    ;
    F_PopUp.L_namasepatu.Caption :=
      DataModuleTokoSepatu.ZQdetailsepatu.fieldByName('nama_sepatu').AsString;
    F_PopUp.L_jenissepatu.Caption :=
      DataModuleTokoSepatu.ZQdetailsepatu.fieldByName('jenis_sepatu').AsString;
    F_PopUp.E_satuan.Text :=
      DataModuleTokoSepatu.ZQdetailsepatu.fieldByName('satuan').AsString;
    F_PopUp.E_varian.Text :=
      DataModuleTokoSepatu.ZQdetailsepatu.fieldByName('varian').AsString;
    F_PopUp.cbb_warna_sepatu.Text :=
      DataModuleTokoSepatu.ZQdetailsepatu.fieldByName('warna').AsString;

    F_PopUp.PGC1.ActivePage := F_PopUp.TS_InputDetailSepatu;
  end;

end;

procedure TFormMenuUtama.btn__hapusdetailsepatuClick(Sender: TObject);
var
  id_detail_sepatu: string;
begin
  id_detail_sepatu :=
    DataModuleTokoSepatu.ZQdetailsepatu.fieldByName('id_detail_sepatu').AsString;
  if (E_namaSepatu.Text = '') or (id_detail_sepatu = '') then
    MessageDlg('Pilih Data Untuk Dihapus Terlebih Dahulu', mtWarning, [mbOK], 0)
  else
  begin
    if MessageDlg('Anda Yakin Ingin Menghapus Data?', mtConfirmation, [mbOK,
      mbCancel], 0) = mrOK then
    begin
      with DataModuleTokoSepatu.ZQcommandSql do
      begin
        SQL.Clear;
        SQL.Add('select * from detail_sepatu WHERE id_detail_sepatu = "' +
          id_detail_sepatu +
          '"');
        Active := true;
        Delete;

        MessageDlg('Data Sepatu Berhasil Dihapus!', mtInformation, [mbOK], 0);
        //      refresh data untuk DataModuleTokoSepatu yang baru ditambahkan
        DataModuleTokoSepatu.ZQdetailsepatu.Refresh;

      end;
    end;
  end;
end;

procedure TFormMenuUtama.dblklst_NamaSupplierDblClick(Sender: TObject);
begin
  with DataModuleTokoSepatu.ZQsupplier do
  begin
    L_IdSupplier.Caption := fieldByName('id_supplier').AsString;
    L_NamaSupplier.Caption := fieldByName('nama_supplier').AsString;
    L_AlamatSupplier.Caption := fieldByName('alamat_supplier').AsString;
    L_NoTlpSupplier.Caption := fieldByName('tlp_supplier').AsString;
  end;

end;

procedure TFormMenuUtama.dblklst_DaftarSupplierDblClick(Sender: TObject);
begin
  with DataModuleTokoSepatu.ZQsupplier do
  begin
    L_IdSupplier.Caption := fieldByName('id_supplier').AsString;
    L_NamaSupplier.Caption := fieldByName('nama_supplier').AsString;
    L_AlamatSupplier.Caption := fieldByName('alamat_supplier').AsString;
    L_NoTlpSupplier.Caption := fieldByName('tlp_supplier').AsString;
  end;

end;

procedure TFormMenuUtama.E_CariNamaSupplierChange(Sender: TObject);
begin
  with DataModuleTokoSepatu.ZQsupplier do
  begin
    SQL.Text := 'Select * FROM supplier WHERE  nama_supplier LIKE "%' +
      E_CariNamaSupplier.Text + '%"';
    Active := True;
  end;

end;

procedure TFormMenuUtama.dblklst_DaftarSepatuDblClick(Sender: TObject);
var
  id_sepatu: string;
begin
  F_PopUp.Show;
  id_sepatu :=
    DataModuleTokoSepatu.ZQdaftarsepatu.fieldByName('id_sepatu').AsString;

  with DataModuleTokoSepatu.ZQdetailsepatu do
  begin
    SQL.Text := 'SELECT `detail_sepatu`.*, `daftar_sepatu`.* '
      + 'FROM `tokosepatu`.`daftar_sepatu` '
      + 'INNER JOIN `tokosepatu`.`detail_sepatu` '
      + 'ON (`daftar_sepatu`.`id_sepatu` = `detail_sepatu`.`id_sepatu`)'
      + 'WHERE daftar_sepatu.id_sepatu LIKE "%' + id_sepatu + '%"';

    Active := True;

    F_PopUp.PGC1.ActivePage := F_PopUp.ts_DaftarDetailBarang;

  end;
end;

procedure TFormMenuUtama.btn_TambahFakturBaruClick(Sender: TObject);
begin
  E_NoFakturPembelian.Text := 'FP-SPT-' + formatdatetime('hhmmss', Now);

end;

procedure TFormMenuUtama.E_HargaBeliSepatuChange(Sender: TObject);
begin
  ribuan(E_HargaBeliSepatu);

end;

procedure TFormMenuUtama.E_CariDftSepatuChange(Sender: TObject);
begin
  with DataModuleTokoSepatu.ZQdaftarsepatu do
  begin
    SQL.Text := 'Select * FROM daftar_sepatu WHERE  nama_sepatu LIKE "%' +
      E_CariSptFP.Text + '%"';
    Active := True;
  end;

end;

procedure TFormMenuUtama.btn_TambahDaftarBeliClick(Sender: TObject);
var
  total_harga, hsl_tambahan, total_Tambahan, jml_beli: Integer;
  id_detail: string;
begin
  id_detail :=
    DataModuleTokoSepatu.ZQdetailsepatu.fieldbyname('id_detail_sepatu').AsString;

  if id_detail = '' then
    MessageDlg('Tidak Ada Data Yang Dipilih !', mtWarning, [mbOK], 0)
  else if L_IdSepatu.Caption = '**********' then
    MessageDlg('ID Sepatu Harus Diisi !', mtWarning, [mbOK], 0)
  else if E_HargaBeliSepatu.Text = '' then
    MessageDlg('Harga Beli Harus Diisi !', mtWarning, [mbOK], 0)
  else if E_JumlahBeliSepatu.Text = '' then
    MessageDlg('Jumlah Beli Harus Diisi !', mtWarning, [mbOK], 0)

  else if DataModuleTokoSepatu.ZQtmpPembelian.Locate('id_detail_sepatu',
    id_detail, []) then
  begin
    with DataModuleTokoSepatu.ZQcommandSql do
    begin
      SQL.Clear;
      SQL.Add('Select * from temp_pembelian WHERE id_detail_sepatu = "' +
        id_detail + '"');
      Active := True;

    end;

    jml_beli :=
      StrToInt(DataModuleTokoSepatu.ZQcommandSql.fieldByName('jumlah_beli').AsString);
    total_harga :=
      StrToInt(DataModuleTokoSepatu.ZQcommandSql.fieldByName('total_harga').AsString);

    hsl_tambahan := jml_beli + StrToInt(E_JumlahBeliSepatu.Text);
    total_Tambahan := StrToInt(hapusribuan(E_HargaBeliSepatu)) * hsl_tambahan;

    with DataModuleTokoSepatu.ZQcommandSql do
    begin
      SQL.Clear;
      SQL.Add('Select * from temp_pembelian WHERE id_detail_sepatu = "' +
        id_detail + '"');
      Active := True;

      Edit;
      fieldByName('jumlah_beli').AsString := IntToStr(hsl_tambahan);
      FieldByName('total_harga').AsString := IntToStr(total_Tambahan);
      Post;
      MessageDlg('Data Sepatu Berhasil Ditambahkan Ke List Pembelian',
        mtInformation, [mbOK], 0);
      DataModuleTokoSepatu.ZQtmpPembelian.Refresh;
    end;
  end
  else
  begin
  end;

  begin

    total_harga := StrToInt(hapusribuan(E_HargaBeliSepatu)) *
      StrToInt(E_JumlahBeliSepatu.Text);
    with DataModuleTokoSepatu.ZQcommandSql do
    begin
      SQL.clear;
      SQL.Add('Select * from temp_pembelian');
      Active := True;

      Append;
      FieldByName('id_detail_sepatu').AsString :=
        DataModuleTokoSepatu.ZQdetailsepatu.fieldbyname('id_detail_sepatu').AsString;
      FieldByName('harga_beli_sepatu').AsString :=
        hapusribuan(E_HargaBeliSepatu);
      FieldByName('jumlah_beli').AsString := E_JumlahBeliSepatu.Text;
      FieldByName('total_harga').AsString := IntToStr(total_harga);
      Post;

      MessageDlg('Data Sepatu Berhasil Ditambahkan Ke List Pembelian',
        mtInformation, [mbOK], 0);
      DataModuleTokoSepatu.ZQtmpPembelian.Refresh;
    end;
  end;
end;

procedure TFormMenuUtama.btn_HapusListPembelianClick(Sender: TObject);
var
  id_detail: string;
  jumlahRow: Integer;
begin
  id_detail :=
    DataModuleTokoSepatu.ZQtmpPembelian.fieldByName('id_detail_sepatu').AsString;

  jumlahRow := DataModuleTokoSepatu.ZQtmpPembelian.RecordCount;
  if (jumlahRow = 0) then
    MessageDlg('Daftar Barang Pembelian Kosong, Silahkan Pilih Sepatu Kesukaan Anda: )', mtWarning, [mbOK], 0)
  else if (id_detail = '') then
    MessageDlg('Pilih List Untuk Dihapus Terlebih Dahulu', mtWarning, [mbOK], 0)
  else
  begin
    if MessageDlg('Anda Yakin Ingin Menghapus Data?', mtConfirmation, [mbOK,
      mbCancel], 0) = mrOK then
    begin
      with DataModuleTokoSepatu.ZQcommandSql do
      begin
        SQL.Clear;
        SQL.Add('select * from temp_pembelian Where id_detail_sepatu = "' +
          id_detail + '"');
        Active := true;
        Delete;

        MessageDlg('List Pembelian Berhasil Dihapus Dari Daftar!',
          mtInformation,
          [mbOK], 0);
        //      refresh data untuk DataModuleTokoSepatu yang baru ditambahkan
        DataModuleTokoSepatu.ZQtmpPembelian.Refresh;

      end;
    end;
  end;
end;

procedure TFormMenuUtama.btn_BersihkanDaftarClick(Sender: TObject);
var
  jumlahRow: Integer;
begin
  jumlahRow := DataModuleTokoSepatu.ZQtmpPembelian.RecordCount;

  if (jumlahRow = 0) then
    MessageDlg('Daftar Barang Pembelian Kosong, Silahkan Pilih Sepatu Kesukaan Anda: )', mtWarning, [mbOK], 0)
  else
  begin
    if MessageDlg('Anda Yakin Ingin Menghapus Data?', mtConfirmation, [mbOK,
      mbCancel], 0) = mrOK then
    begin
      with DataModuleTokoSepatu.ZQcommandSql do
      begin
        SQL.Text := 'TRUNCATE TABLE temp_pembelian';
        ExecSQL;

        MessageDlg('Daftar List Pembelian Berhasil Dihapus !', mtInformation,
          [mbOK], 0);
        //      refresh data untuk DataModuleTokoSepatu yang baru ditambahkan
        DataModuleTokoSepatu.ZQtmpPembelian.Refresh;

      end;
    end;
  end;
end;

procedure TFormMenuUtama.btn_SimpanDataBeliClick(Sender: TObject);
begin
  if E_NoFakturPembelian.Text = '' then
    MessageDlg('No.Faktur Harus Diisi !', mtInformation, [mbOK], 0)
  else if (L_IdSupplier.Caption = '**********') or (L_IdSupplier.Caption = '')
    then
    MessageDlg('ID Supplier Harus Diisi !', mtInformation, [mbOK], 0)
  else if DataModuleTokoSepatu.ZQpembelian.Locate('no_faktur_pembelian',
    E_NoFakturPembelian.Text, []) then
    MessageDlg('No.Faktur Pembelian Sudah Ada', mtInformation, [mbOK], 0)

  else
  begin
    with DataModuleTokoSepatu.ZQcommandSql do
    begin
      SQL.Clear;
      SQL.Add('Select * from  pembelian');
      Active := True;

      Append;
      FieldByName('no_faktur_pembelian').AsString := E_NoFakturPembelian.Text;
      FieldByName('tgl_pembelian').AsDateTime := Now;
      FieldByName('id_supplier').AsString := L_IdSupplier.Caption;
      Post;
      SQL.Clear;
      Active := False;
      DataModuleTokoSepatu.ZQpembelian.Refresh;
    end;

    DataModuleTokoSepatu.ZQtmpPembelian.First;
    while not DataModuleTokoSepatu.ZQtmpPembelian.Eof do
    begin
      with DataModuleTokoSepatu.ZQcommandSql do
      begin
        SQL.Clear;
        SQL.Add('Select * from  detail_pembelian');
        Active := True;

        Append;
        FieldByName('no_faktur_pembelian').AsString := E_NoFakturPembelian.Text;
        FieldByName('id_detail_sepatu').AsString :=
          DataModuleTokoSepatu.ZQtmpPembelian.fieldByName('id_detail_sepatu').AsString;
        FieldByName('jumlah_sepatu').AsString :=
          DataModuleTokoSepatu.ZQtmpPembelian.fieldByName('jumlah_beli').AsString;
        FieldByName('harga_beli').AsString :=
          DataModuleTokoSepatu.ZQtmpPembelian.fieldByName('harga_beli_sepatu').AsString;
        FieldByName('total_harga').AsString :=
          DataModuleTokoSepatu.ZQtmpPembelian.fieldByName('total_harga').AsString;
        FieldByName('status').AsString := 'Belum Konfirmasi';

        Post;
        SQL.Clear;
        DataModuleTokoSepatu.ZQdetailsepatu.Refresh;
      end;
      DataModuleTokoSepatu.ZQtmpPembelian.Next;

    end;
    with DataModuleTokoSepatu.ZQcommandSql do
    begin
      SQl.Clear;
      SQL.Add('TRUNCATE TABLE temp_pembelian');
      ExecSQL;
      DataModuleTokoSepatu.ZQtmpPembelian.Refresh;
      MessageDlg('Transaksi Pembelian Berhasil Disimpan', mtInformation, [mbOK],
        0);

    end;

  end;
end;

procedure TFormMenuUtama.btn_DataPembeliClick(Sender: TObject);
begin
  FormDataPenjualan.Show;
end;

procedure TFormMenuUtama.btn_KonfirmasiStokClick(Sender: TObject);
begin
  F_PopUp.Show;
  F_PopUp.PGC1.ActivePage := F_PopUp.ts_Konfirmasi;
  with DataModuleTokoSepatu.ZQcommandSql do
  begin
    SQL.Clear;
    SQL.Add('Select distinct(no_faktur_pembelian)from pembelian');
    Active := True;
    F_PopUp.cbb_NoFaktur.Items.Clear;

    First;
    while not Eof do
    begin
      F_PopUp.cbb_NoFaktur.Items.Add(fieldByName('no_faktur_pembelian').AsString);
      Next;

    end;
  end;

end;

procedure TFormMenuUtama.dbgrd6CellClick(Column: TColumn);
begin
  with DataModuleTokoSepatu.ZQstok do
  begin
    L_IdSepatuStok.Caption :=
      DataModuleTokoSepatu.ZQstok.FieldByName('id_sepatu').AsString;
    L_NamaSepatuStok.Caption :=
      DataModuleTokoSepatu.ZQstok.FieldByName('nama_sepatu').AsString;
    L_JenisSepatuStok.Caption :=
      DataModuleTokoSepatu.ZQstok.FieldByName('jenis_sepatu').AsString;
    L_BrandSepatuStok.Caption :=
      DataModuleTokoSepatu.ZQstok.FieldByName('brand').AsString;
    L_SatuanSepatuStok.Caption :=
      DataModuleTokoSepatu.ZQstok.FieldByName('satuan').AsString;
    L_VarianSepatuStok.Caption :=
      DataModuleTokoSepatu.ZQstok.FieldByName('varian').AsString;
    L_WarnaSepatuStok.Caption :=
      DataModuleTokoSepatu.ZQstok.FieldByName('warna').AsString;
    L_HargaJualStok.Caption :=
      DataModuleTokoSepatu.ZQstok.FieldByName('harga_sepatu').AsString;
    L_JumlahStok.Caption :=
      DataModuleTokoSepatu.ZQstok.FieldByName('jumlah_stok').AsString;
  end;

end;

procedure TFormMenuUtama.btn_SetHargaClick(Sender: TObject);
begin
  FormSetHarga.Show;
  FormSetHarga.E_SetHarga.Text :=
    DataModuleTokoSepatu.ZQstok.fieldByName('harga_sepatu').AsString;

end;

procedure TFormMenuUtama.E_CariStokChange(Sender: TObject);
begin
  with DataModuleTokoSepatu.ZQstok do
  begin
    SQL.Text :=
      ' SELECT `stok_sepatu`.* , `detail_sepatu`.* , `daftar_sepatu`.* '
      + ' FROM '
      + ' `detail_sepatu` '
      + ' INNER JOIN `stok_sepatu` '
      + ' ON (`detail_sepatu`.`id_detail_sepatu` = `stok_sepatu`.`id_detail_sepatu`) '
      + ' INNER JOIN `daftar_sepatu` '
      + ' ON (`daftar_sepatu`.`id_sepatu` = `detail_sepatu`.`id_sepatu`) '
      + ' where daftar_sepatu.jenis_sepatu like  "%' + E_CariStok.Text + '%"';
    Active := True;

  end;

end;

procedure TFormMenuUtama.dblklst_NamaPlgDblClick(Sender: TObject);
begin
  with DataModuleTokoSepatu.ZQpelanggan do
  begin
    L_IdPelangganFP.Caption := fieldByName('id_pelanggan').AsString;
    L_NamaPlgFP.Caption := fieldByName('nama_pelanggan').AsString;
    L_JenisKelFP.Caption := fieldByName('jenis_kelamin').AsString;
    L_AlamatFP.Caption := fieldByName('alamat').AsString;
    L_NoTlpFP.Caption := fieldByName('tlp').AsString;
  end;

end;

procedure TFormMenuUtama.E_CariPlgFPChange(Sender: TObject);
begin
  with DataModuleTokoSepatu.ZQpelanggan do
  begin
    SQL.Text := 'Select * FROM pelanggan WHERE  nama_pelanggan LIKE "%' +
      E_CariPlgFP.Text + '%"';
    Active := True;
  end;

end;

procedure TFormMenuUtama.dblklst_DaftarBrgFPDblClick(Sender: TObject);
var
  id_sepatu: string;
begin
  F_PopUp.Show;
  id_sepatu :=
    DataModuleTokoSepatu.ZQdaftarsepatu.fieldByName('id_sepatu').AsString;

  with DataModuleTokoSepatu.ZQstok do
  begin
    SQL.Text :=
      ' SELECT `stok_sepatu`.* , `detail_sepatu`.* , `daftar_sepatu`.* '
      + ' FROM '
      + ' `detail_sepatu` '
      + ' INNER JOIN `stok_sepatu` '
      + ' ON (`detail_sepatu`.`id_detail_sepatu` = `stok_sepatu`.`id_detail_sepatu`) '
      + ' INNER JOIN `daftar_sepatu` '
      + ' ON (`daftar_sepatu`.`id_sepatu` = `detail_sepatu`.`id_sepatu`) '
      + 'WHERE daftar_sepatu.id_sepatu LIKE "%' + id_sepatu + '%"';

    Active := True;

    F_PopUp.PGC1.ActivePage := F_PopUp.ts_StokSepatu;

  end;
end;

procedure TFormMenuUtama.img_RefreshStokClick(Sender: TObject);
begin
  with DataModuleTokoSepatu.ZQstok do
  begin
    SQL.Text :=
      ' SELECT `stok_sepatu`.* , `detail_sepatu`.* , `daftar_sepatu`.* '
      + ' FROM '
      + ' `detail_sepatu` '
      + ' INNER JOIN `stok_sepatu` '
      + ' ON (`detail_sepatu`.`id_detail_sepatu` = `stok_sepatu`.`id_detail_sepatu`) '
      + ' INNER JOIN `daftar_sepatu` '
      + ' ON (`daftar_sepatu`.`id_sepatu` = `detail_sepatu`.`id_sepatu`)';
    //                + 'WHERE daftar_sepatu.id_sepatu LIKE "%' + id_sepatu + '%"';

    Active := True;
    //    F_PopUp.PGC1.ActivePage := F_PopUp.ts_StokSepatu;

  end;

end;

procedure TFormMenuUtama.btn_TambahDaftarBljClick(Sender: TObject);
var
  total_harga, hsl_tambahan, total_Tambahan, jml_beli, jml_stok: Integer;
  id_detail, id_stok: string;
begin
  id_detail :=
    DataModuleTokoSepatu.ZQstok.fieldbyname('id_detail_sepatu').AsString;
  id_Stok := DataModuleTokoSepatu.ZQstok.fieldByName('id_stok').AsString;

  if id_detail = '' then
    MessageDlg('Tidak Ada Data Yang Dipilih !', mtWarning, [mbOK], 0)
  else if L_IdSepatuFP.Caption = '**********' then
    MessageDlg('ID Sepatu Harus Diisi !', mtWarning, [mbOK], 0)
  else if E_JumlahSepatuFP.Text = '' then
    MessageDlg('Jumlah Beli Harus Diisi !', mtWarning, [mbOK], 0)

  else if DataModuleTokoSepatu.ZQtmpPenjualan.Locate('id_detail_sepatu',
    id_detail, []) then
  begin
    with DataModuleTokoSepatu.ZQcommandSql do
    begin
      SQL.Clear;
      SQL.Add('Select * from temp_penjualan WHERE id_detail_sepatu = "' +
        id_detail + '"');
      Active := True;

    end;

    jml_beli :=
      StrToInt(DataModuleTokoSepatu.ZQcommandSql.fieldByName('jumlah').AsString);
    total_harga :=
      StrToInt(DataModuleTokoSepatu.ZQcommandSql.fieldByName('total_harga').AsString);

    hsl_tambahan := jml_beli + StrToInt(E_JumlahSepatuFP.Text);
    total_Tambahan := StrToInt(L_HargaJualFP.Caption) * hsl_tambahan;

    with DataModuleTokoSepatu.ZQcommandSql do
    begin
      SQL.Clear;
      SQL.Add('select * from stok_sepatu where id_stok = "' + id_Stok + '"');
      Active := True;
    end;
    jml_stok :=
      DataModuleTokoSepatu.ZQcommandSql.FieldByName('jumlah_stok').AsInteger;
    if (jml_stok - hsl_tambahan) < 0 then
      MessageDlg('Stok Tidak Mencukupi', mtInformation, [mbOK], 0)
    else

    begin
      with DataModuleTokoSepatu.ZQcommandSql do
      begin
        SQL.Clear;
        SQL.Add('Select * from temp_penjualan WHERE id_detail_sepatu = "' +
          id_detail + '"');
        Active := True;

        Edit;
        fieldByName('jumlah').AsString := IntToStr(hsl_tambahan);
        FieldByName('total_harga').AsString := IntToStr(total_Tambahan);
        Post;
        MessageDlg('Data Sepatu Berhasil Ditambahkan Ke List Penjualan',
          mtInformation, [mbOK], 0);
        DataModuleTokoSepatu.ZQtmpPenjualan.Refresh;
      end;
    end;
  end

  else

  begin
    with DataModuleTokoSepatu.ZQcommandSql do
    begin
      SQL.Clear;
      SQL.Add('select * from stok_sepatu where id_stok = "' + id_Stok + '"');
      Active := True;
    end;

    jml_stok :=
      DataModuleTokoSepatu.ZQcommandSql.FieldByName('jumlah_stok').AsInteger;
    if (jml_stok - StrToInt(E_JumlahSepatuFP.Text)) < 0 then
      MessageDlg('Stok Tidak Mencukupi', mtInformation, [mbOK], 0)
    else

    begin

      total_harga := StrToInt(L_HargaJualFP.Caption) *
        StrToInt(E_JumlahSepatuFP.Text);
      with DataModuleTokoSepatu.ZQcommandSql do
      begin
        SQL.clear;
        SQL.Add('Select * from temp_penjualan');
        Active := True;

        Append;
        FieldByName('id_detail_sepatu').AsString :=
          DataModuleTokoSepatu.ZQstok.fieldbyname('id_detail_sepatu').AsString;
        FieldByName('harga').AsString := L_HargaJualFP.Caption;
        FieldByName('jumlah').AsString := E_JumlahSepatuFP.Text;
        FieldByName('total_harga').AsString := IntToStr(total_harga);
        Post;

        MessageDlg('Data Sepatu Berhasil Ditambahkan Ke List Penjualan',
          mtInformation, [mbOK], 0);
        DataModuleTokoSepatu.ZQtmpPenjualan.Refresh;
      end;
    end;
  end;
end;

procedure TFormMenuUtama.btn_HapusListFPClick(Sender: TObject);
var
  id_detail: string;
  jumlahRow: Integer;
begin
  id_detail :=
    DataModuleTokoSepatu.ZQtmpPenjualan.fieldByName('id_detail_sepatu').AsString;

  jumlahRow := DataModuleTokoSepatu.ZQtmpPenjualan.RecordCount;
  if (jumlahRow = 0) then
    MessageDlg('Daftar Barang Pembelian Kosong, Silahkan Pilih Sepatu Kesukaan Anda: )', mtWarning, [mbOK], 0)
  else if (id_detail = '') then
    MessageDlg('Pilih List Untuk Dihapus Terlebih Dahulu', mtWarning, [mbOK], 0)
  else
  begin
    if MessageDlg('Anda Yakin Ingin Menghapus Data?', mtConfirmation, [mbOK,
      mbCancel], 0) = mrOK then
    begin
      with DataModuleTokoSepatu.ZQcommandSql do
      begin
        SQL.Clear;
        SQL.Add('select * from temp_penjualan Where id_detail_sepatu = "' +
          id_detail + '"');
        Active := true;
        Delete;

        MessageDlg('List Pembelian Berhasil Dihapus Dari Belanja!',
          mtInformation,
          [mbOK], 0);
        //      refresh data untuk DataModuleTokoSepatu yang baru ditambahkan
        DataModuleTokoSepatu.ZQtmpPenjualan.Refresh;

      end;
    end;
  end;
end;

procedure TFormMenuUtama.btn_BersihDaftarFPClick(Sender: TObject);
var
  jumlahRow: Integer;
begin
  jumlahRow := DataModuleTokoSepatu.ZQtmpPenjualan.RecordCount;

  if (jumlahRow = 0) then
    MessageDlg('Daftar Barang Pembelian Kosong, Silahkan Pilih Sepatu Kesukaan Anda: )', mtWarning, [mbOK], 0)
  else
  begin
    if MessageDlg('Anda Yakin Ingin Menghapus Data?', mtConfirmation, [mbOK,
      mbCancel], 0) = mrOK then
    begin
      with DataModuleTokoSepatu.ZQcommandSql do
      begin
        SQL.Text := 'TRUNCATE TABLE temp_penjualan';
        ExecSQL;

        MessageDlg('Daftar List Belanja Berhasil Dihapus !', mtInformation,
          [mbOK], 0);
        //      refresh data untuk DataModuleTokoSepatu yang baru ditambahkan
        DataModuleTokoSepatu.ZQtmpPenjualan.Refresh;

      end;
    end;
  end;
end;

procedure TFormMenuUtama.btn_SimpanDataBljClick(Sender: TObject);
begin
  if E_FakturPenjulan.Text = '' then
    MessageDlg('No.Faktur Harus Diisi !', mtInformation, [mbOK], 0)
  else if (L_IdPelangganFP.Caption = '**********') or (L_IdPelangganFP.Caption =
    '') then
    MessageDlg('ID Supplier Harus Diisi !', mtInformation, [mbOK], 0)
  else if DataModuleTokoSepatu.ZQpenjualan.Locate('no_faktur_penjualan',
    E_FakturPenjulan.Text, []) then
    MessageDlg('No.Faktur Penjualan Sudah Ada', mtInformation, [mbOK], 0)

  else
  begin
    with DataModuleTokoSepatu.ZQcommandSql do
    begin
      SQL.Clear;
      SQL.Add('Select * from  penjualan');
      Active := True;

      Append;
      FieldByName('no_faktur_penjualan').AsString := E_FakturPenjulan.Text;
      FieldByName('tgl_penjualan').AsDateTime := Now;
      FieldByName('id_pelanggan').AsString := L_IdPelangganFP.Caption;
      Post;
      SQL.Clear;
      Active := False;
      DataModuleTokoSepatu.ZQpenjualan.Refresh;
    end;

    DataModuleTokoSepatu.ZQtmpPenjualan.First;
    while not DataModuleTokoSepatu.ZQtmpPenjualan.Eof do
    begin
      with DataModuleTokoSepatu.ZQcommandSql do
      begin
        SQL.Clear;
        SQL.Add('Select * from  detail_penjualan');
        Active := True;

        Append;
        FieldByName('no_faktur_penjualan').AsString := E_FakturPenjulan.Text;
        FieldByName('id_detail_sepatu').AsString :=
          DataModuleTokoSepatu.ZQtmpPenjualan.fieldByName('id_detail_sepatu').AsString;
        FieldByName('jumlah').AsString :=
          DataModuleTokoSepatu.ZQtmpPenjualan.fieldByName('jumlah').AsString;
        FieldByName('harga_sepatu').AsString :=
          DataModuleTokoSepatu.ZQtmpPenjualan.fieldByName('harga').AsString;
        FieldByName('total_harga').AsString :=
          DataModuleTokoSepatu.ZQtmpPenjualan.fieldByName('total_harga').AsString;
//                FieldByName('status').AsString := 'Belum Konfirmasi';
        Post;
        SQL.Clear;
        DataModuleTokoSepatu.ZQdetailPenjualan.Refresh;
      end;
      DataModuleTokoSepatu.ZQtmpPenjualan.Next;

    end;
    with DataModuleTokoSepatu.ZQcommandSql do
    begin
      SQl.Clear;
      SQL.Add('TRUNCATE TABLE temp_penjualan');
      ExecSQL;
      DataModuleTokoSepatu.ZQtmpPembelian.Refresh;
      MessageDlg('Transaksi Berhasil Disimpan', mtInformation, [mbOK],
        0);

    end;

  end;
end;

procedure TFormMenuUtama.btn_2Click(Sender: TObject);
begin
  E_FakturPenjulan.Text := 'OSPT-' + formatdatetime('hhmmss', Now);

end;

procedure TFormMenuUtama.btn_DataPenjualanClick(Sender: TObject);
begin
  FormDataPenjualan.Show;

  with DataModuleTokoSepatu.ZQcommandSql do
  begin
    SQL.Clear;
    SQL.Add('Select distinct(no_faktur_penjualan)from penjualan');
    Active := True;
    FormDataPenjualan.cbb_NoFakturPenjualan.Items.Clear;

    First;
    while not Eof do
    begin
      FormDataPenjualan.cbb_NoFakturPenjualan.Items.Add(fieldByName('no_faktur_penjualan').AsString);
      Next;

    end;

  end;

end;

procedure TFormMenuUtama.img_DataPelanganClick(Sender: TObject);
begin
  DataModuleTokoSepatu.frxrprt_pelanggan.LoadFromFile(ExtractFilePath(Application.ExeName) + 'DataPelanggan.fr3');
  DataModuleTokoSepatu.frxrprt_pelanggan.ShowReport();

end;

procedure TFormMenuUtama.img_2Click(Sender: TObject);
begin
  DataModuleTokoSepatu.frxrprt_supplier.LoadFromFile(ExtractFilePath(Application.ExeName) + 'DataSupplier.fr3');
  DataModuleTokoSepatu.frxrprt_supplier.ShowReport();

end;

procedure TFormMenuUtama.img_3Click(Sender: TObject);
begin
  DataModuleTokoSepatu.frxrprt_datadaftarsepatu.LoadFromFile(ExtractFilePath(Application.ExeName) + 'DataDaftarSepatu.fr3');
  DataModuleTokoSepatu.frxrprt_datadaftarsepatu.ShowReport();

end;

procedure TFormMenuUtama.img_4Click(Sender: TObject);
begin
  DataModuleTokoSepatu.frxrprt_stok.LoadFromFile(ExtractFilePath(Application.ExeName) + 'DataStok.fr3');
  DataModuleTokoSepatu.frxrprt_stok.ShowReport();

end;

procedure TFormMenuUtama.img_10Click(Sender: TObject);
begin
  DataModuleTokoSepatu.frxrprt_detailpembelian.LoadFromFile(ExtractFilePath(Application.ExeName) + 'DataPembelian_DariSupplier.fr3');
  DataModuleTokoSepatu.frxrprt_detailpembelian.ShowReport();

end;

procedure TFormMenuUtama.btn_CetakTransaksiClick(Sender: TObject);
begin
  with DataModuleTokoSepatu.ZQcommandSql do
  begin
    with DataModuleTokoSepatu.ZQdetailPenjualan do
    begin
      SQL.Clear;
      SQL.Add(' SELECT `detail_penjualan`.* , `detail_sepatu`.* , `penjualan`.* , `pelanggan`.* , `daftar_sepatu`.* '
        + ' FROM '
        + ' `daftar_sepatu` '
        + ' INNER JOIN `detail_sepatu` '
        + ' ON (`daftar_sepatu`.`id_sepatu` = `detail_sepatu`.`id_sepatu`) '
        + ' INNER JOIN `detail_penjualan` '
        + ' ON (`detail_sepatu`.`id_detail_sepatu` = `detail_penjualan`.`id_detail_sepatu`) '
        + ' INNER JOIN `penjualan` '
        + ' ON (`penjualan`.`no_faktur_penjualan` = `detail_penjualan`.`no_faktur_penjualan`) '
        + ' INNER JOIN `pelanggan` '
        + ' ON (`pelanggan`.`id_pelanggan` = `penjualan`.`id_pelanggan`) '
        + ' WHERE penjualan.no_faktur_penjualan LIKE "%' + E_FakturPenjulan.Text
          + '%"');
      Active := True;
    end;
    DataModuleTokoSepatu.frxrprt_penjualan.LoadFromFile(ExtractFilePath(Application.ExeName) + 'DataPenjualan.fr3');
    DataModuleTokoSepatu.frxrprt_penjualan.showReport();

  end;

end;

procedure TFormMenuUtama.img_1Click(Sender: TObject);
begin
  DataModuleTokoSepatu.frxrprt_pelanggan.LoadFromFile(ExtractFilePath(Application.ExeName) + 'DataPelanggan.fr3');
  DataModuleTokoSepatu.frxrprt_pelanggan.ShowReport();

end;

procedure TFormMenuUtama.img_pelangganClick(Sender: TObject);
begin
  pgcPC_MenuKonten.ActivePage := ts_datapelanggan;

end;

procedure TFormMenuUtama.img_supplierClick(Sender: TObject);
begin
  pgcPC_MenuKonten.ActivePage := ts_datasupplier;

end;

procedure TFormMenuUtama.img_daftarbarangClick(Sender: TObject);
begin
  pgcPC_MenuKonten.ActivePage := ts_daftarsepatu;

end;

procedure TFormMenuUtama.img_stokClick(Sender: TObject);
begin
  pgcPC_MenuKonten.ActivePage := ts_stok;

end;

procedure TFormMenuUtama.img_pembelianClick(Sender: TObject);
begin
  pgcPC_MenuKonten.ActivePage := ts_pembelian;

end;

procedure TFormMenuUtama.img_penjualanClick(Sender: TObject);
begin
  pgcPC_MenuKonten.ActivePage := ts_penjualan;

end;

procedure TFormMenuUtama.img_laporanClick(Sender: TObject);
begin
  pgcPC_MenuKonten.ActivePage := ts_Laporan;

end;

procedure TFormMenuUtama.FormShow(Sender: TObject);
begin
  ts_beranda.TabVisible := False;
  ts_datapelanggan.TabVisible := False;
  ts_datasupplier.TabVisible := False;
  ts_daftarsepatu.TabVisible := False;
  ts_pembelian.TabVisible := False;
  ts_stok.TabVisible := False;
  ts_penjualan.TabVisible := False;
  ts_Laporan.TabVisible := False;

  ts_login.TabVisible := False;
  ts_menu.TabVisible := False;
  PC_menu_atas.ActivePage := ts_login;
  pgcPC_MenuKonten.ActivePage := ts_beranda;

end;

procedure TFormMenuUtama.IM_loginClick(Sender: TObject);
var
  password, username: string;
begin

  if E_username.Text = '' then
    MessageDlg('Silahkan Masukkan Username!', mtInformation, [mbOK], 0)
  else
  if E_pass.Text = '' then
    MessageDlg('Silahkan Masukkan Password!', mtInformation, [mbOK], 0)
  else
  begin
    with DataModuleTokoSepatu.ZQcommandSql do
    begin
      SQL.Clear;
      SQL.Add('select * from admin where username ="' + E_username.Text +
        '"');
      Active := True;
    end;
    username := DataModuleTokoSepatu.ZQcommandSql.fieldByName('username').AsString;
    password :=DataModuleTokoSepatu.ZQcommandSql.fieldByName('password').AsString;

    if DataModuleTokoSepatu.ZQcommandSql.RecordCount <= 0 then
      MessageDlg('Username Tidak Terdaftar!', mtWarning, [mbOK], 0)
    else if (E_pass.Text <> password) then
      MessageDlg('Password Salah!', mtWarning, [mbOK], 0)
    else
    begin
      PC_menu_atas.ActivePage := ts_menu;
      MessageDlg('Login Success !', mtInformation, [mbOK], 0)

    end;
  end;
  E_username.Text:='';
  E_pass.Text:='';
end;

procedure TFormMenuUtama.img_logoutClick(Sender: TObject);
begin
  if MessageDlg('Anda Yakin Ingin Log Out?', mtConfirmation, [mbOK, mbCancel], 0) = mrOK then
  begin
    PC_menu_atas.ActivePage := ts_login;
    MessageDlg('Log Out Berhasil!', mtInformation, [mbOK], 0);
    pgcPC_MenuKonten.ActivePage:=ts_beranda;

  end;
 
  

end;

procedure TFormMenuUtama.IM_registerClick(Sender: TObject);
begin

  FormMenuUtama.Hide;
  FormRegistrasi.Show;
  

end;

procedure TFormMenuUtama.L_125Click(Sender: TObject);
begin
  FormMenuUtama.Hide;
  FormRegistrasi.Show;

end;

end.

