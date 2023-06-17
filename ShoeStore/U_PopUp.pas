unit U_PopUp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, StdCtrls, Grids, DBGrids;

type
  TF_PopUp = class(TForm)
    PGC1: TPageControl;
    TS_InputDetailSepatu: TTabSheet;
    Label9: TLabel;
    E_satuan: TEdit;
    Label8: TLabel;
    Label7: TLabel;
    btn_SimpandetailBarang: TButton;
    btn_EditdetailBarang: TButton;
    lbl1: TLabel;
    E_varian: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    L_kodesepatu: TLabel;
    L_namasepatu: TLabel;
    L_jenissepatu: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    L_brand: TLabel;
    cbb_warna_sepatu: TComboBox;
    shp3: TShape;
    shp1: TShape;
    ts_DaftarDetailBarang: TTabSheet;
    dbgrd2: TDBGrid;
    L_lbl16: TLabel;
    btn_PilihSepatu: TButton;
    btn_1: TButton;
    L_1: TLabel;
    E_CariVarian: TEdit;
    dbgrd1: TDBGrid;
    grp1: TGroupBox;
    rg_Konfrimasi: TRadioGroup;
    btn_Konfirmasi: TButton;
    L_2: TLabel;
    btn_KembaliKonfirmasi: TButton;
    ts_Konfirmasi: TTabSheet;
    dbgrd3: TDBGrid;
    cbb_nofaktur: TComboBox;
    ts_StokSepatu: TTabSheet;
    dbgrd6: TDBGrid;
    L_3: TLabel;
    btn_PilihStok: TButton;
    btn_KembaliDftStok: TButton;
    E_CariStokDftStok: TEdit;
    L_4: TLabel;
    procedure btn_SimpandetailBarangClick(Sender: TObject);
    procedure btn_EditdetailBarangClick(Sender: TObject);
    procedure btn_PilihSepatuClick(Sender: TObject);
    procedure E_CariVarianChange(Sender: TObject);
    procedure btn_KembaliKonfirmasiClick(Sender: TObject);
    procedure btn_KonfirmasiClick(Sender: TObject);
    procedure cbb_nofakturChange(Sender: TObject);
    procedure btn_PilihStokClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_PopUp: TF_PopUp;

implementation

uses U_DataModule, U_menu_utama, ZDataset, DB;

{$R *.dfm}

procedure TF_PopUp.btn_SimpandetailBarangClick(Sender: TObject);
begin
  if L_kodesepatu.Caption = '**********' then
    MessageDlg('Kode/ID Barang Harus Diisi', mtWarning, [mbOK], 0)
  else if E_satuan.Text = '' then
    MessageDlg('Anda Belum Mengisi Satuan Sepatu', mtWarning, [mbOK], 0)
  else if E_varian.Text = '' then
    MessageDlg('Anda Belum Mengisi Varian Sepatu', mtWarning, [mbOK], 0)
  else if cbb_warna_sepatu.Text = '' then
    MessageDlg('Anda Belum Mengisi Warna Sepatu', mtWarning, [mbOK], 0)
  else
  begin
    with DataModuleTokoSepatu.ZQcommandSql do
    begin
      SQL.Clear;
      SQL.Add('select * from detail_sepatu');
      Active := True;

      Append;
      FieldByName('id_sepatu').AsString := L_kodesepatu.Caption;
      FieldByName('satuan').AsString := E_satuan.Text;
      FieldByName('varian').AsString := E_varian.Text;
      FieldByName('warna').AsString := cbb_warna_sepatu.Text;

      Post;
      MessageDlg('Data Detail Sepatu Berhasil Disimpan !', mtInformation,
        [mbOK], 0);
      //      refresh data untuk DataModuleTokoSepatu yang baru ditambahkan
      DataModuleTokoSepatu.ZQdetailsepatu.Refresh;
      F_PopUp.Close;
    end;
  end;

end;

procedure TF_PopUp.btn_EditdetailBarangClick(Sender: TObject);
var
  id_detail_sepatu: string;
begin

  id_detail_sepatu :=
    DataModuleTokoSepatu.ZQdetailsepatu.fieldByName('id_detail_sepatu').AsString;
  if (id_detail_sepatu = '') then
    MessageDlg('Pilih Data Detail sepatu  Untuk Diubah Terlebih Dahulu',
      mtWarning, [mbOK], 0)
  else
  begin
    with DataModuleTokoSepatu.ZQcommandSql do
    begin
      SQL.Clear;
      SQL.Add('select * from detail_sepatu Where id_detail_sepatu = "' +
        id_detail_sepatu + '"');
      Active := true;

      Edit;
      FieldByName('satuan').AsString := E_satuan.Text;
      FieldByName('varian').AsString := E_varian.Text;
      FieldByName('warna').AsString := cbb_warna_sepatu.Text;

      Post;
      MessageDlg('Data Detail Sepatu Berhasil Diubah!', mtInformation, [mbOK],
        0);
      //      refresh data untuk DataModuleTokoSepatu yang baru ditambahkan
      DataModuleTokoSepatu.ZQdetailsepatu.Refresh;
      F_PopUp.Close;

    end;
  end;
end;

procedure TF_PopUp.btn_PilihSepatuClick(Sender: TObject);
begin
  with DataModuleTokoSepatu.ZQdetailsepatu do
  begin
    FormMenuUtama.L_IdSepatu.Caption := fieldByName('id_sepatu').AsString;
    FormMenuUtama.L_NamaSepatu.Caption := fieldByName('nama_sepatu').AsString;
    FormMenuUtama.L_JenisSepatu.Caption := fieldByName('jenis_sepatu').AsString;
    FormMenuUtama.L_BrandSepatu.Caption := fieldByName('brand').AsString;
    FormMenuUtama.L_SatuanSepatu.Caption := fieldByName('satuan').AsString;
    FormMenuUtama.L_VarianSepatu.Caption := fieldByName('varian').AsString;
    FormMenuUtama.L_WarnaSepatu.Caption := fieldByName('warna').AsString;
  end;
  F_PopUp.Close;

end;

procedure TF_PopUp.E_CariVarianChange(Sender: TObject);
var
  id_sepatu: string;
begin

  id_sepatu :=
    DataModuleTokoSepatu.ZQdaftarsepatu.fieldByName('id_sepatu').AsString;
  with DataModuleTokoSepatu.ZQdetailsepatu do
  begin
    SQL.Text := 'SELECT `detail_sepatu`.*, `daftar_sepatu`.* '
      + 'FROM `tokosepatu`.`daftar_sepatu` '
      + 'INNER JOIN `tokosepatu`.`detail_sepatu` '
      + 'ON (`daftar_sepatu`.`id_sepatu` = `detail_sepatu`.`id_sepatu`)'
      + 'WHERE daftar_sepatu.id_sepatu LIKE "%' + id_sepatu + '%" '
      + 'AND detail_sepatu.varian LIKE "%' + E_CariVarian.Text + '%"';
    Active := True;

  end;

end;

procedure TF_PopUp.btn_KembaliKonfirmasiClick(Sender: TObject);
begin
  F_PopUp.Close;

end;

procedure TF_PopUp.btn_KonfirmasiClick(Sender: TObject);
var
  id_stok, id_sepatu, brand, warna, varian, id_detail_sepatu, id_detail_pembelian: string;
  i, Jumlah_sepatu, total_stok, Jumlah_stok: Integer;
begin
  case rg_Konfrimasi.ItemIndex of
    -1:
      begin
        MessageDlg('Pilih Metode Konfirmasi!', mtInformation, [mbOK], 0);
      end;

    0:
      begin
        if cbb_NoFaktur.Text = '' then
          MessageDlg('Pilih No.Faktur Pembelian!', mtWarning, [mbOK], 0)
        else
        begin
          DataModuleTokoSepatu.ZQdetailpembelian.First;

          while not DataModuleTokoSepatu.ZQdetailpembelian.Eof do
          begin
            id_sepatu       :=DataModuleTokoSepatu.ZQdetailpembelian.fieldByName('id_sepatu').AsString;
            brand           :=DataModuleTokoSepatu.ZQdetailpembelian.fieldByName('brand').AsString;
            id_detail_sepatu:=DataModuleTokoSepatu.ZQdetailpembelian.fieldByName('id_detail_sepatu').AsString;
            varian          :=DataModuleTokoSepatu.ZQdetailpembelian.fieldByName('varian').AsString;
            warna           := DataModuleTokoSepatu.ZQdetailpembelian.fieldByName('warna').AsString;

            id_stok := id_detail_sepatu+ '-' +id_sepatu+ '-' +brand+ '-'+varian+warna;
            if DataModuleTokoSepatu.ZQstok.Locate('id_stok', id_stok, []) then
            begin
              id_detail_sepatu :=
                DataModuleTokoSepatu.ZQdetailpembelian.fieldByName('id_detail_pembelian').AsString;
              with DataModuleTokoSepatu.ZQcommandSql do
              begin
                SQL.Clear;
                SQL.Add('select * from stok_sepatu where id_stok ="' + id_stok +
                  '"');
                Active := True;

                Jumlah_sepatu :=
                  StrToInt((DataModuleTokoSepatu.ZQdetailpembelian.fieldByName('jumlah_sepatu').AsString));

                Edit;
                FieldByName('jumlah_stok').AsString :=
                  IntToStr(StrToInt(fieldByName('jumlah_stok').AsString) +
                  Jumlah_sepatu);
                Post;
                DataModuleTokoSepatu.ZQstok.Refresh;

                SQL.Clear;
                SQL.Add('Select * from detail_pembelian where id_detail_pembelian="' + id_detail_sepatu + '"');
                Active := True;

                Edit;
                FieldByName('status').AsString := 'Terkonfirmasi';
                Post;
                DataModuleTokoSepatu.ZQdaftarsepatu.Refresh;
                //                DataModuleTokoSepatu.ZQdetailpembelian.Refresh;
                DataModuleTokoSepatu.ZQstok.Refresh;
              end;

            end
            else
            begin
              id_detail_sepatu :=
                DataModuleTokoSepatu.ZQdetailpembelian.fieldByName('id_detail_pembelian').AsString;
              with DataModuleTokoSepatu.ZQcommandSql do
              begin
                SQL.Clear;

                SQL.Add('Select * from stok_sepatu');
                Active := True;

                Append;
                FieldByName('id_stok').AsString := id_stok;
                FieldByName('id_detail_sepatu').AsString :=
                  DataModuleTokoSepatu.ZQdetailpembelian.fieldByName('id_detail_sepatu').AsString;
                FieldByName('harga_sepatu').AsString := '0';
                FieldByName('jumlah_stok').AsString := DataModuleTokoSepatu.ZQdetailpembelian.fieldByName('jumlah_sepatu').AsString;
                Post;

                DataModuleTokoSepatu.ZQdaftarsepatu.Refresh;
                //                DataModuleTokoSepatu.ZQdetailpembelian.Refresh;
                DataModuleTokoSepatu.ZQstok.Refresh;

                SQL.Clear;
                SQL.Add('Select * from detail_pembelian where id_detail_pembelian="' + id_detail_sepatu + '"');
                Active := True;

                Edit;
                FieldByName('status').AsString := 'Terkonfirmasi';
                Post;
              end;
            end;

            DataModuleTokoSepatu.ZQdetailpembelian.Next;
            DataModuleTokoSepatu.ZQdetailpembelian.Refresh;
            DataModuleTokoSepatu.ZQdaftarsepatu.Refresh;
            DataModuleTokoSepatu.ZQstok.Refresh;
          end;
          MessageDlg('Stok Berhasil Ditambahkan', mtInformation, [mbOK], 0);
        end;
      end;

//      untuk konfirmasi barang 1 per satu
     1:begin
            id_sepatu       :=DataModuleTokoSepatu.ZQdetailpembelian.fieldByName('id_sepatu').AsString;
            brand           :=DataModuleTokoSepatu.ZQdetailpembelian.fieldByName('brand').AsString;
            id_detail_sepatu:=DataModuleTokoSepatu.ZQdetailpembelian.fieldByName('id_detail_sepatu').AsString;
            varian          :=DataModuleTokoSepatu.ZQdetailpembelian.fieldByName('varian').AsString;
            warna           := DataModuleTokoSepatu.ZQdetailpembelian.fieldByName('warna').AsString;

            id_stok := id_detail_sepatu+ '-' +id_sepatu+ '-' +brand+ '-'+varian+warna;

            if DataModuleTokoSepatu.ZQstok.Locate('id_stok',id_stok,[])then
            begin
            id_detail_sepatu:=DataModuleTokoSepatu.ZQdetailpembelian.fieldByName('id_detail_pembelian').AsString;
            with DataModuleTokoSepatu.ZQcommandSql do
            begin
                SQL.Clear;
                SQL.Add('select * from stok_sepatu where id_stok="'+id_stok+'"');
                Active:=True;

                Jumlah_sepatu:=StrToInt(DataModuleTokoSepatu.ZQpembelian.fieldByName('jumlah_sepatu').AsString);

                Edit;
                FieldByName('jumlah_stok').AsString:=IntToStr(StrToInt(fieldByName('jumlah_stok').AsString)+Jumlah_sepatu);
                Post;
                DataModuleTokoSepatu.ZQstok.Refresh;

                SQL.Clear;
                SQL.Add('select * from detail_pembelian where id_detail_pembelian ="'+id_detail_sepatu+'"');
                Active:=True;

                Edit;
                FieldByName('status').AsString:='Terkonfirmasi';
                Post;
            end;
     end else
     begin
     id_detail_sepatu:=DataModuleTokoSepatu.ZQdetailpembelian.fieldByName('id_detail_pembelian').AsString;
     with DataModuleTokoSepatu.ZQcommandSql do
     begin
          SQL.Clear;
          SQL.Add('select * from stok_sepatu');
          Active:=True;

          Append;
          FieldByName('id_stok').AsString:=id_stok;
          FieldByName('id_detail_sepatu').AsString:=DataModuleTokoSepatu.ZQdetailpembelian.fieldByName('id_detail_sepatu').AsString;
          FieldByName('harga_sepatu').AsString := '0';
          FieldByName('jumlah_stok').AsString := DataModuleTokoSepatu.ZQdetailpembelian.fieldByName('jumlah_sepatu').AsString;
          Post;

          DataModuleTokoSepatu.ZQstok.Refresh;

          SQL.Clear;
          SQL.Add('select * from detail_pembelian where id_detail_pembelian ="'+id_detail_sepatu+'"');
          Active:=True;

          Edit;
          FieldByName('status').AsString:='Terkonfirmasi';
          Post;
     end;

     end;
     DataModuleTokoSepatu.ZQdetailpembelian.Refresh;
     DataModuleTokoSepatu.ZQdaftarsepatu.Refresh;
     DataModuleTokoSepatu.ZQstok.Refresh;
     MessageDlg('Stok Berhasil Ditambahkan', mtInformation, [mbOK], 0);


       end;
  end;
end;


procedure TF_PopUp.cbb_nofakturChange(Sender: TObject);
begin
  with DataModuleTokoSepatu.ZQpembelian do
  begin
    SQL.Clear;
    SQL.Add('SELECT `pembelian`.* , `supplier`.* '
            + ' FROM '
            + ' `tokosepatu`.`supplier` '
            + ' INNER JOIN `tokosepatu`.`pembelian` '
            + ' ON (`supplier`.`id_supplier` = `pembelian`.`id_supplier`) '
            + ' where pembelian.no_faktur_pembelian like "'+cbb_nofaktur.Text+'%"');
    Active:=True;
  end;

  with DataModuleTokoSepatu.ZQdetailpembelian do
  begin
    SQL.Clear;
    SQL.Add( ' SELECT `pembelian`.* , `supplier`.* , `detail_pembelian`.* , `detail_sepatu`.* '
           + ' , `daftar_sepatu`.*  '
           + ' FROM '
           + ' `pembelian` '
           + ' INNER JOIN `detail_pembelian` '
           + ' ON (`pembelian`.`no_faktur_pembelian` = `detail_pembelian`.`no_faktur_pembelian`) '
           + ' INNER JOIN `detail_sepatu` '
           + ' ON (`detail_pembelian`.`id_detail_sepatu` = `detail_sepatu`.`id_detail_sepatu`) '
           + ' INNER JOIN `daftar_sepatu` '
           + ' ON (`detail_sepatu`.`id_sepatu` = `daftar_sepatu`.`id_sepatu`) '
           + ' INNER JOIN `supplier` '
           + ' ON (`supplier`.`id_supplier` = `pembelian`.`id_supplier`) '
           + ' where detail_pembelian.no_faktur_pembelian like "'+cbb_nofaktur.Text+'%" '
           + ' and detail_pembelian.status = "Belum Konfirmasi" ');

    Active:=True;

  end;


end;

procedure TF_PopUp.btn_PilihStokClick(Sender: TObject);
var
  id_Stok:string;
  jml_stok:Integer;
begin
  id_Stok:=DataModuleTokoSepatu.ZQstok.fieldByName('id_stok').AsString;

  with DataModuleTokoSepatu.ZQcommandSql do
  begin
    SQL.Clear;
    SQL.Add('select * from stok_sepatu where id_stok = "'+id_Stok+'"');
    Active:=True;
  end;

  jml_stok:= DataModuleTokoSepatu.ZQcommandSql.FieldByName('jumlah_stok').AsInteger;
  if jml_stok <=0 then
  MessageDlg('Stok Kosong',mtInformation,[mbOK],0)
  else
  begin

  with DataModuleTokoSepatu.ZQstok do
  begin
    FormMenuUtama.L_IdSepatuFP.Caption := fieldByName('id_sepatu').AsString;
    FormMenuUtama.L_NamaSepatuFP.Caption := fieldByName('nama_sepatu').AsString;
    FormMenuUtama.L_JenisSepatuFP.Caption := fieldByName('jenis_sepatu').AsString;
    FormMenuUtama.L_BrandFP.Caption := fieldByName('brand').AsString;
    FormMenuUtama.L_SatuanFP.Caption := fieldByName('satuan').AsString;
    FormMenuUtama.L_VarianFP.Caption := fieldByName('varian').AsString;
    FormMenuUtama.L_WanaFP.Caption := fieldByName('warna').AsString;
    FormMenuUtama.L_HargaJualFP.Caption := fieldByName('harga_sepatu').AsString;
  end;
  F_PopUp.Close;
  end;

end;

end.

