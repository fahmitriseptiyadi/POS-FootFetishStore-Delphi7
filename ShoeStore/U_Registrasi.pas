unit U_Registrasi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  TFormRegistrasi = class(TForm)
    L_1: TLabel;
    L_2: TLabel;
    E_namaFR: TEdit;
    L_3: TLabel;
    E_tlpFR: TEdit;
    L_4: TLabel;
    E_usernameFR: TEdit;
    L_5: TLabel;
    E_passFR: TEdit;
    btnRegistrasi: TBitBtn;
    shp21: TShape;
    L_6: TLabel;
    L_7: TLabel;
    L_8: TLabel;
    L_9: TLabel;
    btn1: TBitBtn;
    procedure btnRegistrasiClick(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRegistrasi: TFormRegistrasi;

implementation

uses U_DataModule, U_menu_utama;

{$R *.dfm}

procedure TFormRegistrasi.btnRegistrasiClick(Sender: TObject);
begin
  if E_namaFR.Text = '' then
    MessageDlg('Anda Belum Mengisi Field Nama!', mtWarning, [mbOK], 0)
  else if E_tlpFR.Text = '' then
    MessageDlg('Anda Belum Mengisi Field No.Telepon!', mtWarning, [mbOK], 0)
  else if E_usernameFR.Text = '' then
    MessageDlg('Anda Belum Mengisi Field Username!', mtWarning, [mbOK], 0)
  else if E_passFR.Text = '' then
    MessageDlg('Anda Belum Mengisi Field Password!', mtWarning, [mbOK], 0)
  else
  begin
  with DataModuleTokoSepatu.ZQcommandSql do
  begin
    SQL.Clear;
    SQL.Add('select * from admin');
    Active := True;

    Append;
    FieldByName('nama_user').AsString := E_namaFR.Text;
    FieldByName('no_tlp_user').AsString := E_tlpFR.Text;
    FieldByName('username').AsString := E_usernameFR.Text;
    FieldByName('password').AsString := E_passFR.Text;

    MessageDlg('Anda Yakin Data Yang Anda Masukkan Sudah Benar?', mtInformation, [mbYes], 0) ;

    Post;
    MessageDlg('Registrasi Admin Baru Berhasil !', mtInformation, [mbOK], 0);
    DataModuleTokoSepatu.ZQadmin.Refresh;

// Refresh field menjadi kosong kembali
    E_namaFR.Text:='';
    E_tlpFR.Text:='';
    E_usernameFR.Text:='';
    E_passFR.Text:='';


  end;

end;
end;

procedure TFormRegistrasi.btn1Click(Sender: TObject);
begin
  FormRegistrasi.Close;
  FormMenuUtama.Show;

end;

end.

