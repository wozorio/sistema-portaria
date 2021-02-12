unit Alteracao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Buttons, ExtCtrls, DB, ADODB, DBCtrls, Mask,
  Grids, DBGrids, QRCtrls, QuickRpt;

type
  TFAlteracao = class(TForm)
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FAlteracao: TFAlteracao;

implementation

uses Principal, Movimentacao, Relatorio;

{$R *.dfm}

procedure TFAlteracao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
FMovimentacao.ADOQuery1.Close;
end;

procedure TFAlteracao.FormCreate(Sender: TObject);
begin
FMovimentacao.ADOQuery1.Open;
end;

end.
