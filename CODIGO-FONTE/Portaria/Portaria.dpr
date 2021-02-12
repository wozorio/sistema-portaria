program Portaria;

uses
  Forms,
  Principal in 'Principal.pas' {FPrincipal},
  CadMotoristas in 'CadMotoristas.pas' {FCadMotoristas},
  CadVeiculos in 'CadVeiculos.pas' {FCadVeiculos},
  Entrada in 'Entrada.pas' {FEntrada},
  Saida in 'Saida.pas' {FSaida},
  Movimentacao in 'Movimentacao.pas' {FMovimentacao},
  About in 'About.pas' {FAbout},
  Alteracao in 'Alteracao.pas' {FAlteracao},
  FMovVeic in 'FMovVeic.pas' {FMovVeiculo},
  RelVeiculo in 'RelVeiculo.pas' {FRelVeic},
  FMovMoto in 'FMovMoto.pas' {FMovMotorista},
  RelMotorista in 'RelMotorista.pas' {FRelMotorista},
  Relatorio in 'Relatorio.pas' {FRelatorio};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFPrincipal, FPrincipal);
  Application.Run;
end.
