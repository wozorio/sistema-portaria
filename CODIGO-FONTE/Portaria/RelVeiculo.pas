unit RelVeiculo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, Prtgrid, StdCtrls, Buttons, ExtCtrls, ComCtrls,
  QRCtrls, QuickRpt;

type
  TFRelVeic = class(TForm)
    QuickRep1: TQuickRep;
    TitleBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRSysData2: TQRSysData;
    QRLabel13: TQRLabel;
    QRImage1: TQRImage;
    ColumnHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRDBText5: TQRDBText;
    QRDBText12: TQRDBText;
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    PageFooterBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRDBText13: TQRDBText;
    QRShape2: TQRShape;
    QRShape4: TQRShape;
    QRShape1: TQRShape;
    QRShape3: TQRShape;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelVeic: TFRelVeic;

implementation

uses FMovVeic, Principal;

{$R *.dfm}

procedure TFRelVeic.FormClose(Sender: TObject; var Action: TCloseAction);
begin
FMovVeiculo.ADOQuery1.Close;
end;

procedure TFRelVeic.FormCreate(Sender: TObject);
begin
FMovVeiculo.ADOQuery1.Open;
end;

end.
