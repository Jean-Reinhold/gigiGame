unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls,
  Menus, ComObj;

type

  { TForm1 }

  TForm1 = class(TForm)
    bt_play: TButton;
    bt_about: TButton;
    bt_close: TButton;
    bt_recordes: TButton;
    Image1: TImage;
    Image2: TImage;
    Label1: TLabel;
    timer_dota: TTimer;
    procedure bt_aboutClick(Sender: TObject);
    procedure bt_playClick(Sender: TObject);
    procedure bt_closeClick(Sender: TObject);
    procedure bt_recordesClick(Sender: TObject);
    procedure timer_dotaTimer(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  start : boolean = true;
  counter: integer = 0;
  Player: Olevariant;
  ntop1: string;
  ntop2: string;
  ntop3: string;
  ptop1: string;
  ptop2: string;
  ptop3: string;
  nome : string;

implementation
uses
    unit2, Unit3;

{$R *.lfm}

{ TForm1 }

procedure TForm1.bt_playClick(Sender: TObject);
begin
  InputQuery('Player', 'Insira seu nome', nome);
  teste:= false;
  timer_dota.Enabled:=false;
  start := true;
  Form2.Timer_lamours.Enabled:=True;
  start2 := true;

  Player.Controls.stop;
  Form2.timer_palavras.Enabled:=true;
  Form2.showmodal;
  Player2.controls.stop;


  Form2.Timer_lamours.Enabled:= false;
  timer_dota.Enabled:=true;
end;

procedure TForm1.bt_aboutClick(Sender: TObject);
begin
  ShowMessage('Seu reino está sendo atacado pelo terrível mago Lulu, atire em seus mísseis para salvar seu povo!!' +
              LineEnding + LineEnding + LineEnding + '                                                                       TRO 7M Jean Reinhold');
end;

procedure TForm1.bt_closeClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TForm1.bt_recordesClick(Sender: TObject);
begin
  form3.Memo1.Lines.LoadFromFile('nomes.txt');
  ntop1 := form3.Memo1.Lines[0];
  ntop2 := form3.Memo1.Lines[1];
  ntop3 := form3.Memo1.Lines[2];

  form3.Memo1.Lines.LoadFromFile('points.txt');
  ptop1 := form3.Memo1.Lines[0];
  ptop2 := form3.Memo1.Lines[1];
  ptop3 := form3.Memo1.Lines[2];

  form3.Memo1.Clear;

  form3.Memo1.Lines.Add(ntop1 + ' ___ ' + ptop1 + 'pts');
  form3.Memo1.Lines.Add(ntop2 + ' ___ ' + ptop2 + 'pts');
  form3.Memo1.Lines.Add(ntop3 + ' ___ ' + ptop3 + 'pts');
  form3.showmodal;
end;

procedure TForm1.timer_dotaTimer(Sender: TObject);
begin
  if start then
  begin
    start := false;
    timer_dota.Interval:=1000;
    Player := CreateOleObject('wmplayer.ocx.7');
    Player.URL := OleVariant(UTF8Decode('dota.mp3'));
    Player.Controls.Play;
    counter := 0;
  end
  Else
  Begin
    Player.Controls.Play;
    Counter := counter + 1;
    If counter = 230 then
       start := True;
  end;

end;

end.

