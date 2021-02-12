unit About;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, jpeg, Buttons;

type
  TFAbout = class(TForm)
    StatusBar1: TStatusBar;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Image1: TImage;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    BitBtn1: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FAbout: TFAbout;

implementation

uses Principal;

{$R *.dfm}

procedure TFAbout.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action := caFree; // remove o form da memória
FAbout := NIL; // informa que foi destruído
end;

procedure TFAbout.BitBtn1Click(Sender: TObject);
begin
Close;
end;

end.
