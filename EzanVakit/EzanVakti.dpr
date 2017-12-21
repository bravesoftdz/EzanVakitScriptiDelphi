program EzanVakti;

uses
  Vcl.Forms,
  frm_ezanvakti1 in 'frm_ezanvakti1.pas' {frm_EzanVakit},
  Vcl.Themes,
  Vcl.Styles,
  VeriCek1 in 'VeriCek1.pas' {VeriMerkezi: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Windows10 SlateGray');
  Application.CreateForm(Tfrm_EzanVakit, frm_EzanVakit);
  Application.CreateForm(TVeriMerkezi, VeriMerkezi);
  Application.Run;
end.
