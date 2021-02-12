unit Relatorio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls;

type
  TFRelatorio = class(TForm)
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
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    PageFooterBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRDBText12: TQRDBText;
    QRShape4: TQRShape;
    QRShape1: TQRShape;
    QRShape3: TQRShape;
    QRShape2: TQRShape;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelatorio: TFRelatorio;

implementation

uses Movimentacao;

{$R *.dfm}

procedure TFRelatorio.FormCreate(Sender: TObject);
begin
FMovimentacao.ADOQuery1.Open;
end;

procedure TFRelatorio.FormClose(Sender: TObject; var Action: TCloseAction);
begin
FMovimentacao.ADOQuery1.Close;
end;

end.
