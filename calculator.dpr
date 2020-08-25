program calculator;

uses
  Vcl.Forms,
  calc in 'calc.pas' {Calc1};

{$R *.res}
   var
    Calc1: TCalc1;
begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TCalc1, Calc1);
  Application.Run;
end.
