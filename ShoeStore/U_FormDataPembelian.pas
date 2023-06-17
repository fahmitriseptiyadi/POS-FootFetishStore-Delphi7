unit U_FormDataPembelian;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, frxpngimage, ExtCtrls;

type
  TFormDataPembelian = class(TForm)
    L_1: TLabel;
    dbgrd3: TDBGrid;
    L_2: TLabel;
    cbb1: TComboBox;
    btn_1: TButton;
    img_printdatapembelian: TImage;
    img_exportdatapembelian: TImage;
    btn_KembaliFormDataPembelian: TButton;
    procedure img_exportdatapembelianClick(Sender: TObject);
    procedure img_printdatapembelianClick(Sender: TObject);
    procedure btn_KembaliFormDataPembelianClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormDataPembelian: TFormDataPembelian;

implementation

uses
  U_DataModule, U_FormDataPenjualan;

{$R *.dfm}

procedure TFormDataPembelian.img_exportdatapembelianClick(Sender: TObject);
begin
  if (application.MessageBox('Anda Yakin Ingin Mengexport Data', 'Konfirmasi',
    MB_YESNo) = ID_YES) then
    DataModuleTokoSepatu.mxdtstxprt1.Execute;

end;

procedure TFormDataPembelian.img_printdatapembelianClick(Sender: TObject);
begin
  if (application.MessageBox('Anda Yakin Ingin Print Data Pembelian', 'Konfirmasi',
    MB_YESNo) = ID_YES) then
  DataModuleTokoSepatu.frxrprt1.LoadFromFile(ExtractFilePath(Application.ExeName) +
    'DataPembelianDariSupplier.fr3');
  DataModuleTokoSepatu.frxrprt1.ShowReport();

end;

procedure TFormDataPembelian.btn_KembaliFormDataPembelianClick(
  Sender: TObject);
begin
  FormDataPembelian.Close;

end;

end.
