unit CadMotoristas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Buttons, ToolWin, StdCtrls, ExtCtrls, Grids, DBGrids,
  DB, Mask, DBCtrls, ADODB;

type
  TFCadMotoristas = class(TForm)
    StatusBar1: TStatusBar;
    Panel1: TPanel;
    BNovo: TSpeedButton;
    BEditar: TSpeedButton;
    BGravar: TSpeedButton;
    BExcluir: TSpeedButton;
    BCancel: TSpeedButton;
    Label1: TLabel;
    ADODataSet1: TADODataSet;
    GroupBox1: TGroupBox;
    ADODataSet1COD_MOTO: TIntegerField;
    ADODataSet1NOME_MOTO: TWideStringField;
    Label2: TLabel;
    DBCodMoto: TDBEdit;
    DataSource1: TDataSource;
    Label3: TLabel;
    DBNomeMoto: TDBEdit;
    DBGrid1: TDBGrid;
    StatusBar2: TStatusBar;
    procedure BCancelClick(Sender: TObject);
    procedure BNovoClick(Sender: TObject);
    procedure BEditarClick(Sender: TObject);
    procedure BGravarClick(Sender: TObject);
    procedure BExcluirClick(Sender: TObject);
    procedure ADODataSet1BeforeDelete(DataSet: TDataSet);
    procedure ADODataSet1BeforePost(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCadMotoristas: TFCadMotoristas;

implementation

uses Principal;

{$R *.dfm}

procedure TFCadMotoristas.BCancelClick(Sender: TObject);
begin
ADODataSet1.Cancel;
Close;
end;

procedure TFCadMotoristas.BNovoClick(Sender: TObject);
begin
//Habilita Fields
DBCodMoto.Enabled := True;
DBNomeMoto.Enabled := True;
DBCodMoto.SetFocus;
//Acrescenta Registro ao Final
ADODataSet1.Last;
ADODataSet1.Append;
//Desabilita DBGrid
DBGrid1.Enabled := False;
//Controle dos Botões
BNovo.Enabled := False;
BEditar.Enabled := False;
BGravar.Enabled := True;
BExcluir.Enabled := False;
BCancel.Enabled := True;
end;

procedure TFCadMotoristas.BEditarClick(Sender: TObject);
begin
//Habilita Fields
DBCodMoto.Enabled := True;
DBNomeMoto.Enabled := True;
//Ativa Edição de Registro
ADODataSet1.Edit;
//Desabilita DBGrid
DBGrid1.Enabled := False;
//Controle dos Botoões
BNovo.Enabled := False;
BEditar.Enabled := False;
BGravar.Enabled := True;
BExcluir.Enabled := False;
BCancel.Enabled := True;
end;

procedure TFCadMotoristas.BGravarClick(Sender: TObject);
begin
//Checagem de Preenchimento correto dos Fields
if DBCodMoto.Text = '' then
begin
    ShowMessage('R.E. Não Informado!');
    Abort;
end;

if DBNomeMoto.Text = '' then
begin
    ShowMessage('Nome Não Informado!');
    Abort;
end;
//Grava Registro
ADODataSet1.Post;
//Atualiza Banco de Dados
ADODataSet1.Active := False;
ADODataSet1.Active := True;
DBCodMoto.Enabled := False;
DBNomeMoto.Enabled := False;
//Habilita DBGrid
DBGrid1.Enabled := True;
//Controle dos Botões
BNovo.Enabled := True;
BEditar.Enabled := True;
BGravar.Enabled := False;
BExcluir.Enabled := True;
BCancel.Enabled := True;
end;

procedure TFCadMotoristas.BExcluirClick(Sender: TObject);
begin
//Deleta Registro do Banco
ADODataSet1.Delete;
//Habilita DBGrid
DBGrid1.Enabled := True;
//Controle dos Botoões
BNovo.Enabled := True;
BEditar.Enabled := True;
BGravar.Enabled := False;
BExcluir.Enabled := True;
BCancel.Enabled := True;
end;

procedure TFCadMotoristas.ADODataSet1BeforeDelete(DataSet: TDataSet);
begin
if Application.MessageBox('Confirma Exclusão ?','Confirme',
        MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDNO then
        Abort; //interrompe e não exclui o registro
end;

procedure TFCadMotoristas.ADODataSet1BeforePost(DataSet: TDataSet);
begin
if Application.MessageBox('Confirma Cadastro?','Confirme',
        MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDNO then
        Abort;
end;

procedure TFCadMotoristas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
ADODataSet1.Cancel;
Action := caFree; // remove o form da memória
FCadMotoristas := NIL; // informa que foi destruído
end;

procedure TFCadMotoristas.FormActivate(Sender: TObject);
begin
//Atualiza Banco
ADODataSet1.Active := False;
ADODataSet1.Active := True;
//Desabilita Fields
DBCodMoto.Enabled := False;
DBNomeMoto.Enabled := False;
//Habilita DBGrid
DBGrid1.Enabled := True;
//Controle dos Botões
BNovo.Enabled := True;
BEditar.Enabled := True;
BGravar.Enabled := False;
BExcluir.Enabled := True;
BCancel.Enabled := True;
end;

end.
