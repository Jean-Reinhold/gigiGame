unit Unit2;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls,
  Menus, ComObj;

type

  { TForm2 }

  TForm2 = class(TForm)
    ed_tiro: TEdit;
    Image1: TImage;
    Image2: TImage;
    Label1: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    lb_score: TLabel;
    Label13: TLabel;
    lb_castel: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    mm: TMemo;
    OpenDialog: TOpenDialog;
    Timer1: TTimer;
    Timer10: TTimer;
    Timer2: TTimer;
    Timer3: TTimer;
    Timer4: TTimer;
    Timer5: TTimer;
    Timer6: TTimer;
    Timer7: TTimer;
    Timer8: TTimer;
    Timer9: TTimer;
    timer_palavras: TTimer;
    timer_lamours: TTimer;
    procedure ed_tiroKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure Label2Click(Sender: TObject);
    procedure Timer10Timer(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure Timer3Timer(Sender: TObject);
    procedure Timer4Timer(Sender: TObject);
    procedure Timer5Timer(Sender: TObject);
    procedure Timer6Timer(Sender: TObject);
    procedure Timer7Timer(Sender: TObject);
    procedure Timer8Timer(Sender: TObject);
    procedure Timer9Timer(Sender: TObject);
    procedure timer_lamoursTimer(Sender: TObject);
    procedure timer_palavrasTimer(Sender: TObject);
  private

  public

  end;

var
  Form2: TForm2;
  start2 : boolean = true;
  counter2: integer = 0;
  Player2: Olevariant;
  sorteio: integer = 0;
  contador: integer = 0;
  vl1, vl2, vl3, vl4, vl5, vl6, vl7, vl8, vl9, vl10: integer;
  filename, palavra :string;
  tfIN: TextFile;
  score: integer = 0;
  castelo: integer = 100;
  teste: boolean = false;

implementation
uses
    unit1, unit3;

{$R *.lfm}

{ TForm2 }

procedure TForm2.FormCreate(Sender: TObject);
begin

     label1.Left:=-150;
     label2.Left:=-150;
     label3.Left:=-150;
     label4.Left:=-150;
     label5.Left:=-150;
     label6.Left:=-150;
     label7.Left:=-150;
     label8.Left:=-150;
     label9.Left:=-150;
     label10.Left:=-150;
     Image1.Picture.LoadFromFile('original.png');
end;

procedure TForm2.ed_tiroKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState
  );
begin
   if key = 13 then
      begin
      if (ed_tiro.text = label1.Caption) And  (Label1.left < 800)  then
         begin
         score := score + 50;
         timer1.enabled := false;
         label1.Left := -150;
         end;

      if (ed_tiro.text = label2.Caption) And  (Label2.left < 800)  then
         begin
         score := score + 50;
         timer2.enabled := false;
         label2.Left := -150;
         end;

      if (ed_tiro.text = label3.Caption) And  (Label3.left < 800)  then
         begin
         score := score + 50;
         timer3.enabled := false;
         label3.Left := -150;
         end;

      if (ed_tiro.text = label4.Caption) And  (Label4.left < 800)  then
         begin
         score := score + 50;
         timer4.enabled := false;
         label4.Left := -150;
         end;

      if (ed_tiro.text = label5.Caption) And  (Label5.left < 800)  then
         begin
         score := score + 50;
         timer5.enabled := false;
         label5.Left := -150;
         end;

      if (ed_tiro.text = label6.Caption) And  (Label6.left < 800)  then
         begin
         score := score + 50;
         timer6.enabled := false;
         label6.Left := -150;
         end;

      if (ed_tiro.text = label7.Caption) And  (Label7.left < 800)  then
         begin
         score := score + 50;
         timer7.enabled := false;
         label7.Left := -150;
         end;

      if (ed_tiro.text = label8.Caption) And  (Label8.left < 800)  then
         begin
         score := score + 50;
         timer8.enabled := false;
         label8.Left := -150;
         end;

      if (ed_tiro.text = label9.Caption) And  (Label9.left < 800)  then
         begin
         score := score + 50;
         timer9.enabled := false;
         label9.Left := -150;
         end;

      if (ed_tiro.text = label10.Caption) And  (Label10.left < 800)  then
         begin
         score := score + 50;
         timer10.enabled := false;
         label10.Left := -150;
         end;
      lb_score.Caption := inttostr(score);
      ed_tiro.text := '';
      ed_tiro.SetFocus;
      end;
end;

procedure TForm2.Label2Click(Sender: TObject);
begin

end;

procedure TForm2.Timer10Timer(Sender: TObject);
begin
    label10.left :=  Label10.Left + vl10;

  if Label10.left > 800 then
     begin
     timer10.Enabled:=false;
     end;
end;

procedure TForm2.Timer1Timer(Sender: TObject);
begin
  label1.left :=  Label1.Left + vl1;

  if Label1.left > 800 then
     begin
     timer1.Enabled:=false;
     end;
end;

procedure TForm2.Timer2Timer(Sender: TObject);
begin
  label2.left :=  Label2.Left + vl2;

  if Label2.left > 800 then
     begin
     timer2.Enabled:=false;
     end;
end;

procedure TForm2.Timer3Timer(Sender: TObject);
begin
    label3.left :=  Label3.Left + vl3;

  if Label3.left > 800 then
     begin
     timer3.Enabled:=false;
     end;
end;

procedure TForm2.Timer4Timer(Sender: TObject);
begin
    label4.left :=  Label4.Left + vl4;

  if Label4.left > 800 then
     begin
     timer4.Enabled:=false;
     end;
end;

procedure TForm2.Timer5Timer(Sender: TObject);
begin
    label5.left :=  Label5.Left + vl5;

  if Label5.left > 800 then
     begin
     timer5.Enabled:=false;
     end;
end;

procedure TForm2.Timer6Timer(Sender: TObject);
begin
    label6.left :=  Label6.Left + vl6;

  if Label6.left > 800 then
     begin
     timer6.Enabled:=false;
     end;
end;

procedure TForm2.Timer7Timer(Sender: TObject);
begin
    label7.left :=  Label7.Left + vl7;

  if Label7.left > 800 then
     begin
     timer7.Enabled:=false;
     end;
end;

procedure TForm2.Timer8Timer(Sender: TObject);
begin
    label8.left :=  Label8.Left + vl8;

  if Label8.left > 800 then
     begin
     timer8.Enabled:=false;
     end;
end;

procedure TForm2.Timer9Timer(Sender: TObject);
begin
    label9.left :=  Label9.Left + vl9;

  if Label9.left > 800 then
     begin
     timer9.Enabled:=false;
     end;
end;

procedure TForm2.timer_lamoursTimer(Sender: TObject);
begin
    if start2 then
  begin
    start2 := false;
    timer_lamours.Interval:=1000;
    Player2 := CreateOleObject('wmplayer.ocx.7');
    Player2.URL := OleVariant(UTF8Decode('lamours.mp3'));
    Player2.Controls.Play;
    counter2 := 0;
      end
  Else
  Begin
    Player2.Controls.Play;
    Counter2 := counter2 + 1;
    If counter2 = 230 then
       start2 := True;
  end;

end;

procedure TForm2.timer_palavrasTimer(Sender: TObject);
begin
  Randomize;
  contador := contador + 1;
  sorteio := Random(294) + 56;

  if contador = 1 then
     begin
     mm.lines.LoadFromFile('data\'+ inttostr(random(9884)) +'.txt');
     label1.caption := mm.lines[0];
     mm.Clear;

     vl1 := random(2) + 1;
     Label1.Top:=sorteio;
     Timer1.Enabled := true;
     end;

  if contador = 2 then
     begin
     mm.lines.LoadFromFile('data\'+ inttostr(random(9884)) +'.txt');
     label2.caption := mm.lines[0];
     mm.Clear;

     vl2 := random(2) + 1;
     Label2.Top:=sorteio;
     Timer2.Enabled := true;
     end;

  if contador = 3 then
     begin
     mm.lines.LoadFromFile('data\'+ inttostr(random(9884)) +'.txt');
     label3.caption := mm.lines[0];
     mm.Clear;

     vl3 := random(2) + 1;
     Label3.Top:=sorteio;
     Timer3.Enabled := true;
     end;

  if contador = 4 then
     begin
     mm.lines.LoadFromFile('data\'+ inttostr(random(9884)) +'.txt');
     label4.caption := mm.lines[0];
     mm.Clear;

     vl4 := random(2) + 1;
     Label4.Top:=sorteio;
     Timer4.Enabled := true;
     end;

  if contador = 5 then
     begin
     mm.lines.LoadFromFile('data\'+ inttostr(random(9884)) +'.txt');
     label5.caption := mm.lines[0];
     mm.Clear;

     vl5 := random(2) + 1;
     Label5.Top:=sorteio;
     Timer5.Enabled := true;
     end;

  if contador = 6 then
     begin
     mm.lines.LoadFromFile('data\'+ inttostr(random(9884)) +'.txt');
     label6.caption := mm.lines[0];
     mm.Clear;

     vl6 := random(2) + 1;
     Label6.Top:=sorteio;
     Timer6.Enabled := true;
     end;

  if contador = 7 then
     begin
     mm.lines.LoadFromFile('data\'+ inttostr(random(9884)) +'.txt');
     label7.caption := mm.lines[0];
     mm.Clear;

     vl7 := random(2) + 1;
     Label7.Top:=sorteio;
     Timer7.Enabled := true;
     end;

  if contador = 8 then
     begin
     mm.lines.LoadFromFile('data\'+ inttostr(random(9884)) +'.txt');
     label8.caption := mm.lines[0];
     mm.Clear;

     vl8 := random(2) + 1;
     Label8.Top:=sorteio;
     Timer8.Enabled := true;
     end;

  if contador = 9 then
     begin
     mm.lines.LoadFromFile('data\'+ inttostr(random(9884)) +'.txt');
     label9.caption := mm.lines[0];
     mm.Clear;

     vl9 := random(2) + 1;
     Label9.Top:=sorteio;
     Timer9.Enabled := true;
     end;

  if contador = 10 then
     begin
     mm.lines.LoadFromFile('data\'+ inttostr(random(9884)) +'.txt');
     label10.caption := mm.lines[0];
     mm.Clear;

     vl10 := random(2) + 1;
     Label10.Top:=sorteio;
     Timer10.Enabled := true;
     end;

  if contador = 30 then
     begin
     contador := 0;
     If Label1. left >= 800 then
        begin
        castelo := castelo - 10;
        end;

     If Label2. left >= 800 then
        begin
        castelo := castelo - 10;
        end;

     If Label3. left >= 800 then
        begin
        castelo := castelo - 10;
        end;

     If Label4. left >= 800 then
        begin
        castelo := castelo - 10;
        end;

     If Label5. left >= 800 then
        begin
        castelo := castelo - 10;
        end;

     If Label6. left >= 800 then
        begin
        castelo := castelo - 10;
        end;

     If Label7. left >= 800 then
        begin
        castelo := castelo - 10;
        end;

     If Label8. left >= 800 then
        begin
        castelo := castelo - 10;
        end;

     If Label9. left >= 800 then
        begin
        castelo := castelo - 10;
        end;

     If Label10. left >= 800 then
        begin
        castelo := castelo - 10;
        end;

     If castelo <= 0 then
        begin
        if teste = false then
           begin
           teste := true;
           Player2 := CreateOleObject('wmplayer.ocx.7');
           Player2.URL := OleVariant(UTF8Decode('derrota.mp3'));
           Player2.Controls.Play;

           Image1.Picture.LoadFromFile('destruido.png');
           Image2.Picture.LoadFromFile('binbin.png');
           form2.timer_palavras.Enabled := false;
           contador := 0;
           timer1.Enabled := false;
           timer2.Enabled := false;
           timer3.Enabled := false;
           timer4.Enabled := false;
           timer5.Enabled := false;
           timer6.Enabled := false;
           timer7.Enabled := false;
           timer8.Enabled := false;
           timer9.Enabled := false;
           timer10.Enabled := false;
           label1.Left:=-150;
           label2.Left:=-150;
           label3.Left:=-150;
           label4.Left:=-150;
           label5.Left:=-150;
           label6.Left:=-150;
           label7.Left:=-150;
           label8.Left:=-150;
           label9.Left:=-150;
           label10.Left:=-150;

           form3.Memo1.Clear;

           form3.Memo1.Lines.LoadFromFile('nomes.txt');
           ntop1 := form3.Memo1.Lines[0];
           ntop2 := form3.Memo1.Lines[1];
           ntop3 := form3.Memo1.Lines[2];

           form3.Memo1.Lines.LoadFromFile('points.txt');
           ptop1 := form3.Memo1.Lines[0];
           ptop2 := form3.Memo1.Lines[1];
           ptop3 := form3.Memo1.Lines[2];

           form3.Memo1.Clear;

           if (score > strtoint(ptop1)) then
              begin
              ntop3 := ntop2;
              ntop2 := ntop1;
              ntop1 := nome;

              ptop3 := ptop2;
              ptop2 := ptop1;
              ptop1 := inttostr(score);
              end
           else
               begin
               if (score > strtoint(ptop2)) then
                  begin
                  ntop3 := ntop2;
                  ntop2 := nome;

                  ptop3 := ptop2;
                  ptop2 := inttostr(score);;
                  end
                else
                  begin
                  if (score > strtoint(ptop3)) then
                     begin
                     ntop3 := nome;

                     ptop3 := inttostr(score);
                     end;
                  end
               end

           form3.Memo1.clear;
           form3.Memo1.Lines.Add(ntop1);
           form3.Memo1.Lines.Add(ntop2);
           form3.Memo1.Lines.Add(ntop3);
           form3.Memo1.lines.SaveToFile('nomes.txt');

           form3.Memo1.clear;
           form3.Memo1.Lines.Add(ptop1);
           form3.Memo1.Lines.Add(ptop2);
           form3.Memo1.Lines.Add(ptop3);
           form3.Memo1.lines.SaveToFile('points.txt');

           ShowMessage('-----------------------------------' + LineEnding +
           '  Tudo o que era doce acabou' + LineEnding + 'O Vilão mais Marvado Chegou'
           + LineEnding + LineEnding + '   "ASSISTA TUDO SE DESTRUIR    "'
           +  LineEnding +'-----------------------------------') ;

           lb_castel.Caption:='100';
           lb_score.Caption:='0';
           score := 0;
           castelo := 100;

           Image2.Picture.Clear;
           Image1.Picture.LoadFromFile('original.png');
           form2.Close;
           end
        else
        end;

     label1.Left:=-150;
     label2.Left:=-150;
     label3.Left:=-150;
     label4.Left:=-150;
     label5.Left:=-150;
     label6.Left:=-150;
     label7.Left:=-150;
     label8.Left:=-150;
     label9.Left:=-150;
     label10.Left:=-150;

     lb_castel.Caption := inttostr(castelo);

     end;



end;

end.

