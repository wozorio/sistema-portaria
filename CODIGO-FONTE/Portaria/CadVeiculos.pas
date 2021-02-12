unit CadVeiculos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, ComCtrls, StdCtrls, Buttons, ExtCtrls, Grids,
  DBGrids, Mask, DBCtrls;

type
  TFCadVeiculos = class(TForm)
    Panel1: TPanel;
    BNovo: TSpeedButton;
    BEditar: TSpeedButton;
    BGravar: TSpeedButton;
    BExcluir: TSpeedButton;
    BCancel: TSpeedButton;
    Label1: TLabel;
    StatusBar1: TStatusBar;
    ADODataSet1: TADODataSet;
    GroupBox1: TGroupBox;
    ADODataSet1COD_VEIC: TIntegerField;
    ADODataSet1TIPO_VEIC: TWideStringField;
    Label2: TLabel;
    DBCodVeic: TDBEdit;
    DataSource1: TDataSource;
    Label3: TLabel;
    DBTipoVeic: TDBEdit;
    DBGrid1: TDBGrid;
    StatusBar2: TStatusBar;
    procedure BCancelClick(Sender: TObject);
    procedure BNovoClick(Sender: TObject);
    procedure BEditarClick(Sender: TObject);
    procedure BGravarClick(Sender: TObject);
    procedure BExcluirClick(Sender: TObject);
    procedure ADODataSet1BeforePost(DataSet: TDataSet);
    procedure ADODataSet1BeforeDelete(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCadVeiculos: TFCadVeiculos;

implementation

uses Principal;

{$R *.dfm}

procedure TFCadVeiculos.BCancelClick(Sender: TObject);
begin
ADODataSet1.Cancel;
Close;
end;

procedure TFCadVeiculos.BNovoClick(Sender: TObject);
begin
//Habilita Fields
DBCodVeic.Enabled := True;
DBTipoVeic.Enabled := True;
DBCodVeic.SetFocus;
//Acrescenta ao Final
ADODataSet1.Last;
ADODataSet1.Append;
//Desabilita DBGrid
DBGrid1.Enabled := False;
//Controle  dos Botões
BNovo.Enabled := False;
BEditar.Enabled := False;
BGravar.Enabled := True;
BExcluir.Enabled := False;
BCancel.Enabled := True;
end;

procedure TFCadVeiculos.BEditarClick(Sender: TObject);
begin
//Habilita Fields
DBCodVeic.Enabled := True;
DBTipoVeic.Enabled := True;
//Ativa Edição
ADODataSet1.Edit;
//Desabilita DBGrid
DBGrid1.Enabled := False;
//Controle dos Botões
BNovo.Enabled := False;
BEditar.Enabled := False;
BGravar.Enabled := True;
BExcluir.Enabled := False;
BCancel.Enabled := True;
end;

procedure TFCadVeiculos.BGravarClick(Sender: TObject);
begin
//Checagem de Preenchimento correto dos Fields
if DBCodVeic.Text = '' then
begin
    ShowMessage('Prefixo Não Informado ! ! !');
    Abort;
end;
if DBTipoVeic.Text = '' then
begin
    ShowMessage('Tipo Não Informado ! ! !');
    Abort;
end;
//Grava Registro
ADODataSet1.Post;
//Atualiza Banco de Dados
ADODataSet1.Active := False;
ADODataSet1.Active := True;
//Desabilita Fields
DBCodVeic.Enabled := False;
DBTipoVeic.Enabled := False;
//Habilita DBGrid
DBGrid1.Enabled := True;
//Controle dos Botões
BNovo.Enabled := True;
BEditar.Enabled := True;
BGravar.Enabled := False;
BExcluir.Enabled := True;
BCancel.Enabled := True;
end;

procedure TFCadVeiculos.BExcluirClick(Sender: TObject);
begin
//Deleta Registro
ADODataSet1.Delete;
//Habilita DBGrid
DBGrid1.Enabled := True;
//Controle dos Botões
BNovo.Enabled := True;
BEditar.Enabled := True;
BGravar.Enabled := False;
BExcluir.Enabled := True;
BCancel.Enabled := True;
end;

procedure TFCadVeiculos.ADODataSet1BeforePost(DataSet: TDataSet);
begin
if Application.MessageBox('Confirma Cadastro?','Confirme',
        MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDNO then
        Abort;
end;

procedure TFCadVeiculos.ADODataSet1BeforeDelete(DataSet: TDataSet);
begin
if Application.MessageBox('Confirma Exclusão?','Confirme',
        MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDNO then
        Abort;
end;

procedure TFCadVeiculos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
ADODataSet1.Cancel;
Action := caFree; // remove o form da memória
FCadVeiculos := NIL; // informa que foi destruído
end;

procedure TFCadVeiculos.FormActivate(Sender: TObject);
begin
//Atualiza Banco de Dados
ADODataSet1.Active := False;
ADODataSet1.Active := True;
//Desabilita Fields
DBCodVeic.Enabled := False;
DBTipoVeic.Enabled := False;
//Habilita DBGrid
DBGrid1.Enabled := True;
//Controle do Botões
BNovo.Enabled := True;
BEditar.Enabled := True;
BGravar.Enabled := False;
BExcluir.Enabled := True;
BCancel.Enabled := True;
end;

end.
