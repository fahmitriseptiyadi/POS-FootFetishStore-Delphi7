unit U_FormDataPenjualan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, frxpngimage, ExtCtrls;

type
  TFormDataPenjualan = class(TForm)
    L_2: TLabel;
    L_1: TLabel;
    img_printdatapembelian: TImage;
    img_exportdatapembelian: TImage;
    dbgrd3: TDBGrid;
    cbb_NoFakturPenjualan: TComboBox;
    btn_1: TButton;
    btn_KembaliFormDataPembelian: TButton;
    procedure btn_KembaliFormDataPembelianClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormDataPenjualan: TFormDataPenjualan;

implementation

uses
  U_menu_utama;

{$R *.dfm}

procedure TFormDataPenjualan.btn_KembaliFormDataPembelianClick(
  Sender: TObject);
begin
  FormDataPenjualan.Close;
  

end;

end.
