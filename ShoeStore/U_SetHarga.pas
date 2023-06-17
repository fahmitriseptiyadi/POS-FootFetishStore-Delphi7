unit U_SetHarga;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFormSetHarga = class(TForm)
    E_SetHarga: TEdit;
    L_1: TLabel;
    btn_SetHarga: TButton;
    procedure btn_SetHargaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormSetHarga: TFormSetHarga;

implementation

uses U_DataModule, U_menu_utama;

{$R *.dfm}

procedure TFormSetHarga.btn_SetHargaClick(Sender: TObject);
var
  id_stok:string;
begin
  id_stok:=DataModuleTokoSepatu.ZQstok.fieldByName('id_stok').AsString;
  with DataModuleTokoSepatu.ZQcommandSql do
  begin
    SQL.Clear;
    SQL.Add('select * from stok_sepatu where id_stok = "'+id_stok+'"');
    Active:=True;

    Edit;
    fieldByName('harga_sepatu').AsString:=E_SetHarga.Text;
    post;

    MessageDlg(' Harga Sepatu Berhasil Diedit ',mtInformation,[mbOK],0);
    FormMenuUtama.L_HargaJualStok.Caption:=E_SetHarga.Text;
    
    DataModuleTokoSepatu.ZQstok.Refresh;
  end;
  FormSetHarga.Close;

end;

end.
