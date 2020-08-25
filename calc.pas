unit calc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, AdvGlowButton, Vcl.StdCtrls;

type
  TCalc1 = class(TForm)
    Result: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    ButtonZero: TButton;
    ButtonComma: TButton;
    ButtonMultiply: TButton;
    ButtonAdd: TButton;
    ButtonSubtract: TButton;
    ButtonSolve: TButton;
    ButtonDivide: TButton;
    ButtonClear: TButton;
    ButtonClearEverything: TButton;
    ButtonDelete: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure ButtonZeroClick(Sender: TObject);
    procedure ButtonCommaClick(Sender: TObject);
    procedure ButtonAddClick(Sender: TObject);
    procedure ButtonSolveClick(Sender: TObject);
    procedure ButtonSubtractClick(Sender: TObject);

  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  var
    Calc1: TCalc1;
    number: String;
    x, temp: real;

end;



implementation

{$R *.dfm}


procedure TCalc1.Button1Click(Sender: TObject);
  begin
    Result.Text := Result.Text + (Sender as TButton).Caption;
    number := Result.Text;
    x := StrToFloat(number);
  end;
    procedure TCalc1.Button2Click(Sender: TObject);
  begin
    Result.Text := Result.Text + (Sender as TButton).Caption;
    number := Result.Text;
    x := StrToFloat(number);
  end;

  procedure TCalc1.Button3Click(Sender: TObject);
  begin
    Result.Text := Result.Text + (Sender as TButton).Caption;
    number := Result.Text;
    x := StrToFloat(number);
  end;

  procedure TCalc1.Button4Click(Sender: TObject);
  begin
    Result.Text := Result.Text + (Sender as TButton).Caption;
    number := Result.Text;
    x := StrToFloat(number);
  end;

  procedure TCalc1.Button5Click(Sender: TObject);
  begin
    Result.Text := Result.Text + (Sender as TButton).Caption;
    number := Result.Text;
    x := StrToFloat(number);
  end;

  procedure TCalc1.Button6Click(Sender: TObject);
  begin
    Result.Text := Result.Text + (Sender as TButton).Caption;
    number := Result.Text;
    x := StrToFloat(number);
  end;

  procedure TCalc1.Button7Click(Sender: TObject);
  begin
    Result.Text := Result.Text + (Sender as TButton).Caption;
    number := Result.Text;
    x := StrToFloat(number);
  end;

  procedure TCalc1.Button8Click(Sender: TObject);
  begin
    Result.Text := Result.Text + (Sender as TButton).Caption;
    number := Result.Text;
    x := StrToFloat(number);
  end;

  procedure TCalc1.Button9Click(Sender: TObject);
  begin
    Result.Text := Result.Text + (Sender as TButton).Caption;
    number := Result.Text;
    x := StrToFloat(number);
  end;

  procedure TCalc1.ButtonAddClick(Sender: TObject);
  begin
    temp := x;
    {TODO: Erste eingegebene Zahl wird in tempor�rer Variable gespeichert.
    Sobald man die variable x wieder mit einer zahl f�llt und anschlie�end auf = dr�ckt,
    muss das Ergebnis erscheinen.}
    if TCalc1.ButtonSolveClick then
    asd;
  end;

procedure TCalc1.ButtonZeroClick(Sender: TObject);
  begin
    Result.Text := Result.Text + (Sender as TButton).Caption;
    number := Result.Text;
    x := StrToFloat(number);
  end;

  procedure TCalc1.ButtonCommaClick(Sender: TObject);
  begin
    if Pos(',',Result.Text) = 0 then
    begin
     Result.Text := Result.Text + (Sender as TButton).Caption;
     number := Result.Text;
     x := StrToFloat(number);
    end;
  end;

  procedure TCalc1.ButtonSolveClick(Sender: TObject);
  begin
    asd
  end;

  procedure TCalc1.ButtonSubtractClick(Sender: TObject);
  begin
    {TODO: Erste eingegebene Zahl wird in tempor�rer Variable gespeichert.
    Sobald man die variable x wieder mit einer zahl f�llt und anschlie�end auf = dr�ckt,
    muss das Ergebnis erscheinen.}
  end;

end.
