unit Principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ComCtrls, DB, ADODB, ExtCtrls;

type
  TFPrincipal = class(TForm)
    ADOConnection1: TADOConnection;
    StatusBar1: TStatusBar;
    MainMenu1: TMainMenu;
    MPortaria: TMenuItem;
    SMEntrada: TMenuItem;
    SMSaida: TMenuItem;
    MRelatorio: TMenuItem;
    SMPeriodoPerodo1: TMenuItem;
    SMMotorista: TMenuItem;
    SMVeculo: TMenuItem;
    MCadastro: TMenuItem;
    MMotoristas: TMenuItem;
    MVeiculos: TMenuItem;
    MAjuda: TMenuItem;
    SMSobre: TMenuItem;
    MSair: TMenuItem;
    procedure MSairClick(Sender: TObject);
    procedure MMotoristasClick(Sender: TObject);
    procedure MVeiculosClick(Sender: TObject);
    procedure SMEntradaClick(Sender: TObject);
    procedure SMSaidaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SMSobreClick(Sender: TObject);
    procedure SMGeralClick(Sender: TObject);
    procedure SMVeiculoClick(Sender: TObject);
    procedure SMMotoristaClick(Sender: TObject);
    procedure SMPeriodoPerodo1Click(Sender: TObject);
    procedure SMVeculoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPrincipal: TFPrincipal;

implementation

uses CadMotoristas, CadVeiculos, Entrada, Saida, Movimentacao, Relatorio,
  About, Alteracao, FMovVeic, FMovMoto;

{$R *.dfm}

procedure TFPrincipal.MSairClick(Sender: TObject);
begin
Close;
end;

procedure TFPrincipal.MMotoristasClick(Sender: TObject);
begin
if FCadMotoristas = NIL then //cria o form se ele não foi criado ainda
Application.CreateForm(TFCadMotoristas,FCadMotoristas);
FCadMotoristas.Show; //exibe o formulário
end;

procedure TFPrincipal.MVeiculosClick(Sender: TObject);
begin
if FCadVeiculos = NIL then //cria o form se ele não foi criado ainda
Application.CreateForm(TFCadVeiculos,FCadVeiculos);
FCadVeiculos.Show; //exibe o formulário
end;

procedure TFPrincipal.SMEntradaClick(Sender: TObject);
begin
if FEntrada = NIL then //cria o form se ele não foi criado ainda
Application.CreateForm(TFEntrada,FEntrada);
FEntrada.Show; //exibe o formulário
end;

procedure TFPrincipal.SMSaidaClick(Sender: TObject);
begin
if FSaida = NIL then //cria o form se ele não foi criado ainda
Application.CreateForm(TFSaida,FSaida);
FSaida.Show; //exibe o formulário
end;

procedure TFPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if Application.MessageBox('Deseja Realmente Sair?','Confirme',
        MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDNO then
        Abort;
end;

procedure TFPrincipal.SMSobreClick(Sender: TObject);
begin
if FAbout = NIL then //cria o form se ele não foi criado ainda
Application.CreateForm(TFAbout,FAbout);
FAbout.Show; //exibe o formulário
end;

procedure TFPrincipal.SMGeralClick(Sender: TObject);
begin
FMovimentacao.Show;
end;

procedure TFPrincipal.SMVeiculoClick(Sender: TObject);
begin
FMovVeiculo.Show;
end;

procedure TFPrincipal.SMMotoristaClick(Sender: TObject);
begin
if FMovMotorista = NIL then //cria o form se ele não foi criado ainda
Application.CreateForm(TFMovMotorista,FMovMotorista);
FMovMotorista.Show; //exibe o formulário
end;

procedure TFPrincipal.SMPeriodoPerodo1Click(Sender: TObject);
begin
if FMovimentacao = NIL then //cria o form se ele não foi criado ainda
Application.CreateForm(TFMovimentacao,FMovimentacao);
FMovimentacao.Show; //exibe o formulário
end;

procedure TFPrincipal.SMVeculoClick(Sender: TObject);
begin
if FMovVeiculo = NIL then //cria o form se ele não foi criado ainda
Application.CreateForm(TFMovVeiculo,FMovVeiculo);
FMovVeiculo.Show; //exibe o formulário
end;

end.
