unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, StdCtrls, ExtCtrls, ComCtrls;

type
  TForm1 = class(TForm)
    ScrollBox1: TScrollBox;
    Group4: TGroupBox;
    GroupBox3: TGroupBox;
    LevelNumber: TLabel;
    ChangeLegend: TTrackBar;
    UseAxes: TCheckBox;
    UseNumZone: TCheckBox;
    UseNumNode: TCheckBox;
    UseLines: TCheckBox;
    UseLegend: TCheckBox;
    UseForce: TCheckBox;
    UseBound: TCheckBox;
    TestElements: TCheckBox;
    GroupBox6: TGroupBox;
    Label24: TLabel;
    Label26: TLabel;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    UseNumMater: TCheckBox;
    CheckBox1: TCheckBox;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    LabelScale: TLabel;
    TrackBar1: TTrackBar;
    EditScale: TEdit;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    GroupBox9: TGroupBox;
    Label17: TLabel;
    Label16: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    InfoMoveX: TEdit;
    InfoMoveY: TEdit;
    EditMoveX: TEdit;
    EditMoveY: TEdit;
    TabSheet2: TTabSheet;
    StressType: TRadioGroup;
    GroupBox8: TGroupBox;
    Panel9: TPanel;
    Edit1: TEdit;
    Panel1: TPanel;
    InfoX: TEdit;
    InfoY: TEdit;
    InfoXY: TEdit;
    InfoMax: TEdit;
    InfoMin: TEdit;
    InfoConer: TEdit;
    InfoEcv: TEdit;
    InfoFiniteElementNumber: TEdit;
    Panel6: TPanel;
    Label10: TLabel;
    Label11: TLabel;
    Label25: TLabel;
    EditX: TEdit;
    EditY: TEdit;
    StressMethod1: TRadioButton;
    StressMethod2: TRadioButton;
    StressMethod3: TRadioButton;
    Panel7: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    TabSheet3: TTabSheet;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label29: TLabel;
    GroupBox5: TGroupBox;
    Label9: TLabel;
    EditForce: TEdit;
    ForceTrackBar: TTrackBar;
    GroupBox7: TGroupBox;
    StringGrid1: TStringGrid;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit7: TEdit;
    TabSheet4: TTabSheet;
    GroupBox1: TGroupBox;
    Label14: TLabel;
    Label15: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    KENumber: TEdit;
    MUprug: TEdit;
    KoefPuas: TEdit;
    DopNapr: TEdit;
    thickness: TEdit;
    CheckBox2: TCheckBox;
    ZoneCheckBox: TCheckBox;
    TabSheet5: TTabSheet;
    StressType1: TRadioGroup;
    GroupBox10: TGroupBox;
    ZoneStress: TStringGrid;
    Edit8: TEdit;
    Label30: TLabel;
    TabSheet6: TTabSheet;
    StressType2: TRadioGroup;
    GroupBox11: TGroupBox;
    ZoneStress2: TStringGrid;
    Label31: TLabel;
    GroupBox4: TGroupBox;
    Mover: TTrackBar;
    Panel5: TPanel;
    Label8: TLabel;
    EditMover: TEdit;
    Label32: TLabel;
    procedure ZoneCheckBoxClick(Sender: TObject);
    procedure UseLegendClick(Sender: TObject);
    procedure UseForceClick(Sender: TObject);
    procedure UseBoundClick(Sender: TObject);
    procedure UseNumNodeClick(Sender: TObject);
    procedure UseNumZoneClick(Sender: TObject);
    procedure UseNumMaterClick(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure UseAxesClick(Sender: TObject);
    procedure TestElementsClick(Sender: TObject);
    procedure UseLinesClick(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure ChangeLegendChange(Sender: TObject);
    procedure TrackBar1Change(Sender: TObject);
    procedure EditScaleChange(Sender: TObject);
    procedure MoverChange(Sender: TObject);
    procedure EditMoverChange(Sender: TObject);
    procedure StressMethod1Click(Sender: TObject);
    procedure StressMethod2Click(Sender: TObject);
    procedure StressMethod3Click(Sender: TObject);
    procedure ForceTrackBarChange(Sender: TObject);
    procedure StressType1Click(Sender: TObject);
    procedure StressTypeClick(Sender: TObject);
    procedure StressType2Click(Sender: TObject);
    procedure EditForceChange(Sender: TObject);
    procedure EditXChange(Sender: TObject);
    procedure EditYChange(Sender: TObject);
    procedure EditMoveXChange(Sender: TObject);
    procedure EditMoveYChange(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  Form1: TForm1;

implementation

uses ShowMovings;

{$R *.dfm}

procedure TForm1.ZoneCheckBoxClick(Sender: TObject);
begin
  // dad
  ShowMovingsForm.ZoneCheckBoxClick(Sender);
  //инверсия//
  if ShowMovingsForm.ZoneCheckBox.Checked then
     ShowMovingsForm.ZoneCheckBox.Checked:=False
     else
      ShowMovingsForm.ZoneCheckBox.Checked:=True;


end;

procedure TForm1.UseLegendClick(Sender: TObject);
begin
      // dad
  ShowMovingsForm.UseLegendClick(Sender);
  //инверсия//
  IF ShowMovingsForm.UseLegend.Checked THEN BEGIN
    ShowMovingsForm.UseLegend.Checked:=False;
  END
  ELSE BEGIN
    ShowMovingsForm.UseLegend.Checked:=True;
  END;
end;

procedure TForm1.UseForceClick(Sender: TObject);
begin
  ShowMovingsForm.RePaintPlate(Sender);
  IF ShowMovingsForm.UseForce.Checked THEN BEGIN
    ShowMovingsForm.UseForce.Checked:=False;
  END
  ELSE BEGIN
    ShowMovingsForm.UseForce.Checked:=True;
  END;
end;

procedure TForm1.UseBoundClick(Sender: TObject);
begin
   ShowMovingsForm.RePaintPlate(Sender);
  IF ShowMovingsForm.UseBound.Checked THEN BEGIN
    ShowMovingsForm.UseBound.Checked:=False;
  END
  ELSE BEGIN
    ShowMovingsForm.UseBound.Checked:=True;
  END;
end;

procedure TForm1.UseNumNodeClick(Sender: TObject);
begin
  ShowMovingsForm.RePaintPlate(Sender);
  IF ShowMovingsForm.UseNumNode.Checked THEN BEGIN
    ShowMovingsForm.UseNumNode.Checked:=False;
  END
  ELSE BEGIN
    ShowMovingsForm.UseNumNode.Checked:=True;
  END;
end;

procedure TForm1.UseNumZoneClick(Sender: TObject);
begin
  ShowMovingsForm.UseNumZoneClick(Sender);
   IF ShowMovingsForm.UseNumZone.Checked THEN BEGIN
    ShowMovingsForm.UseNumZone.Checked:=False;
  END
  ELSE BEGIN
    ShowMovingsForm.UseNumZone.Checked:=True;
  END;
end;

procedure TForm1.UseNumMaterClick(Sender: TObject);
begin
    ShowMovingsForm.UseNumMaterClick(Sender);
 IF ShowMovingsForm.UseNumMater.Checked THEN BEGIN
    ShowMovingsForm.UseNumMater.Checked:=False;
  END
  ELSE BEGIN
    ShowMovingsForm.UseNumMater.Checked:=True;
  END;
end;

procedure TForm1.CheckBox2Click(Sender: TObject);
begin
  ShowMovingsForm.CheckBox2Click(Sender);
  IF ShowMovingsForm.CheckBox2.Checked THEN BEGIN
    ShowMovingsForm.CheckBox2.Checked:=False;
  END
  ELSE BEGIN
    ShowMovingsForm.CheckBox2.Checked:=True;
  END;
end;

procedure TForm1.UseAxesClick(Sender: TObject);
begin
  ShowMovingsForm.UseAxesClick(Sender);
  IF ShowMovingsForm.UseAxes.Checked THEN BEGIN
    ShowMovingsForm.UseAxes.Checked:=False;
  END
  ELSE BEGIN
    ShowMovingsForm.UseAxes.Checked:=True;
  END;

end;

procedure TForm1.TestElementsClick(Sender: TObject);
begin
   ShowMovingsForm.UseAxesClick(Sender);
  IF ShowMovingsForm.TestElements.Checked THEN BEGIN
    ShowMovingsForm.TestElements.Checked:=False;
  END
  ELSE BEGIN
    ShowMovingsForm.TestElements.Checked:=True;
  END;
end;

procedure TForm1.UseLinesClick(Sender: TObject);
begin
   ShowMovingsForm.UseLinesClick(Sender);
  IF ShowMovingsForm.UseLines.Checked THEN BEGIN
    ShowMovingsForm.UseLines.Checked:=False;
  END
  ELSE BEGIN
    ShowMovingsForm.UseLines.Checked:=True;
  END;
end;

procedure TForm1.CheckBox1Click(Sender: TObject);
begin
  ShowMovingsForm.UseLinesClick(Sender);
  IF ShowMovingsForm.CheckBox1.Checked THEN BEGIN
    ShowMovingsForm.CheckBox1.Checked:=False;
  END
  ELSE BEGIN
    ShowMovingsForm.CheckBox1.Checked:=True;
  END;
end;

procedure TForm1.ChangeLegendChange(Sender: TObject);
VAR
   z:integer;
BEGIN
ShowMovingsForm.ChangeLegendChange(Sender);
end;

procedure TForm1.TrackBar1Change(Sender: TObject);
begin
  ShowMovingsForm.TrackBar1Change(Sender);
end;

procedure TForm1.EditScaleChange(Sender: TObject);
begin
  ShowMovingsForm.EditScaleChange(Sender);
end;

procedure TForm1.MoverChange(Sender: TObject);
begin
  ShowMovingsForm.MoverChange(Sender);
end;

procedure TForm1.EditMoverChange(Sender: TObject);
begin
  ShowMovingsForm.EditMoverChange(Sender);
end;



procedure TForm1.StressMethod1Click(Sender: TObject);
begin
  ShowMovingsForm.StressMethod1Click(Sender);
end;

procedure TForm1.StressMethod2Click(Sender: TObject);
begin
  ShowMovingsForm.StressMethod2Click(Sender);
end;

procedure TForm1.StressMethod3Click(Sender: TObject);
begin
  ShowMovingsForm.StressMethod3Click(Sender);
end;

procedure TForm1.ForceTrackBarChange(Sender: TObject);
begin
  ShowMovingsForm.ForceTrackBarChange(Sender);
end;

procedure TForm1.StressType1Click(Sender: TObject);
begin
  StressType.ItemIndex := StressType1.ItemIndex;
  //ShowMovingsForm.StressType.ItemIndex := StressType1.ItemIndex;
  ShowMovingsForm.LoadMaxMinStress;
end;

procedure TForm1.StressType2Click(Sender: TObject);
begin
  StressType.ItemIndex := StressType2.ItemIndex;
  //ShowMovingsForm.StressType.ItemIndex := StressType1.ItemIndex;
  ShowMovingsForm.LoadMaxMinStressInMaterials;
end;

procedure TForm1.StressTypeClick(Sender: TObject);
begin
ShowMovingsForm.ChengeLegendLevel;
ShowMovingsForm.LoadMaxMinStress;
ShowMovingsForm.LoadMaxMinStressInMaterials;
ShowMovingsForm.MainRePaint;
ShowMovingsForm.LegendRePaint;
end;




procedure TForm1.EditForceChange(Sender: TObject);
begin
ShowMovingsForm.EditForceChange(Sender);
end;

procedure TForm1.EditXChange(Sender: TObject);
BEGIN
ShowMovingsForm.EditXChange(Sender);
end;

procedure TForm1.EditYChange(Sender: TObject);
BEGIN
ShowMovingsForm.EditXChange(Sender);

end;

procedure TForm1.EditMoveXChange(Sender: TObject);
begin
ShowMovingsForm.EditMoveXChange(Sender);
end;

procedure TForm1.EditMoveYChange(Sender: TObject);
begin
ShowMovingsForm.EditMoveXChange(Sender);
end;

end.

