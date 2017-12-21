unit frm_ezanvakti1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.ComCtrls, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdHTTP;

type
  Tfrm_EzanVakit = class(TForm)
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DateTimePicker1: TDateTimePicker;
    ServerVakitCek: TIdHTTP;
    Sabah: TLabel;
    Ogle: TLabel;
    ikindi: TLabel;
    Aksam: TLabel;
    Yatsi: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Panel2: TPanel;
    procedure AzanTimes;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_EzanVakit: Tfrm_EzanVakit;

implementation

{$R *.dfm}

Procedure Tfrm_EzanVakit.AzanTimes;
var
 Data2, Data, CleanData: TStringList;
 Data3 ,ReplaceBefore, ReplaceAfter: string;
 I: Integer;
begin
 Data := TStringList.Create;
 Data2 := TStringList.Create;
 CleanData := TStringList.Create;


  try
   Data3 := ServerVakitCek.Get('https://bademsoftware.com/ezanvakitscript/vakitler/istanbul.php');
   Data2.Add(Data3);

         {Mr. Halil Han Badem}

   ReplaceBefore := Data2.Text;
   ReplaceAfter := StringReplace(ReplaceBefore, '<br/>', sLineBreak, [rfReplaceAll, rfIgnoreCase]);
   Data.Text := Trim(ReplaceAfter);
   DateTimePicker1.Date := Date - 1;

   for I := 0 to Data.Count - 1 do
    begin
     if (I mod 6) = 0 then
    begin
      DateTimePicker1.Date := DateTimePicker1.Date + 1;
      CleanData.Add(DateToStr(DateTimePicker1.Date));
      CleanData.Add(Data.Strings[I]);
    end
    else
     begin
      CleanData.Add(Data.Strings[I]);
     end;
    end;
     CleanData.SaveToFile('Data/times.xml');
  except
    on E:Exception do
    begin
      MessageBox(Handle ,PChar('Hata! Hatanýn çözümü için bu mesajý, SS olarak geliþtiriciye gönderiniz.' + #13 + #13 + 'Hata Mesajý:' + #13 + E.Message), 'Hata!', MB_OK + MB_ICONERROR);
      Data.Free;
      Data2.Free;
      CleanData.Free;
    end;
  end;

end;

procedure Tfrm_EzanVakit.FormShow(Sender: TObject);
var
 VeriYukle: TListBox;
 SabahV, OgleV, IkindiV, AksamV, YatsiV: Integer;
begin
 VeriYukle := TListBox.Create(nil);
 VeriYukle.Parent := Self;
 VeriYukle.Visible := False;

 if FileExists('Data\times.xml', False) then
 begin
  AzanTimes;
 end;


 if FileExists('Data\times.xml', True) then
 begin
   VeriYukle.Items.LoadFromFile('Data\Times.xml');
   SabahV := VeriYukle.Items.IndexOf(DateToStr(Date)) + 1;
   OgleV := VeriYukle.Items.IndexOf(DateToStr(Date)) + 3;
   IkindiV := VeriYukle.Items.IndexOf(DateToStr(Date)) + 4;
   AksamV := VeriYukle.Items.IndexOf(DateToStr(Date)) + 5;
   YatsiV := VeriYukle.Items.IndexOf(DateToStr(Date)) + 6;

   Sabah.Caption := VeriYukle.Items.Strings[SabahV];
   Ogle.Caption := VeriYukle.Items.Strings[OgleV];
   ikindi.Caption := VeriYukle.Items.Strings[IkindiV];
   Aksam.Caption := VeriYukle.Items.Strings[AksamV];
   Yatsi.Caption := VeriYukle.Items.Strings[YatsiV];

 end;
end;


end.
