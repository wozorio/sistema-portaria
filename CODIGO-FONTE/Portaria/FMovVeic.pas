unit FMovVeic;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, DB, ADODB, StdCtrls, Mask, ComCtrls, Buttons, Grids,
  DBGrids;

type
  TFMovVeiculo = class(TForm)
    GroupBox1: TGroupBox;
    StatusBar2: TStatusBar;
    StatusBar1: TStatusBar;
    Label1: TLabel;
    Label2: TLabel;
    BOk: TBitBtn;
    BCancel: TBitBtn;
    ADOQuery1: TADOQuery;
    ComboVeic: TDBLookupComboBox;
    ADOQuery2: TADOQuery;
    DataSource2: TDataSource;
    MaskDataInicial: TMaskEdit;
    MaskDataFinal: TMaskEdit;
    Label3: TLabel;
    procedure BOkClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BCancelClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ADOQuery1BeforeOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMovVeiculo: TFMovVeiculo;

implementation

uses Principal, Relatorio, Movimentacao, RelVeiculo, Saida;

{$R *.dfm}

procedure TFMovVeiculo.BOkClick(Sender: TObject);
begin
Application.CreateForm(TFRelVeic,FRelVeic);
FRelVeic.QuickRep1.PreviewModal;
FRelVeic.Free;
end;

procedure TFMovVeiculo.FormActivate(Sender: TObject);
begin
MaskDataInicial.Clear;
MaskDataFinal.Clear;
MaskDataInicial.SetFocus;
end;

procedure TFMovVeiculo.BCancelClick(Sender: TObject);
begin
Close;
end;

procedure TFMovVeiculo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action := caFree; // remove o form da memória
FMovVeiculo := NIL; // informa que foi destruído
end;

procedure TFMovVeiculo.ADOQuery1BeforeOpen(DataSet: TDataSet);
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
    Parameters.ParamByName('PVEIC').Value := ComboVeic.Text;
end;
end;
end.
