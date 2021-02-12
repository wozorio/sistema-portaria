unit Entrada;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons, ExtCtrls, Mask, DBCtrls, DB, ADODB,
  Grids, DBGrids;

type
  TFEntrada = class(TForm)
    Panel1: TPanel;
    BEditar: TSpeedButton;
    BGravar: TSpeedButton;
    BCancel: TSpeedButton;
    Label1: TLabel;
    StatusBar1: TStatusBar;
    ADODataSet3: TADODataSet;
    DataSource3: TDataSource;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    DBDataEntrada: TDBEdit;
    Label3: TLabel;
    DBHoraEntrada: TDBEdit;
    Label4: TLabel;
    DBKmEntrada: TDBEdit;
    Label5: TLabel;
    DBKMPercorrida: TDBEdit;
    Label6: TLabel;
    DBObs: TDBEdit;
    DBGrid1: TDBGrid;
    StatusBar2: TStatusBar;
    ADODataSet3COD_VEIC: TIntegerField;
    ADODataSet3DATA_SAIDA: TDateTimeField;
    ADODataSet3HORA_SAIDA: TDateTimeField;
    ADODataSet3KM_SAIDA: TIntegerField;
    ADODataSet3DESTINO: TWideStringField;
    ADODataSet3COD_MOTO: TIntegerField;
    ADODataSet3DATA_ENTRADA: TDateTimeField;
    ADODataSet3HORA_ENTRADA: TDateTimeField;
    ADODataSet3KM_ENTRADA: TIntegerField;
    ADODataSet3OBS: TWideStringField;
    ADODataSet3KM_PERCORRIDO: TIntegerField;
    BCalc: TBitBtn;
    Label7: TLabel;
    DBKMSaida: TDBEdit;
    Label8: TLabel;
    DBHoraSaida: TDBEdit;
    Label9: TLabel;
    DBDataSaida: TDBEdit;
    procedure BCancelClick(Sender: TObject);
    procedure BEditarClick(Sender: TObject);
    procedure BGravarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ADODataSet3BeforePost(DataSet: TDataSet);
    procedure BCalcClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FEntrada: TFEntrada;

implementation

uses Principal, Saida;

{$R *.dfm}

procedure TFEntrada.BCancelClick(Sender: TObject);
begin
ADODataSet3.Cancel;
Close;
end;

procedure TFEntrada.BEditarClick(Sender: TObject);
begin
//Habilita Fields
DBDataEntrada.Enabled := True;
DBHoraEntrada.Enabled := True;
DBKmEntrada.Enabled := True;
DBObs.Enabled := True;
DBKmEntrada.SetFocus;
//Ativa Edição
ADODataSet3.Edit;
//Desabilita DBGrid
DBGrid1.Enabled := False;
//Controle dos Botões
BEditar.Enabled := False;
BGravar.Enabled := True;
BCancel.Enabled := True;
//Seta Data e Hora do Sistema nos Fields
DBDataEntrada.Text := FormatDateTime('dd/mm/yyyy',now);
DBHoraEntrada.Text := FormatDateTime('HH:nn',now);
end;

procedure TFEntrada.BGravarClick(Sender: TObject);
var DIni,DFin,HIni,HFin: TDateTime;
begin
//Checagem de Preenchimento correto dos Fields
if DBDataEntrada.EditText = '' then
begin
    ShowMessage('Data de Entrada não Informada!');
    Abort;
end;

if DBDataEntrada.EditText = '__/__/____' then
begin
    ShowMessage('Data de Entrada Não Informada!');
    Abort;
end;

DIni := StrToDate(DBDataSaida.Text);
DFin := StrToDate(DBDataEntrada.Text);

if DIni > DFin then
begin
    ShowMessage('Data de Entrada Menor Que Data de Saída!');
    Abort;
end;

if DBHoraEntrada.EditText = '' then
begin
    ShowMessage('Hora de Entrada Não Informada!');
    Abort;
end;

if DBHoraEntrada.EditText = '__:__' then
begin
    ShowMessage('Hora de Entrada Não Informada!');
    Abort;
end;

HIni := StrToTime(DBHoraSaida.Text);
HFin := StrToTime(DBHoraEntrada.Text);

if DIni = DFin then
begin
      if HIni >= HFin then
  begin
      ShowMessage('Hora de Entrada Menor ou Igual Hora de Saída!');
      Abort;
  end;
end;

if DBKMPercorrida.Text < '0' then
begin
    ShowMessage('KM de Entrada Menor Que KM de Saída!');
    Abort;
end;

    if DBKmEntrada.Text = '' then
begin
    ShowMessage('KM de Entrada Não Informada!');
    Abort;
end;

//Grava Registro
ADODataSet3.Post;
//Atualiza Banco de Dados
ADODataSet3.Active := False;
ADODataSet3.Active := True;
//Desabilita Fields
DBDataEntrada.Enabled := False;
DBHoraEntrada.Enabled := False;
DBKmEntrada.Enabled := False;
DBObs.Enabled := False;
//Habilita DBGrid
DBGrid1.Enabled := True;
//Controle dos Botões
BEditar.Enabled := True;
BGravar.Enabled := False;
BCancel.Enabled := True;

end;

procedure TFEntrada.FormActivate(Sender: TObject);
begin
//Cancela Alteração
ADODataSet3.Cancel;
//Atualiza Banco de Dados
ADODataSet3.Active := False;
ADODataSet3.Active := True;
//Desabilita Fields
DBDataEntrada.Enabled := False;
DBHoraEntrada.Enabled := False;
DBKmEntrada.Enabled := False;
DBKMPercorrida.Enabled := False;
DBObs.Enabled := False;
//Habilita DBGrid
DBGrid1.Enabled := True;
//Controle dos Botoões
BEditar.Enabled := True;
BGravar.Enabled := False;
BCancel.Enabled := True;
end;

procedure TFEntrada.FormClose(Sender: TObject; var Action: TCloseAction);
begin
ADODataSet3.Cancel;
Action := caFree; // remove o form da memória
FEntrada := NIL; // informa que foi destruído
end;

procedure TFEntrada.ADODataSet3BeforePost(DataSet: TDataSet);
begin
if Application.MessageBox('Confirma Entrada ?','Confirme',
        MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDNO then
        Abort; //interrompe e não exclui o registro
end;


procedure TFEntrada.BCalcClick(Sender: TObject);
var KmSaida,KmEntrada,KmPercorrida: Integer;
begin
    KmSaida := StrToInt(DBKmSaida.Text);
    KmEntrada := StrToInt(DBKmEntrada.Text);

    KmPercorrida := (KmEntrada - KmSaida);

    DBKMPercorrida.Text := IntToStr(KMPercorrida);

end;

end.
