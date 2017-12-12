unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  ColorBox, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    ColorListBox1: TColorListBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    RadioGroup1: TRadioGroup;
    procedure Button1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BoundaryFill(x,y,boundary,fill:Integer);
    procedure FormClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Image1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image1MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure Image1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Label1Click(Sender: TObject);
    procedure Label4Click(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

type
  Elemen=record
  x,y: Integer;
  end;

var
  Form1: TForm1;
  Objek: array[1..1000] of Elemen;
  kursor: boolean;
  tergambar: boolean;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.RadioGroup1Click(Sender: TObject);
begin

end;

procedure TForm1.FormCreate(Sender: TObject);
begin

end;

procedure TForm1.FormActivate(Sender: TObject);
begin
  //angka 0
  Objek[1].x := 50;    Objek[1].y := 100;
  Objek[2].x := 150;    Objek[2].y := 100;
  Objek[3].x := 150;    Objek[3].y := 250;
  Objek[4].x := 50;    Objek[4].y := 250;

  Objek[5].x := 75;    Objek[5].y := 125;
  Objek[6].x := 125;    Objek[6].y := 125;
  Objek[7].x := 125;    Objek[7].y := 225;
  Objek[8].x := 75;    Objek[8].y := 225;

  Objek[9].x := 50;    Objek[9].y := 100;
  Objek[10].x := 75;   Objek[10].y := 75;
  Objek[11].x := 175;   Objek[11].y := 75;
  Objek[12].x := 150;   Objek[12].y := 100;

  Objek[13].x := 150;   Objek[13].y := 100;
  Objek[14].x := 175;   Objek[14].y := 75;
  Objek[15].x := 175;   Objek[15].y := 225;
  Objek[16].x := 150;   Objek[16].y := 250;

  Objek[17].x := 75;   Objek[17].y := 125;
  Objek[18].x := 95;   Objek[18].y := 125;
  Objek[19].x := 95;   Objek[19].y := 205;
  Objek[20].x := 125;   Objek[20].y := 205;
  Objek[21].x := 125;   Objek[21].y := 225;
  Objek[22].x := 75;   Objek[22].y := 225;

  Objek[23].x := 150;   Objek[23].y := 100;
  Objek[24].x := 175;   Objek[24].y := 75;

  //angka 6
  Objek[25].x := 200;   Objek[25].y := 100;
  Objek[26].x := 300;   Objek[26].y := 100;
  Objek[27].x := 300;   Objek[27].y := 125;
  Objek[28].x := 225;   Objek[28].y := 125;
  Objek[29].x := 225;   Objek[29].y := 180;
  Objek[30].x := 300;   Objek[30].y := 180;
  Objek[31].x := 300;   Objek[31].y := 250;
  Objek[32].x := 200;   Objek[32].y := 250;

  Objek[33].x := 200;   Objek[33].y := 100;
  Objek[34].x := 225;   Objek[34].y := 75;
  Objek[35].x := 325;   Objek[35].y := 75;
  Objek[36].x := 300;   Objek[36].y := 100;

  Objek[37].x := 325;   Objek[37].y := 75;
  Objek[38].x := 325;   Objek[38].y := 100;
  Objek[39].x := 300;   Objek[39].y := 125;
  Objek[40].x := 300;   Objek[40].y := 100;

  Objek[41].x := 225;   Objek[41].y := 125;
  Objek[42].x := 250;   Objek[42].y := 125;
  Objek[43].x := 250;   Objek[43].y := 155;
  Objek[44].x := 225;   Objek[44].y := 180;

  Objek[45].x := 225;   Objek[45].y := 180;
  Objek[46].x := 250;   Objek[46].y := 155;
  Objek[47].x := 325;   Objek[47].y := 155;
  Objek[48].x := 300;   Objek[48].y := 180;

  Objek[49].x := 300;   Objek[49].y := 180;
  Objek[50].x := 325;   Objek[50].y := 155;
  Objek[51].x := 325;   Objek[51].y := 225;
  Objek[52].x := 300;   Objek[52].y := 250;

  Objek[53].x := 225;   Objek[53].y := 205;
  Objek[54].x := 275;   Objek[54].y := 205;
  Objek[55].x := 275;   Objek[55].y := 225;
  Objek[56].x := 225;   Objek[56].y := 225;

  //angka 3
  Objek[57].x := 350;   Objek[57].y := 100;
  Objek[58].x := 450;   Objek[58].y := 100;
  Objek[59].x := 450;   Objek[59].y := 250;
  Objek[60].x := 350;   Objek[60].y := 250;
  Objek[61].x := 350;   Objek[61].y := 225;
  Objek[62].x := 425;   Objek[62].y := 225;
  Objek[63].x := 425;   Objek[63].y := 188;
  Objek[64].x := 350;   Objek[64].y := 188;
  Objek[65].x := 350;   Objek[65].y := 162;
  Objek[66].x := 425;   Objek[66].y := 162;
  Objek[67].x := 425;   Objek[67].y := 125;
  Objek[68].x := 350;   Objek[68].y := 125;

  Objek[69].x := 350;   Objek[69].y := 100;
  Objek[70].x := 375;   Objek[70].y := 75;
  Objek[71].x := 475;   Objek[71].y := 75;
  Objek[72].x := 450;   Objek[72].y := 100;

  Objek[73].x := 450;   Objek[73].y := 100;
  Objek[74].x := 475;   Objek[74].y := 75;
  Objek[75].x := 475;   Objek[75].y := 225;
  Objek[76].x := 450;   Objek[76].y := 250;

  Objek[77].x := 350;   Objek[77].y := 225;
  Objek[78].x := 370;   Objek[78].y := 205;
  Objek[79].x := 425;   Objek[79].y := 205;
  Objek[80].x := 425;   Objek[80].y := 225;

  Objek[81].x := 350;   Objek[81].y := 162;
  Objek[82].x := 370;   Objek[82].y := 142;
  Objek[83].x := 425;   Objek[83].y := 142;
  Objek[84].x := 425;   Objek[84].y := 162;

  //tambahan ketinggalan
  Objek[85].x := 300;   Objek[85].y := 180;
  Objek[86].x := 325;   Objek[86].y := 155;

  Objek[87].x := 450;   Objek[87].y := 100;
  Objek[88].x := 475;   Objek[88].y := 75;

  FormShow(Sender);
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  i: Integer;
begin
  Image1.Canvas.Rectangle(0,0,Image1.Width,Image1.Height);
  Image1.Canvas.MoveTo(Objek[4].x,Objek[4].y);
  for i:= 1 to 4 do
  begin
    Image1.Canvas.LineTo(Objek[i].x,Objek[i].y);
  end;
  Image1.Canvas.MoveTo(Objek[8].x,Objek[8].y);
  for i:= 5 to 8 do
  begin
    Image1.Canvas.LineTo(Objek[i].x,Objek[i].y);
  end;
  Image1.Canvas.MoveTo(Objek[12].x,Objek[12].y);
  for i:= 9 to 12 do
  begin
    Image1.Canvas.LineTo(Objek[i].x,Objek[i].y);
  end;
  Image1.Canvas.MoveTo(Objek[16].x,Objek[16].y);
  for i:= 13 to 16 do
  begin
    Image1.Canvas.LineTo(Objek[i].x,Objek[i].y);
  end;
  Image1.Canvas.MoveTo(Objek[22].x,Objek[22].y);
  for i:= 17 to 22 do
  begin
    Image1.Canvas.LineTo(Objek[i].x,Objek[i].y);
  end;
  Image1.Canvas.MoveTo(Objek[24].x,Objek[24].y);
  for i:= 23 to 24 do
  begin
    Image1.Canvas.LineTo(Objek[i].x,Objek[i].y);
  end;
  Image1.Canvas.MoveTo(Objek[32].x,Objek[32].y);
  for i:= 25 to 32 do
  begin
    Image1.Canvas.LineTo(Objek[i].x,Objek[i].y);
  end;
  Image1.Canvas.MoveTo(Objek[36].x,Objek[36].y);
  for i:= 33 to 36 do
  begin
    Image1.Canvas.LineTo(Objek[i].x,Objek[i].y);
  end;
  Image1.Canvas.MoveTo(Objek[40].x,Objek[40].y);
  for i:= 37 to 40 do
  begin
    Image1.Canvas.LineTo(Objek[i].x,Objek[i].y);
  end;
  Image1.Canvas.MoveTo(Objek[44].x,Objek[44].y);
  for i:= 41 to 44 do
  begin
    Image1.Canvas.LineTo(Objek[i].x,Objek[i].y);
  end;
  Image1.Canvas.MoveTo(Objek[48].x,Objek[48].y);
  for i:= 45 to 48 do
  begin
    Image1.Canvas.LineTo(Objek[i].x,Objek[i].y);
  end;
  Image1.Canvas.MoveTo(Objek[52].x,Objek[52].y);
  for i:= 49 to 52 do
  begin
    Image1.Canvas.LineTo(Objek[i].x,Objek[i].y);
  end;
  Image1.Canvas.MoveTo(Objek[56].x,Objek[56].y);
  for i:= 53 to 56 do
  begin
    Image1.Canvas.LineTo(Objek[i].x,Objek[i].y);
  end;
  Image1.Canvas.MoveTo(Objek[68].x,Objek[68].y);
  for i:= 57 to 68 do
  begin
    Image1.Canvas.LineTo(Objek[i].x,Objek[i].y);
  end;
  Image1.Canvas.MoveTo(Objek[72].x,Objek[72].y);
  for i:= 69 to 72 do
  begin
    Image1.Canvas.LineTo(Objek[i].x,Objek[i].y);
  end;
  Image1.Canvas.MoveTo(Objek[76].x,Objek[76].y);
  for i:= 73 to 76 do
  begin
    Image1.Canvas.LineTo(Objek[i].x,Objek[i].y);
  end;
  Image1.Canvas.MoveTo(Objek[80].x,Objek[80].y);
  for i:= 77 to 80 do
  begin
    Image1.Canvas.LineTo(Objek[i].x,Objek[i].y);
  end;
  Image1.Canvas.MoveTo(Objek[84].x,Objek[84].y);
  for i:= 81 to 84 do
  begin
    Image1.Canvas.LineTo(Objek[i].x,Objek[i].y);
  end;
  Image1.Canvas.MoveTo(Objek[86].x,Objek[86].y);
  for i:= 85 to 86 do
  begin
    Image1.Canvas.LineTo(Objek[i].x,Objek[i].y);
  end;
  Image1.Canvas.MoveTo(Objek[88].x,Objek[88].y);
  for i:= 87 to 88 do
  begin
    Image1.Canvas.LineTo(Objek[i].x,Objek[i].y);
  end;
end;

procedure TForm1.Edit1Change(Sender: TObject);
begin

end;

procedure TForm1.BoundaryFill(x, y, boundary, fill: Integer);
var
 current:Integer;
begin
  current:=Image1.Canvas.Pixels[x,y];
   if ((current<>boundary) and (current<>fill)) then
   begin
     Image1.Canvas.Pixels[x,y]:=fill;
     BoundaryFill(x+1,y,fill,boundary);
     BoundaryFill(x-1,y,fill,boundary);
     BoundaryFill(x,y+1,fill,boundary);
     BoundaryFill(x,y-1,fill,boundary);
   end;
end;

procedure TForm1.FormClick(Sender: TObject);
begin

end;

procedure TForm1.FormShow(Sender: TObject);
begin

end;

procedure TForm1.Image1Click(Sender: TObject);
begin

end;

procedure TForm1.Image1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if tergambar=true then
  Image1.Canvas.MoveTo(x,y);
  if RadioGroup1.ItemIndex=0 then
  BoundaryFill(x,y,ColorListBox1.Selected,Image1.Canvas.Pen.Color);
end;

procedure TForm1.Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  Edit1.Text:= IntToStr(X);
  Edit2.Text:= IntToStr(Y);
  if kursor then
     Image1.Canvas.LineTo(X,Y);
end;

procedure TForm1.Image1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  tergambar:=false;
end;

procedure TForm1.Label1Click(Sender: TObject);
begin

end;

procedure TForm1.Label4Click(Sender: TObject);
begin

end;

end.

