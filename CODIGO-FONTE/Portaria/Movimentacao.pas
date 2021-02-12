unit Movimentacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, ComCtrls, Mask, DB, ADODB, Grids,
  DBGrids;

type
  TFMovimentacao = class(TForm)
    StatusBar1: TStatusBar;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    StatusBar2: TStatusBar;
    BOk: TBitBtn;
    BCancel: TBitBtn;
    MaskDataInicial: TMaskEdit;
    MaskDataFinal: TMaskEdit;
    ADOQuery1: TADOQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BOkClick(Sender: TObject);
    procedure BCancelClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ADOQuery1BeforeOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMovimentacao: TFMovimentacao;

implementation

uses Principal, Relatorio, Saida, Alteracao;

{$R *.dfm}

procedure TFMovimentacao.BOkClick(Sender: TObject);
begin
Application.CreateForm(TFRelatorio,FRelatorio);
FRelatorio.QuickRep1.PreviewModal;
FRelatorio.Free;
end;

procedure TFMovimentacao.FormActivate(Sender: TObject);
begin
MaskDataInicial.Clear;
MaskDataFinal.Clear;
MaskDataInicial.SetFocus;
end;

procedure TFMovimentacao.BCancelClick(Sender: TObject);
begin
Close;
end;

procedure TFMovimentacao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action := caFree; // remove o form da memória
FMovimentacao := NIL; // informa que foi destruído
end;

procedure TFMovimentacao.ADOQuery1BeforeOpen(DataSet: TDataSet);
var DIni,DFin: TDateTime;
begin
DIni := StrToDate(MaskDataInicial.Text);
DFin := StrToDate(MaskDataFinal.Text);
if DIni > DFin then
    begin
    ShowMessage('Data Inicial Maior que Data Final!');
    Abort;
end;
with ADOQuery1 do
begin
    Parameters.ParamByName('DATA_INICIAL').Value := DIni;
    Parameters.ParamByName('DATA_FINAL').Value := DFin;
end;
end;
end.
