unit Saida;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons, ExtCtrls, DB, ADODB, DBCtrls, Mask,
  Grids, DBGrids;

type
  TFSaida = class(TForm)
    Panel1: TPanel;
    BNovo: TSpeedButton;
    BEditar: TSpeedButton;
    BGravar: TSpeedButton;
    BCancel: TSpeedButton;
    Label1: TLabel;
    StatusBar1: TStatusBar;
    GroupBox1: TGroupBox;
    ADODataSet1: TADODataSet;
    ADODataSet2: TADODataSet;
    ADODataSet3: TADODataSet;
    ADODataSet4: TADODataSet;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    DataSource3: TDataSource;
    DataSource4: TDataSource;
    ADODataSet4DATA_SAIDA: TDateTimeField;
    ADODataSet4HORA_SAIDA: TDateTimeField;
    ADODataSet4KM_SAIDA: TIntegerField;
    ADODataSet4DESTINO: TWideStringField;
    Label2: TLabel;
    DBDataSaida: TDBEdit;
    Label3: TLabel;
    DBHoraSaida: TDBEdit;
    Label4: TLabel;
    DBKmSaida: TDBEdit;
    Label5: TLabel;
    DBDestino: TDBEdit;
    ADODataSet4COD_MOTO: TIntegerField;
    ADODataSet4COD_VEIC: TIntegerField;
    DBComboCodMoto: TDBLookupComboBox;
    DBComboCodVeic: TDBLookupComboBox;
    Label6: TLabel;
    Label7: TLabel;
    DBGrid1: TDBGrid;
    ADODataSet4DATA_ENTRADA: TDateTimeField;
    ADODataSet4HORA_ENTRADA: TDateTimeField;
    ADODataSet4KM_ENTRADA: TIntegerField;
    ADODataSet4OBS: TWideStringField;
    ADODataSet4KM_PERCORRIDO: TIntegerField;
    StatusBar2: TStatusBar;
    procedure BCancelClick(Sender: TObject);
    procedure BNovoClick(Sender: TObject);
    procedure BEditarClick(Sender: TObject);
    procedure BGravarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ADODataSet4BeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FSaida: TFSaida;

implementation

uses Principal;

{$R *.dfm}

procedure TFSaida.BCancelClick(Sender: TObject);
begin
ADODataSet4.Cancel;
Close;
end;

procedure TFSaida.BNovoClick(Sender: TObject);
begin
//Habilita Fields
DBDataSaida.Enabled := True;
DBHoraSaida.Enabled := True;
DBKmSaida.Enabled := True;
DBComboCodVeic.Enabled := True;
DBComboCodMoto.Enabled := True;
DBDestino.Enabled := True;
DBKmSaida.SetFocus;
//Acrescenta ao Final
ADODataSet4.Last;
ADODataSet4.Append;
//Desabilita DBGrid
DBGrid1.Enabled := False;
//Seta Data e Hora do Sistema nos Fields
DBDataSaida.Text := FormatDateTime('dd/mm/yyyy',now);
DBHoraSaida.Text := FormatDateTime('HH:nn',now);
//Controle dos Botões
BNovo.Enabled := False;
BEditar.Enabled := False;
BGravar.Enabled := True;
BCancel.Enabled := True;
end;

procedure TFSaida.BEditarClick(Sender: TObject);
begin
//Habilita Fields
DBDataSaida.Enabled := True;
DBHoraSaida.Enabled := True;
DBKmSaida.Enabled := True;
DBComboCodVeic.Enabled := True;
DBComboCodMoto.Enabled := True;
DBDestino.Enabled := True;
DBKmSaida.SetFocus;
//Habilita Edição
ADODataSet4.Edit;
//Desabilita DBGrid
DBGrid1.Enabled := False;
//Controle dos Botões
BNovo.Enabled := False;
BEditar.Enabled := False;
BGravar.Enabled := True;
BCancel.Enabled := True;
end;

procedure TFSaida.BGravarClick(Sender: TObject);
begin
//Checagem de Preenchimento correto dos Dados
if DBDataSaida.EditText = '' then
begin
    ShowMessage('Data de Saída Não Informada!');
    Abort;
end;

if DBDataSaida.EditText = '__/__/____' then
begin
    ShowMessage('Data de Saída Não Informada!');
    Abort;
end;

if DBHoraSaida.EditText = '' then
begin
    ShowMessage('Hora de Saída Não Informada!');
    Abort;
end;

if DBHoraSaida.EditText = '__:__' then
begin
    ShowMessage('Hora de Saída Não Informada!');
    Abort;
end;

if DBKmSaida.Text = '' then
begin
    ShowMessage('KM de Saída Não Informada!');
    Abort;
end;

if DBComboCodVeic.Text = '' then
begin
    ShowMessage('Veículo Não Selecionado!');
    Abort;
end;

if DBComboCodMoto.Text = '' then
begin
    ShowMessage('Motorista Não Selecionado!');
    Abort;
end;

if DBDestino.Text = '' then
begin
    ShowMessage('Destino Não Informado!');
    Abort;
end;
//Grava Registro
ADODataSet4.Post;
//Atualiza Banco de Dados
ADODataSet4.Active := False;
ADODataSet4.Active := True;
//Desabilita Fields
DBDataSaida.Enabled := False;
DBHoraSaida.Enabled := False;
DBKmSaida.Enabled := False;
DBComboCodVeic.Enabled := False;
DBComboCodMoto.Enabled := False;
DBDestino.Enabled := False;
//Habilita DBGrid
DBGrid1.Enabled := True;
//Controle dos Botões
BNovo.Enabled := True;
BEditar.Enabled := True;
BGravar.Enabled := False;
BCancel.Enabled := True;
end;

procedure TFSaida.FormActivate(Sender: TObject);
begin
//Cancela Alterações
ADODataSet4.Cancel;
//Atualiza Banco de Dados
ADODataSet4.Active := False;
ADODataSet4.Active := True;
//Desabilita Fields
DBDataSaida.Enabled := False;
DBHoraSaida.Enabled := False;
DBKmSaida.Enabled := False;
DBComboCodVeic.Enabled := False;
DBComboCodMoto.Enabled := False;
DBDestino.Enabled := False;
//Habilita DBGrid
DBGrid1.Enabled := True;
//Controle dos Botoões
BNovo.Enabled := True;
BEditar.Enabled := True;
BGravar.Enabled := False;
BCancel.Enabled := True;
end;

procedure TFSaida.FormClose(Sender: TObject; var Action: TCloseAction);
begin
ADODataSet4.Cancel;
ADODataSet4.Active := False;

Action := caFree; // remove o form da memória
FSaida := NIL; // informa que foi destruído (não criado)
end;

procedure TFSaida.ADODataSet4BeforePost(DataSet: TDataSet);
begin
if Application.MessageBox('Confirma Saída ?','Confirme',
        MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDNO then
        Abort; //interrompe e não exclui o registro
end;


end.
