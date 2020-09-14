unit calc;

// Calculator application for Windows, built in September 2020.
// Creator: Jasmin I.

// DISCLAIMER: This application has been built for educational uses since I
// wanted to get used to programming in Delphi. I used the following tutorial
// as a guide (https://delphi.fandom.com/wiki/Simple_Calculator_Tutorial) and
// made a few minor changes myself.

// Application icon source: http://icons8.com/
// Usage license: http://icons8.com/license/


interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  AdvGlowButton,
  Vcl.StdCtrls,
  Vcl.ExtCtrls;

type
  TCalc1 = class(TForm)
    NumberEdit: TEdit;
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
    ButtonNegate: TButton;
    ButtonDelete: TButton;
    procedure ButtonClick(Sender: TObject);
    procedure ButtonCommaClick(Sender: TObject);
    procedure ButtonNegateClick(Sender: TObject);
    procedure ButtonAddClick(Sender: TObject);
    procedure ButtonSubtractClick(Sender: TObject);
    procedure ButtonMultiplyClick(Sender: TObject);
    procedure ButtonDivideClick(Sender: TObject);
    procedure ButtonSolveClick(Sender: TObject);
    procedure ButtonClearClick(Sender: TObject);
    procedure ButtonResetClick(Sender: TObject);

  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  var
    Calc1: TCalc1;
    Math, Text: String;
    FstNum, SndNum, Result: real;
  end;

implementation

{$R *.dfm}

// In this procedure the caption of the clicked button will be added to the text field.
// The if-statement in the beginning automatically clears the text field for us, in case
// an existing result is still shown there.
  procedure TCalc1.ButtonClick(Sender: TObject);
  begin
    begin
      if NumberEdit.Text = Text then
      NumberEdit.Clear;
    end;
    NumberEdit.Text := NumberEdit.Text + (Sender as TButton).Caption;
  end;

// The if-statement makes sure that you can't add commas where they're invalid.
  procedure TCalc1.ButtonCommaClick(Sender: TObject);
  begin
    if Pos(',', NumberEdit.Text) = 0 then begin
      NumberEdit.Text := NumberEdit.Text + (Sender as TButton).Caption;
    end;
  end;

// Mathematical operations get labeled with a Math-value, so the calculator knows which
// operation it should do when we klick on the solve-button.
  procedure TCalc1.ButtonDivideClick(Sender: TObject);
  begin
    Math := 'Divide';
    FstNum := StrToFloat(NumberEdit.Text);
    NumberEdit.Text := '';
  end;

  procedure TCalc1.ButtonMultiplyClick(Sender: TObject);
  begin
    Math := 'Multiply';
    FstNum := StrToFloat(NumberEdit.Text);
    NumberEdit.Text := '';
  end;

  procedure TCalc1.ButtonAddClick(Sender: TObject);
  begin
    Math := 'Add';
    FstNum := StrToFloat(NumberEdit.Text);
    NumberEdit.Text := '';
  end;

  procedure TCalc1.ButtonSubtractClick(Sender: TObject);
  begin
    Math := 'Subtract';
    FstNum := StrToFloat(NumberEdit.Text);
    NumberEdit.Text := '';
  end;

// To negate the value shown in the text field, it will be multiplied by -1.
  procedure TCalc1.ButtonNegateClick(Sender: TObject);
  var
    OriginNum: real;
    TextNum: string;
  begin
    OriginNum := -(StrToFloat(NumberEdit.Text));
    TextNum := FormatFloat('0.##########', OriginNum);
    NumberEdit.Text := TextNum;
  end;

// The mathematical operations corresponding to their 'Math'-value are being computed with
// this procedure. After the result has been presented, we can proceed with more operations on
// it, as that value is still memorized.
  procedure TCalc1.ButtonSolveClick(Sender: TObject);
  begin
    SndNum := StrToFloat(NumberEdit.Text);

    begin
      if Math = 'Add' then
      Result := FstNum + SndNum;
      Text := FormatFloat('0.#####', Result);
      NumberEdit.Text := Text;
    end;

    begin
      if Math = 'Subtract' then
      Result := FstNum - SndNum;
      Text := FormatFloat('0.#####', Result);
      NumberEdit.Text := Text;
    end;

    begin
      if Math = 'Multiply' then
      Result := FstNum * SndNum;
      Text := FormatFloat('0.#####', Result);
      NumberEdit.Text := Text;
    end;

    begin
      if Math = 'Divide' then
      Result := FstNum / SndNum;
      Text := FormatFloat('0.#####', Result);
      NumberEdit.Text := Text;
    end;
  end;

// Clears the most recent value in the text field.
  procedure TCalc1.ButtonClearClick(Sender: TObject);
  begin
    NumberEdit.Clear;
  end;

// Resets all variables to their default values.
  procedure TCalc1.ButtonResetClick(Sender: TObject);
  begin
    NumberEdit.Text := '';
    NumberEdit.Clear;
    FstNum := 0.0;
    SndNum := 0.0;
    Math := 'Default';
    end;

end.
