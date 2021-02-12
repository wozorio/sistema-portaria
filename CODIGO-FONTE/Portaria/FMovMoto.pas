unit FMovMoto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, ComCtrls, DBCtrls, DB, ADODB;

type
  TFMovMotorista = class(TForm)
    StatusBar2: TStatusBar;
    StatusBar1: TStatusBar;
    GroupBox1: TGroupBox;
    MaskDataInicial: TMaskEdit;
    MaskDataFinal: TMaskEdit;
    Label1: TLabel;
    Label2: TLabel;
    BOk: TBitBtn;
    BCancel: TBitBtn;
    Label3: TLabel;
    ADOQuery1: TADOQuery;
    ADOQuery2: TADOQuery;
    DataSource2: TDataSource;
    ComboMoto: TDBLookupComboBox;
    procedure BCancelClick(Sender: TObject);
    procedure BOkClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ADOQuery1BeforeOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMovMotorista: TFMovMotorista;

implementation

uses Principal, Saida, RelVeiculo, FMovVeic, RelMotorista, Relatorio;

{$R *.dfm}

procedure TFMovMotorista.BCancelClick(Sender: TObject);
begin
Close;
end;

procedure TFMovMotorista.BOkClick(Sender: TObject);
begin
Application.CreateForm(TFRelMotorista,FRelMotorista);
FRelMotorista.QuickRep1.PreviewModal; //exibe o formulário
FRelMotorista.Free;
end;

procedure TFMovMotorista.FormActivate(Sender: TObject);
begin
MaskDataInicial.Clear;
MaskDataFinal.Clear;
MaskDataInicial.SetFocus;
end;

procedure TFMovMotorista.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action := caFree; // remove o form da memória
FMovMotorista := NIL; // informa que foi destruído
end;

procedure TFMovMotorista.ADOQuery1BeforeOpen(DataSet: TDataSet);
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
    Parameters.ParamByName('PMOTO').Value := ComboMoto.Text;
end;
end;

end.
