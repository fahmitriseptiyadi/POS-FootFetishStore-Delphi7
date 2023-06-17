program Aplikasi_TokoSepatu;

uses
  Forms,
  U_menu_utama in 'U_menu_utama.pas' {FormMenuUtama},
  U_DataModule in 'U_DataModule.pas' {DataModuleTokoSepatu: TDataModule},
  U_PopUp in 'U_PopUp.pas' {F_PopUp},
  U_FormDataPembelian in 'U_FormDataPembelian.pas' {FormDataPembelian},
  U_SetHarga in 'U_SetHarga.pas' {FormSetHarga},
  U_FormDataPenjualan in 'U_FormDataPenjualan.pas' {FormDataPenjualan},
  U_Registrasi in 'U_Registrasi.pas' {FormRegistrasi};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormMenuUtama, FormMenuUtama);
  Application.CreateForm(TDataModuleTokoSepatu, DataModuleTokoSepatu);
  Application.CreateForm(TF_PopUp, F_PopUp);
  Application.CreateForm(TFormDataPembelian, FormDataPembelian);
  Application.CreateForm(TFormSetHarga, FormSetHarga);
  Application.CreateForm(TFormDataPenjualan, FormDataPenjualan);
  Application.CreateForm(TFormRegistrasi, FormRegistrasi);
  Application.Run;
end.




