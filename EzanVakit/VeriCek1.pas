unit VeriCek1;

interface

uses
  System.SysUtils, System.Classes, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdHTTP;

type
  TVeriMerkezi = class(TDataModule)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  VeriMerkezi: TVeriMerkezi;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
