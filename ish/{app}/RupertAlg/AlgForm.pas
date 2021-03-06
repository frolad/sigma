{*********************************************************************}
{                                                                     }
{                    ���������� ����������� ��������                  }
{                                                                     }
{                               ������� 609                           }
{                                                                     }
{                         ����� ���� ������� 2008                     }
{                                                                     }
{		    	                  (��������� ���������)	          		      }
{*********************************************************************}

unit AlgForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, Buttons, ExtCtrls, ComCtrls, ResFunc,
  CheckLst;

type
  TAlgForm = class(TForm)
    Nodes: TMemo;
    TopPanel: TPanel;
    Operations: TGroupBox;
    MainDo: TGroupBox;
    AddDo: TButton;
    DeleleDo: TButton;
    OtherDo: TGroupBox;
    ListMain: TListBox;
    ListOther: TListBox;
    Params: TPageControl;
    ChangeD: TTabSheet;
    ToDo: TCheckListBox;
    OperationsToSelect: TPanel;
    Calculate: TButton;
    ProgressBar: TProgressBar;
    INFO: TLabel;
    Information: TGroupBox;
    Posiotion: TGroupBox;
    PosRough: TRadioButton;
    PosGravityCenter: TRadioButton;
    PosDoNotUse: TRadioButton;
    MeshNRS: TTabSheet;
    NRS_TODO: TGroupBox;
    NRS_ChangeD: TRadioButton;
    NRS_AppNewNode: TRadioButton;
    NRS_Position: TGroupBox;
    NRS_PosRough: TRadioButton;
    NRS_PosGravityCenter: TRadioButton;
    NRS_PosDoNotUse: TRadioButton;
    NRS_PosNewNode: TGroupBox;
    NRS_Middle: TRadioButton;
    NRS_Optimum: TRadioButton;
    CheckTR: TGroupBox;
    UseMinTR: TCheckBox;
    Label1: TLabel;
    UpDownMinTrunc: TUpDown;
    MinTrunc: TEdit;
    ClearNodes: TButton;
    BaseAlg: TTabSheet;
    BaseMinTR: TGroupBox;
    Label2: TLabel;
    UseCheckBaseMinTR: TCheckBox;
    UpDownBaseMinTrunc: TUpDown;
    BaseMinTrunc: TEdit;
    BaseMaxSum: TGroupBox;
    Label3: TLabel;
    UseBaseMaxS: TCheckBox;
    UpDownBaseMaxS: TUpDown;
    BaseMaxS: TEdit;
    INFO2: TLabel;
    BasePosition: TGroupBox;
    BasePosRough: TRadioButton;
    BasePosGravityCenter: TRadioButton;
    BasePosDoNotUse: TRadioButton;
    INFOPanel: TPanel;
    START: TButton;
    Addings: TTabSheet;
    CheckMinTrInNewElements: TGroupBox;
    BaseCheckTRInNewElements: TCheckBox;
    UpDownBaseMinTrInNewElement: TUpDown;
    Label4: TLabel;
    BaseMinTrInNewElement: TEdit;
    CheckMinTrInNewSElements: TGroupBox;
    Label5: TLabel;
    BaseCheckTRInNewSElements: TCheckBox;
    UpDownBaseMinTrInNewSElement: TUpDown;
    BaseMinTrInNewSElement: TEdit;
    BaseCheckMinSInNewSElements: TCheckBox;
    Label6: TLabel;
    UpDownBaseMinSInNewSElement: TUpDown;
    BaseMinSInNewSElement: TEdit;
    BtnFillBaseCheckTRInNewSElements: TButton;
    BtnFillBaseCheckMinSInNewSElements: TButton;
    INFOGroupBox: TGroupBox;
    BtnFillBaseMinTrunc: TButton;
    BtnFillBaseMaxS: TButton;
    MaxS1: TEdit;
    ForMinTr: TEdit;
    BtnFillBaseMinTrInNewElement: TButton;
    OutMinTrS: TEdit;
    OutMinS: TEdit;
    OutMinTrT: TEdit;
    BtnFillMinTrunc: TButton;
    MinTrForDiag: TEdit;
    Criteria: TGroupBox;
    UP: TBitBtn;
    DOWN: TBitBtn;
    Roolback: TButton;
    Logs: TPageControl;
    LogChangeD: TTabSheet;
    LogDiag: TMemo;
    LogsT: TTabSheet;
    LogT: TMemo;
    LogsSegments: TTabSheet;
    LogSS: TMemo;
    TabSheet3: TTabSheet;
    LogSE: TMemo;
    TabSheet2: TTabSheet;
    LogPosition: TTabSheet;
    Memo1: TMemo;
    TabSheet1: TTabSheet;
    LogTR: TMemo;
    LogSum: TTabSheet;
    LogSumm: TMemo;
    NodeALL: TTabSheet;
    NodeA: TMemo;
    Statistics: TTabSheet;
    Varinat0: TGroupBox;
    Var0minT: TLabeledEdit;
    Var0minS: TLabeledEdit;
    Var0maxS: TLabeledEdit;
    Var0numE: TLabeledEdit;
    Var0numN: TLabeledEdit;
    Var0arS: TLabeledEdit;
    Var0argS: TLabeledEdit;
    Var0Refresh: TButton;
    Varinat1: TGroupBox;
    Var1numN: TLabeledEdit;
    Var1numE: TLabeledEdit;
    Var1minT: TLabeledEdit;
    Var1minS: TLabeledEdit;
    Var1maxS: TLabeledEdit;
    Var1arS: TLabeledEdit;
    Var1Refresh: TButton;
    Var1argS: TLabeledEdit;
    Summary: TGroupBox;
    SummaryMinT: TLabeledEdit;
    SummaryMinS: TLabeledEdit;
    SummaryMaxS: TLabeledEdit;
    SummaryNumE: TLabeledEdit;
    SummaryNumN: TLabeledEdit;
    SummaryArS: TLabeledEdit;
    SummaryArgS: TLabeledEdit;
    SummaryRefresh: TButton;
    SummaryArgMS: TLabeledEdit;
    Stop: TButton;
    SaveIfAlgWas: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ALLNodesClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure AddDoClick(Sender: TObject);
    procedure DeleleDoClick(Sender: TObject);
    procedure CalculateClick(Sender: TObject);
    procedure ToDoClickCheck(Sender: TObject);
    procedure BtnBlockedNodesClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
//    procedure ReCalculateClick(Sender: TObject);
//    procedure ReLoadResultsClick(Sender: TObject);
    procedure UseMinTRClick(Sender: TObject);
    procedure NRS_ChangeDClick(Sender: TObject);
    procedure NRS_AppNewNodeClick(Sender: TObject);
    procedure ClearNodesClick(Sender: TObject);
    procedure UseCheckBaseMinTRClick(Sender: TObject);
    procedure UseBaseMaxSClick(Sender: TObject);
    procedure BaseCalculateMaxSClick(Sender: TObject);
    procedure StopClick(Sender: TObject);
    procedure CalcSumEClick(Sender: TObject);
    procedure STARTClick(Sender: TObject);
    procedure BaseCheckTRInNewElementsClick(Sender: TObject);
    procedure BaseCheckTRInNewSElementsClick(Sender: TObject);
    procedure BaseCheckMinSInNewSElementsClick(Sender: TObject);
    procedure BtnFillBaseCheckMinSInNewSElementsClick(Sender: TObject);
    procedure BtnFillBaseCheckTRInNewSElementsClick(Sender: TObject);
    procedure BtnFillBaseMinTruncClick(Sender: TObject);
    procedure BtnFillBaseMaxSClick(Sender: TObject);
    procedure BtnFillBaseMinTrInNewElementClick(Sender: TObject);
    procedure BtnFillMinTruncClick(Sender: TObject);
    procedure TabSheet1Show(Sender: TObject);
    procedure UPClick(Sender: TObject);
    procedure DOWNClick(Sender: TObject);
    procedure ListMainClick(Sender: TObject);
    procedure ListOtherClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Var0RefreshClick(Sender: TObject);
    procedure Var1RefreshClick(Sender: TObject);
    procedure SummaryRefreshClick(Sender: TObject);
    procedure SaveIfAlgWasClick(Sender: TObject);
    procedure RoolbackClick(Sender: TObject);

  private
    { Private declarations }
    procedure Regularization;
    procedure BlockedNodesToForm;
    procedure BlockedNodesDefault;
    procedure ShowTR;
    procedure ChangeDiagLines(TypeOfPos : Integer);stdcall;
    procedure PositionNodeToCenter(Node: Integer; TypeOfPos : Integer);stdcall;
    procedure PositionNodes(RGO: Integer;TypeOfPos : Integer);stdcall;
    procedure TDivision(TypeOfPos:Integer);
      Function CheckENeedDivision(ELEMENT:integer):boolean;
      Function CheckDoTDivision(ELEMENT:integer):integer;
      procedure DoTDivision(ELEMENT:integer;NEARELEMENT:integer);
      Function CalcSForSegment(ELEMENT:integer):real;
      Function CalcRoundSForSegment(ELEMENT:integer;CHECKEL:Integer; Log:  boolean):real;
      function CheckMinTrInElement(ELEMENT:Integer): boolean;
      function CheckMinTrInNewElement(ELEMENT:integer;NEARELEMENT:integer;Fx,Fy:Real; Treg: Integer): boolean;
      Function CheckMaxS(ELEMENT:integer):boolean;
    procedure SDivision(TypeOfPos:Integer);
      Function CheckForRSegment(ELEMENT : Integer):Boolean;
      Function CalcSForSegmentInCoord(x1,y1,x2,y2,x3,y3:real):real;          
    procedure SDivision2(TypeOfPos:Integer);
      Function CheckForRSegment2(ELEMENT : Integer):Boolean;
  public
    Function CalculateMinimumTr(Log: Boolean):Real;
    Function CalculateMaximumS(Log: Boolean):Real;
    Function CalculateMinimumS(Log: Boolean):Real;
    { Public declarations }
  end;

  TMyThread = class(TThread)
  private
  protected
    procedure Execute; override;
  public
    constructor Create(CreateSuspended: Boolean);
    procedure PushTheButton;
  end;

// �������� ������ � ���������� ��������
  TProcPage = Record
    ChD: boolean; // �������� ��������� ����� ���������� (��������� ��� ���������)
    Pr1: boolean; // �������� ��������� ����������� (��������� ��� ���������)
    Pr2: boolean; // �������� ��������� ����������� (��������� ��� ���������)
  end;
// �������� ���������
  TOneProcedure = Record
    InTr  : Integer;
    InS   : Integer;
    OutTr : Integer;
    OutS  : Integer;
    Pos   : Integer; // (0 - ��� �����., 1 - ������ �����., 2 - �� ������ ������� )
    Pages : TProcPage;
  end;
// ������ ��������
  TProcedures = Record
    Proc  : array of TOneProcedure;
    count : Integer;
  end;

var
  AlgF    : TAlgForm;
  AlgSF   : TAlgForm;
  State   : Boolean;
  Rx,Ry   : Real;
  ProcList: TProcedures;
  Thread  : TMyThread;
{  ChDiag,PosNodes:cardinal; //������
  HChDiag,HPosNodes:integer;}

implementation

USES Math, Registry, Main;
{$R *.dfm}

// TMyThread
constructor TMyThread.Create(CreateSuspended: Boolean);
begin
  inherited Create(CreateSuspended);
  Priority := tpIdle;
end;
procedure TMyThread.Execute;
begin
   AlgF.STARTClick(nil);
end;
procedure TMyThread.PushTheButton;
begin
  AlgF.Stop.Click;
end;


procedure TAlgForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  If AlgF <> nil then begin
    MainR.ActiveWindow.Items.Delete(MainR.ActiveWindow.items.IndexOf('Algorithms'));
    MainR.ActiveForm[2]:=-1;
    MainR.RefreshIndexes;
    AlgF := nil;
  end;
  If AlgSF<>nil then AlgSF := nil;
end;

procedure TAlgForm.ALLNodesClick(Sender: TObject);
Var
  Node: Integer;
  i,j : Integer;
{  Str: String;}
begin
  Nodea.Lines.Clear();
  if List.ResNodes.Count>0 then begin
    Nodea.Lines.Add(format('-------------------- %s -------------------',
                          ['������ ���� ������� �����']));
    Node:=0;
    Nodea.Lines.Add('���� �     X         Y           Node(�� �������������)');
    FOR i:=1 TO List.ResNodes.Count DO BEGIN
      IF List.ResNodes.Nodes[i].inf.InOut then begin
        Nodea.Lines.Add(Format('���� �%d (%-7f,%-7f), Renum(%d)',
           [i,List.ResNodes.Nodes[i].x,List.ResNodes.Nodes[i].y,
           List.ResNodes.Nodes[i].Number]));
        inc(Node);
      end;
    end;
    Nodea.Lines.Add('����������:'+IntToStr(Node));
    Nodea.Lines.Add(format('-------------------- %s -------------------',
                          ['������ ���x ���������� �����']));
    Node:=0;
    Nodea.Lines.Add('���� �     X         Y           Node(�� �������������)');
    FOR i:=1 TO List.ResNodes.Count DO BEGIN
      IF not (List.ResNodes.Nodes[i].inf.InOut) then begin
        Nodea.Lines.Add(Format('���� �%d (%-7f,%-7f), Renum(%d)',
           [i,List.ResNodes.Nodes[i].x,List.ResNodes.Nodes[i].y,
           List.ResNodes.Nodes[i].Number]));
        inc(Node);
      end;
    end;
  Nodea.Lines.Add('����������:'+IntToStr(Node));
  end;
end;

// ��������� ��������
procedure TAlgForm.AddDoClick(Sender: TObject);
var
  str,s2: string;
  pos: integer;
begin
  IF PosGravityCenter.Checked then str:=PosGravityCenter.Caption
    ELSE IF PosDoNotUse.Checked then str:=PosDoNotUse.Caption
    ELSE IF PosRough.Checked then str:=PosRough.Caption;
  IF BasePosGravityCenter.Checked then s2:=BasePosGravityCenter.Caption
    ELSE IF BasePosDoNotUse.Checked then s2:=BasePosDoNotUse.Caption
    ELSE IF BasePosRough.Checked then s2:=BasePosRough.Caption;
{  IF PosGravityCenter.Checked then pos:=2
    ELSE IF PosDoNotUse.Checked then pos:=0
    ELSE IF PosRough.Checked then pos:=1;
  IF BasePosGravityCenter.Checked then pos:=2
    ELSE IF BasePosDoNotUse.Checked then pos:=0
    ELSE IF BasePosRough.Checked then pos:=1;}
// ���������� � ������
  If ListMain.ItemIndex >= 0 then begin // ��������
    IF ListMain.Items.Strings[ListMain.ItemIndex]='����� ����������' then ToDo.Items.Add(ListMain.Items.Strings[ListMain.ItemIndex]+' ('+str+')')
    ELSE IF ListMain.Items.Strings[ListMain.ItemIndex]='��������� �����������' then ToDo.Items.Add(ListMain.Items.Strings[ListMain.ItemIndex]+' ('+s2+')')
    ELSE IF ListMain.Items.Strings[ListMain.ItemIndex]='��������� ��������' then ToDo.Items.Add(ListMain.Items.Strings[ListMain.ItemIndex]+' ('+s2+')')
    ELSE IF ListMain.Items.Strings[ListMain.ItemIndex]='��������� �������' then ToDo.Items.Add(ListMain.Items.Strings[ListMain.ItemIndex]+' ('+s2+')')
      else ToDo.Items.Add(ListMain.Items.Strings[ListMain.ItemIndex]);
    ListMain.ItemIndex:=-1;
  end;
  If ListOther.ItemIndex >= 0 then begin // ��������������
{    IF ListOther.Items.Strings[ListOther.ItemIndex]='���������������� �����' then ToDo.Items.Add(ListOther.Items.Strings[ListOther.ItemIndex]+' ('+str+')')
      else} ToDo.Items.Add(ListOther.Items.Strings[ListOther.ItemIndex]);
    ListOther.ItemIndex:=-1;
  end;
end;
// ������� ��������
procedure TAlgForm.DeleleDoClick(Sender: TObject);
begin
  if ToDo.ItemIndex>=0 then begin
    ToDo.DeleteSelected;
  end;  
end;
// �������� ����� �� ������
procedure TAlgForm.UPClick(Sender: TObject);
begin
  if ToDo.ItemIndex>0 then Todo.Items.Exchange(ToDo.ItemIndex,ToDo.ItemIndex-1);
end;
// �������� ���� �� ������
procedure TAlgForm.DOWNClick(Sender: TObject);
begin
  if ToDo.ItemIndex<(ToDo.Items.Count-1) then Todo.Items.Exchange(ToDo.ItemIndex,ToDo.ItemIndex+1);
end;

procedure TAlgForm.STARTClick(Sender: TObject);
Var
  i: integer;
begin
//  HChDiag:=beginthread(nil,1024000,@TAlgForm.ChangeDiagLines,nil,0,ChDiag);// ����� ��� ����������
  For i:=1 to ToDo.Items.Count do begin
    if ToDo.Checked[i-1] then begin
      IF ToDo.Items.Strings[i-1]='����� ���������� ('+PosGravityCenter.Caption+')' then ChangeDiagLines(2)
      else IF ToDo.Items.Strings[i-1]='����� ���������� ('+PosDoNotUse.Caption+')' then ChangeDiagLines(0)
      else IF ToDo.Items.Strings[i-1]='����� ���������� ('+PosRough.Caption+')' then ChangeDiagLines(1)
      else IF ToDo.Items.Strings[i-1]='��������� ����������� ('+PosGravityCenter.Caption+')' then TDivision(2)
      else IF ToDo.Items.Strings[i-1]='��������� ����������� ('+PosDoNotUse.Caption+')' then TDivision(0)
      else IF ToDo.Items.Strings[i-1]='��������� ����������� ('+PosRough.Caption+')' then TDivision(1)
      else IF ToDo.Items.Strings[i-1]='��������� �������� ('+PosGravityCenter.Caption+')' then SDivision(2)
      else IF ToDo.Items.Strings[i-1]='��������� �������� ('+PosDoNotUse.Caption+')' then SDivision(0)
      else IF ToDo.Items.Strings[i-1]='��������� �������� ('+PosRough.Caption+')' then SDivision(1)
      else IF ToDo.Items.Strings[i-1]='��������� ������� ('+PosGravityCenter.Caption+')' then SDivision2(2)
      else IF ToDo.Items.Strings[i-1]='��������� ������� ('+PosDoNotUse.Caption+')' then SDivision2(0)
      else IF ToDo.Items.Strings[i-1]='��������� ������� ('+PosRough.Caption+')' then SDivision2(1)
      else IF ToDo.Items.Strings[i-1]='������������� �����' then Regularization
      else IF ToDo.Items.Strings[i-1]='����������� �����' then BlockedNodesToForm
      else IF ToDo.Items.Strings[i-1]='�������������� �����' then BlockedNodesDefault
      else IF ToDo.Items.Strings[i-1]=('���������������� ����� ('+PosGravityCenter.Caption+')') then PositionNodes(1,2)
      else IF ToDo.Items.Strings[i-1]=('���������������� ����� ('+PosDoNotUse.Caption+')') then PositionNodes(1,0)
      else IF ToDo.Items.Strings[i-1]=('���������������� ����� ('+PosRough.Caption+')') then PositionNodes(1,1)
    else Nodes.Lines.Add('�� ����� ���������!');
    end;
  end;
//  terminatethread(HChDiag,0); // �������� ����� ��� ����������
end;

procedure TAlgForm.CalculateClick(Sender: TObject);
Var
 i: Integer;
 Ch1: boolean;
begin
  SaveIfAlgWas.Visible:=False;
  Roolback.Visible:=False;
  Ch1:=False;
  Nodes.Lines.Clear;
  For i:=1 to ToDo.Items.Count do if ToDo.Checked[i-1] then Ch1:=True;
  IF Ch1 then begin
    LogS.ActivePageIndex:=4;
    Sleep(100); Stop.Visible:=True;
// ���������� ��������� �������� ������� ����������� ��������
    State:=True;
// ��������� ����� ��� �������
    Thread:=TMyThread.Create(True);
    Thread.Priority:=tpLower;
//  T2:=TMyThread.Create(True);
    Thread.Execute;
    Thread.Terminate;
//  STARTClick(nil);
    Stop.Visible:=False;
    INFO.Visible:=False;
    ProgressBar.Position:=0;
//    Upload.CopyToVariant(MainVariant); {��������� ���������} - � ���� ��???
    SaveIfAlgWas.Visible:=True;
    Roolback.Visible:=True;
  end
  else Nodes.Lines.Add('<�� ������� ��������!>');
end;

procedure TAlgForm.ToDoClickCheck(Sender: TObject);
begin
  ToDo.ItemIndex:=-1;
end;

// ������� ��������� � �������������� ��������
procedure TAlgForm.ListMainClick(Sender: TObject);
begin
  ListOther.ItemIndex:=-1;
end;
// ������� ��������� � �������� ��������
procedure TAlgForm.ListOtherClick(Sender: TObject);
begin
  ListMain.ItemIndex:=-1;
end;

 //        '����� ����������'
procedure TAlgForm.ChangeDiagLines(TypeOfPos : Integer);
var
  I,Num_Diag,old: integer;
  Node1,Node2,Node3: integer; // ���� �������� � ���� �������� ��������
  ELEMENT, POS: INTEGER;
  function findNextNode(n1:Integer;n2:integer;k:integer):integer; // ����� ���� � ������� ��������, ��� �������� 2 ����, � ��� ����� ������� �� ����������
  var
    i2: integer;
  begin
    for i2:=1 to list.ResElements.Count do begin
      if list.ResElements.Elements[i2].Node1=n1 then begin
          IF (list.ResElements.Elements[i2].Node2=n2) and (list.ResElements.Elements[i2].Node3<>k) then begin Result:=list.ResElements.Elements[i2].Node3; ELEMENT:=i2; POS:=3; Exit; end
          else IF (list.ResElements.Elements[i2].Node3=n2) and (list.ResElements.Elements[i2].Node2<>k) then begin Result:=list.ResElements.Elements[i2].Node2; ELEMENT:=i2; POS:=2; Exit; end;
      end
      else if list.ResElements.Elements[i2].Node2=n1 then begin
          IF (list.ResElements.Elements[i2].Node1=n2) and (list.ResElements.Elements[i2].Node3<>k) then begin Result:=list.ResElements.Elements[i2].Node3; ELEMENT:=i2; POS:=3; Exit; end
          else IF (list.ResElements.Elements[i2].Node3=n2) and (list.ResElements.Elements[i2].Node1<>k) then begin Result:=list.ResElements.Elements[i2].Node1; ELEMENT:=i2; POS:=1; Exit; end;
      end
      else if list.ResElements.Elements[i2].Node3=n1 then begin
          IF (list.ResElements.Elements[i2].Node1=n2) and (list.ResElements.Elements[i2].Node2<>k) then begin Result:=list.ResElements.Elements[i2].Node2; ELEMENT:=i2; POS:=2; Exit; end
          else IF (list.ResElements.Elements[i2].Node2=n2) and (list.ResElements.Elements[i2].Node1<>k) then begin Result:=list.ResElements.Elements[i2].Node1; ELEMENT:=i2; POS:=1; Exit; end;
      end
      else Result:=-1;
    end;
  end;
  function Dimension(x1,y1,x2,y2:real): real; // ���������� ����� ����� �������
    begin Result:=sqrt((x2-x1)*(x2-x1)+(y2-y1)*(y2-y1)); end;
  function CheckNeedChange(n1:integer;n2:integer;n3:integer;r:integer): boolean;
  Const
    pi=3.1415926535897932384626433832795;
  Var
    P1x,P1y,P2x,P2y: real; // ���������� ������������ ���������
    D1x,D1y,D2x,D2y: real; // ���������� ������� ���������
    P,D: real;    // ����� ����������
    tr1,tr2,tr3,tr4,tr5,tr6:real;    // ������������ ����
    Flag: boolean;          // ���� (���� ��� ���� ������ �������, �� True, ���� ���� �� 1 ������, �� False)
    s1,s2,s3,s4,sP,sD: real;
  begin
      P1x:=list.ResNodes.Nodes[Upload.Find(N3)].X;
      P1y:=list.ResNodes.Nodes[Upload.Find(N3)].Y;
      P2x:=list.ResNodes.Nodes[Upload.Find(R)].X;
      P2y:=list.ResNodes.Nodes[Upload.Find(R)].Y;
      D1x:=list.ResNodes.Nodes[Upload.Find(N1)].X;
      D1y:=list.ResNodes.Nodes[Upload.Find(N1)].Y;
      D2x:=list.ResNodes.Nodes[Upload.Find(N2)].X;
      D2y:=list.ResNodes.Nodes[Upload.Find(N2)].Y;
      P:=Dimension(P1x,P1y,P2x,P2y);
      D:=Dimension(D1x,D1y,D2x,D2y);
// ���� P<D, �� ������ �� ������� :)
      IF ((D-P)>0.0001) then begin
        IF UseMinTR.Checked then begin
          Flag:=True;
        // �������� ������������ �����
          tr1:=ABS(ArcTan2((D1x-P1x)*(P2y-P1y)-(P2x-P1x)*(D1y-P1y),(D1x-P1x)*(P2x-P1x)+(D1y-P1y)*(P2y-P1y))*(180/pi));
          tr2:=ABS(ArcTan2((P1x-D1x)*(P2y-D1y)-(P2x-D1x)*(P1y-D1y),(P1x-D1x)*(P2x-D1x)+(P1y-D1y)*(P2y-D1y))*(180/pi));
          tr3:=ABS(180-(tr1+tr2));
          tr4:=ABS(ArcTan2((D2x-P1x)*(P2y-P1y)-(P2x-P1x)*(D2y-P1y),(D2x-P1x)*(P2x-P1x)+(D2y-P1y)*(P2y-P1y))*(180/pi));
          tr5:=ABS(ArcTan2((P1x-D2x)*(P2y-D2y)-(P2x-D2x)*(P1y-D2y),(P1x-D2x)*(P2x-D2x)+(P1y-D2y)*(P2y-D2y))*(180/pi));
          tr6:=ABS(180-(tr4+tr5));
      // �������� ������������ ����
          IF tr1<StrToInt(MinTrunc.Text) then begin Flag:=False; LogDiag.Lines.Add(format('@@ ���� ����� (%d^:%d:^%d) %f < %s (%s)',[Upload.Find(N1),Upload.Find(N3),Upload.Find(R),tr1,MinTrunc.Text,BoolToStr(Flag,True)])); end
            ELSE IF tr2<StrToInt(MinTrunc.Text) then begin Flag:=False; LogDiag.Lines.Add(format('@@ ���� ����� (%d^:%d:^%d) %f < %s (%s)',[Upload.Find(N3),Upload.Find(R),Upload.Find(N1),tr2,MinTrunc.Text,BoolToStr(Flag,True)])); end
            ELSE IF tr3<StrToInt(MinTrunc.Text) then begin Flag:=False; LogDiag.Lines.Add(format('@@ ���� ����� (%d^:%d:^%d) %f < %s (%s)',[Upload.Find(N3),Upload.Find(N1),Upload.Find(R),tr3,MinTrunc.Text,BoolToStr(Flag,True)])); end
            ELSE IF tr4<StrToInt(MinTrunc.Text) then begin Flag:=False; LogDiag.Lines.Add(format('@@ ���� ����� (%d^:%d:^%d) %f < %s (%s)',[Upload.Find(N2),Upload.Find(N3),Upload.Find(R),tr4,MinTrunc.Text,BoolToStr(Flag,True)])); end
            ELSE IF tr5<StrToInt(MinTrunc.Text) then begin Flag:=False; LogDiag.Lines.Add(format('@@ ���� ����� (%d^:%d:^%d) %f < %s (%s)',[Upload.Find(N3),Upload.Find(R),Upload.Find(N2),tr5,MinTrunc.Text,BoolToStr(Flag,True)])); end
            ELSE IF tr6<StrToInt(MinTrunc.Text) then begin Flag:=False; LogDiag.Lines.Add(format('@@ ���� ����� (%d^:%d:^%d) %f < %s (%s)',[Upload.Find(N3),Upload.Find(N2),Upload.Find(R),tr6,MinTrunc.Text,BoolToStr(Flag,True)])); end;
          IF Flag then
            begin
              // �������� ������ ���������
              s1:= CalcSForSegmentInCoord(d1x,d1y,d2x,d2y,p1x,p1y);
              s2:= CalcSForSegmentInCoord(d1x,d1y,d2x,d2y,p2x,p2y);
              sD:=s1+s2;
              s3:= CalcSForSegmentInCoord(p1x,p1y,p2x,p2y,d1x,d1y);
              s4:= CalcSForSegmentInCoord(p1x,p1y,p2x,p2y,d2x,d2y);
              sP:=s3+s4;
              IF (s3<0.1) or (s4<0.1) then Result:=False
              else if (ABS(sD-sP)>0.0001) then begin
                LogDiag.Lines.Add(Format('@@ ������� ��������: %d-%d-%d(%f)+%d-%d-%d(%f)=%f',[Upload.Find(N1),Upload.Find(N2),Upload.Find(R),s1,Upload.Find(N1),Upload.Find(N2),Upload.Find(N3),s2,sD]));
                LogDiag.Lines.Add(Format('@@ ������������� �������: %d-%d-%d(%f)+%d-%d-%d(%f)=%f',[Upload.Find(N3),Upload.Find(R),Upload.Find(N1),s3,Upload.Find(N3),Upload.Find(R),Upload.Find(N2),s4,sP]));
                Result:=False; end
              else Result:=True;
            end
            else Result:=False;
        end
        else
          begin
            // �������� ������ ���������
            s1:= CalcSForSegmentInCoord(d1x,d1y,d2x,d2y,p1x,p1y);
            s2:= CalcSForSegmentInCoord(d1x,d1y,d2x,d2y,p2x,p2y);
            sD:=s1+s2;
            s3:= CalcSForSegmentInCoord(p1x,p1y,p2x,p2y,d1x,d1y);
            s4:= CalcSForSegmentInCoord(p1x,p1y,p2x,p2y,d2x,d2y);
            sP:=s3+s4;
            IF (s3<0.1) or (s4<0.1) then Result:=False
            else if (ABS(sD-sP)>0.1) then begin
              LogDiag.Lines.Add(Format('@@ ������� ��������: %d-%d-%d(%f)+%d-%d-%d(%f)=%f',[Upload.Find(N1),Upload.Find(N2),Upload.Find(R),s1,Upload.Find(N1),Upload.Find(N2),Upload.Find(N3),s2,sD]));
              LogDiag.Lines.Add(Format('@@ ������������� �������: %d-%d-%d(%f)+%d-%d-%d(%f)=%f',[Upload.Find(N3),Upload.Find(R),Upload.Find(N1),s3,Upload.Find(N3),Upload.Find(R),Upload.Find(N2),s4,sP]));
              Result:=False; end
            else Result:=True;
          end
      end
      else Result:=False;
  end;
  procedure ChangeIFNeeded(n1:integer;n2:integer;n3:integer);
  Var
    NodeR: Integer;
  begin
  IF ((not list.ResNodes.Nodes[Upload.Find(N1)].inf.InOut) and (not list.ResNodes.Nodes[Upload.Find(N2)].inf.InOut)) or
    (List.ResElements.Elements[i].Material = List.ResElements.Elements[ELEMENT].Material) then begin
    NodeR:=findNextNode(N1,N2,N3);
    IF NodeR>0 then begin
      IF CheckNeedChange(n1,n2,n3, NodeR) then begin
        list.ResElements.Elements[i].Node1:=NodeR;
        list.ResElements.Elements[i].Node2:=N2;
        list.ResElements.Elements[i].Node3:=N3;
        list.ResElements.Elements[ELEMENT].Node1:=NodeR;
        list.ResElements.Elements[ELEMENT].Node2:=N1;
        list.ResElements.Elements[ELEMENT].Node3:=N3;
        LogDiag.Lines.Add(format('@ ��������� ����� %d:%d ������ �� %d:%d',[Upload.Find(N1),Upload.Find(N2),Upload.Find(N3),Upload.Find(NodeR)]));
        LogDiag.Update;
//        Nodes.Lines.Add(format('��������� ����� %d:%d ������ �� %d:%d',[Upload.Find(N1),Upload.Find(N2),Upload.Find(N3),Upload.Find(NodeR)]));
//        Nodes.Update;
        inc(Num_Diag);
      END;
    end;
  end;  
  end;
begin
  Num_Diag:=0;
  Nodes.Lines.Add('����� ����������');
  Nodes.Update;
  LogDiag.Lines.Add('-------------------');
  LogDiag.Update;
  INFO.Visible:=True;
  ProgressBar.Position:=0;
  ProgressBar.Min:=0;
  ProgressBar.Max:=list.ResElements.Count;
  for i:=1 to list.ResElements.Count do begin
    IF not State then begin
      Nodes.Lines.Add('<- ���������� ��������->');
      Nodes.Lines.Add(format('���������� ���������� ����������: %d',[Num_Diag]));
      exit; end;
    Application.ProcessMessages; {��� ������}
    INFO.Caption:=format('�� %d ��������� ���������� %d',[list.ResElements.Count,i]);
    INFO.update;
// Node1-Node2
    Node1:=list.ResElements.Elements[i].Node1;
    Node2:=list.ResElements.Elements[i].Node2;
    Node3:=list.ResElements.Elements[i].Node3;
    ChangeIFNeeded(Node1,Node2,Node3); old:=Num_Diag;
    If Old<>Num_Diag then PositionNodes(0,TypeOfPos); // ������������� ����
// Node2-Node3
// 1<2,2<3,3<1
    Node1:=list.ResElements.Elements[i].Node1;
    Node2:=list.ResElements.Elements[i].Node2;
    Node3:=list.ResElements.Elements[i].Node3;
    ChangeIFNeeded(Node2,Node3,Node1);
    If Old<>Num_Diag then PositionNodes(0,TypeOfPos); // ������������� ����
// Node3-Node1
// 1<1,2<3,3<2
    Node1:=list.ResElements.Elements[i].Node1;
    Node2:=list.ResElements.Elements[i].Node2;
    Node3:=list.ResElements.Elements[i].Node3;
    ChangeIFNeeded(Node1,Node3,Node2);
    If Old<>Num_Diag then PositionNodes(0,TypeOfPos); // ������������� ����
    ProgressBar.Position:=ProgressBar.Position+1;
//    ProgressBar.Update;
  end;
  ProgressBar.Position:=0;
  INFO.Visible:=False;
  Nodes.Lines.Add(format('���������� ���������� ����������: %d',[Num_Diag]));
  Nodes.Lines.Add('--- ����� ���������� ��������� ---');
end;
//���������������� ���� ���������� ����� �� ������ ��������������
procedure TAlgForm.PositionNodes(RGO: Integer; TypeOfPos : Integer);
  Procedure Start;
  begin
    IF RGO>0 then begin
      Nodes.Lines.Add('���������������� �����');
      Nodes.Update;
      INFO.Visible:=True;
      ProgressBar.Position:=0;
      ProgressBar.Min:=0;
      ProgressBar.Max:=list.ResNodes.Count;
    end
  end;
  Procedure Continue(i:integer);
  begin
    IF RGO>0 then begin
      INFO.Caption:=format('�� %d ����� ���������������� %d',[list.ResNodes.Count,i]);
      INFO.Update;
      ProgressBar.Position:=ProgressBar.Position+1;
      ProgressBar.Update;
      ProgressBar.Position:=0;
    end;
  end;
  Procedure Stop;
  begin
    IF RGO>0 then begin
      INFO.Visible:=False;
      Nodes.Lines.Add('--- ���� ����������������');
    end;
  end;
var
  i: integer;
begin
  IF TypeOfPos>0 then begin
//    HPosNodes:=beginthread(nil,1024,@TAlgForm.PositionNodeToCenter,nil,0,PosNodes);// ����� ��� ����������������
    Start;
    for i:=1 to list.ResNodes.Count do begin
      if not list.ResNodes.Nodes[Upload.Find(i)].inf.InOut then PositionNodeToCenter(i,TypeOfPos);
      IF not State then begin Nodes.Lines.Add('<- ���������� ��������->'); exit; end;
      Application.ProcessMessages; {��� ������}
      Continue(i);
    end;
    Stop;
//    terminatethread(HPosNodes,0);// �������� ����� ��� ����������������
  end;
end;

//���������������� ����������� ���� �� ������ ��������
procedure TAlgForm.PositionNodeToCenter(Node: Integer; TypeOfPos : Integer);
var
  i,ne,nn :integer; // �������, ���-�� ���������, �����
  s: array [0..50] of integer; // ��������� ������ ���������
  RoundE: array of integer; // ���������� ��������
  RoundNodes: array of integer; // ���������� ����
  CenterX,CenterY: real; // ����� ��������������
  function find(k: integer):integer; // ����� ���� � ������� ����� ��������, ��� �����
  begin
    if (list.ResElements.Elements[k].Node1=Node) or (list.ResElements.Elements[k].Node2=Node) or (list.ResElements.Elements[k].Node3=Node) then Result:=k
    else Result:=-1;
  end;
  function findNotAs(k: integer;R: integer):integer;// ����� ������������� � R ���� � k ��������
  begin
    if list.ResElements.Elements[k].Node1<>R then Result:=list.ResElements.Elements[k].Node1
    else if list.ResElements.Elements[k].Node2<>R then Result:=list.ResElements.Elements[k].Node2
    else if list.ResElements.Elements[k].Node3<>R then Result:=list.ResElements.Elements[k].Node3
    else Result:=-1;
  end;
  function findNextNode(k:Integer;k2:integer):integer; // ����� ��������� ���� � ��������, ��� �������� 2 ����, ��� ����� �� �� ����������
  var
    i2: integer;
  begin
    for i2:=1 to ne do begin
      if list.ResElements.Elements[RoundE[i2]].Node1=Node then begin
          IF (list.ResElements.Elements[RoundE[i2]].Node2=k) and (list.ResElements.Elements[RoundE[i2]].Node3<>k2) then begin Result:=list.ResElements.Elements[RoundE[i2]].Node3; Exit; end
          else IF (list.ResElements.Elements[RoundE[i2]].Node3=k) and (list.ResElements.Elements[RoundE[i2]].Node2<>k2) then begin Result:=list.ResElements.Elements[RoundE[i2]].Node2; Exit; end;
      end
      else if list.ResElements.Elements[RoundE[i2]].Node2=Node then begin
          IF (list.ResElements.Elements[RoundE[i2]].Node1=k) and (list.ResElements.Elements[RoundE[i2]].Node3<>k2) then begin Result:=list.ResElements.Elements[RoundE[i2]].Node3; Exit; end
          else IF (list.ResElements.Elements[RoundE[i2]].Node3=k) and (list.ResElements.Elements[RoundE[i2]].Node1<>k2) then begin Result:=list.ResElements.Elements[RoundE[i2]].Node1; Exit; end;
      end
      else if list.ResElements.Elements[RoundE[i2]].Node3=Node then begin
          IF (list.ResElements.Elements[RoundE[i2]].Node1=k) and (list.ResElements.Elements[RoundE[i2]].Node2<>k2) then begin Result:=list.ResElements.Elements[RoundE[i2]].Node2; Exit; end
          else IF (list.ResElements.Elements[RoundE[i2]].Node2=k) and (list.ResElements.Elements[RoundE[i2]].Node1<>k2) then begin Result:=list.ResElements.Elements[RoundE[i2]].Node1; Exit; end;
      end
      else Result:=-1;
    end;
  end;
  procedure PositionNodeToGroughCenter;
  var
    j: integer;
  begin
    // ���� ����� ��������������
    CenterX:=0; CenterY:=0;
    for j:=1 to nn do begin
      CenterX:= CenterX + List.ResNodes.Nodes[Upload.Find(RoundNodes[j])].X;
      CenterY:= CenterY + List.ResNodes.Nodes[Upload.Find(RoundNodes[j])].Y;
    end;
    IF nn<>0 then begin
      CenterX:=CenterX/nn;
      CenterY:=CenterY/nn;
      list.ResNodes.Nodes[Upload.Find(Node)].X:=CenterX;
      list.ResNodes.Nodes[Upload.Find(Node)].Y:=CenterY;
    end;
  end;
// ����� ������ ���� ��� �������������� � ������ ������ �� 20 (��� �������� ���������������, ��� ������ �� ��������)
  procedure PositionNodeToGravityCenter;
  var
    k: integer;
    Cx,Cy,Mx,My,Cs,ctxv,ctyv,sv,Si,S: real; // ������� ������ + ������� ��������������
    x,y: array of real;
  begin
  // ���� ����� ��������������
    CenterX:=0; CenterY:=0;
    Cx:=0; Cy:=0; Mx:=0; My:=0; Cs:=0; sv:=0; S:=0;
    for k:=2 to nn do begin
      Cs:= ((List.ResNodes.Nodes[Upload.Find(RoundNodes[k-1])].X * List.ResNodes.Nodes[Upload.Find(RoundNodes[k])].Y)
         - (List.ResNodes.Nodes[Upload.Find(RoundNodes[k])].X * List.ResNodes.Nodes[Upload.Find(RoundNodes[k-1])].Y))/2;
      Cx:= (List.ResNodes.Nodes[Upload.Find(RoundNodes[k-1])].X + List.ResNodes.Nodes[Upload.Find(RoundNodes[k])].X)/3;
      Cy:= (List.ResNodes.Nodes[Upload.Find(RoundNodes[k-1])].Y + List.ResNodes.Nodes[Upload.Find(RoundNodes[k])].Y)/3;
      Mx:=Mx + Cs*Cx;
      My:=My + Cs*Cy;
      Si:=Si+Cs;
    end;
    IF Si<>0 then begin
      ctxv:=  Mx/Si;
      ctyv:=  My/Si;
      sv:=  abs(Si);
      CenterX:=Round(ctxv*10)/10;
      CenterY:=Round(ctyv*10)/10;
      S:=Round(Sv*10)/10;
      list.ResNodes.Nodes[Upload.Find(Node)].X:=CenterX;
      list.ResNodes.Nodes[Upload.Find(Node)].Y:=CenterY;
    end
    else begin
      CenterX:=Cx;
      CenterY:=Cy;
      S:=-1;
      list.ResNodes.Nodes[Upload.Find(Node)].X:=CenterX;
      list.ResNodes.Nodes[Upload.Find(Node)].Y:=CenterY;
    end;
  end;

begin
// ���� ���� ����������, �� ����� ������� ����� ����� ����� ���������
// +1 ������ ������ � �����, ����� ������� ������ (nn:=ne+1)
  if not list.ResNodes.Nodes[Upload.Find(Node)].inf.InOut then begin
    ne:=0;
    for I:=1 to list.ResElements.Count do begin
      if find(i)<>-1 then begin
        inc(ne);
        s[ne]:=i;
      end;
    end;
    nn:=ne+1;
    SetLength(RoundE,ne+1);
    SetLength(RoundNodes,nn+1);
// ���������� ������� ��������
    for I:=1 to ne do RoundE[i]:=s[i];
// ���������� ������� ���� (������� ������ ������� �������)
    for i:=1 to nn-1 do begin
      if i=1 then begin
        RoundNodes[i]:=findNotAs(RoundE[i],node);
        RoundNodes[i+1]:=findNextNode(RoundNodes[i],0);
      end
      else RoundNodes[i+1]:=findNextNode(RoundNodes[i],RoundNodes[i-1]);
    end;
   IF TypeOfPos = 1 then PositionNodeToGroughCenter
   ELSE IF TypeOfPos = 2 then PositionNodeToGravityCenter;
  end
  else Memo1.Lines.Add('����:'+IntToStr(Upload.Find(Node))+'������ ��������');
end;

//        '��������� �����������'
procedure TAlgForm.TDivision(TypeOfPos:Integer);
Var
  i, num_elem_old: integer;
  NeedDivision: boolean;
  CanDoDivision: integer;
  Done: Boolean;
  procedure DoIt;
  begin
    NeedDivision:=CheckENeedDivision(i); // �������� ������������� ���������
    IF not NeedDivision then CanDoDivision:=CheckDoTDivision(i); // �������� ����������� � ���������, ���� ��������
    IF CanDoDivision>0 then begin DoTDivision(i,CanDoDivision);
      Done:=True;
      PositionNodes(0,TypeOfPos); {������������� ����}
    End
    else Done:=False;
  end;
begin
  Nodes.Lines.Add('{ ��������� ������������');
  Nodes.Update;
  LogT.Lines.Clear;
  num_elem_old:=list.ResElements.Count;
  if (List.ResNodes.Count>0) and (List.ResElements.Count>0) then begin
    Done:=False;
    LogT.Lines.Add('&&&&&&&&&&&&&&&&&&&&&&&&&&&&&');
    LogT.Update;
    INFO.Visible:=True;
    ProgressBar.Min:=0;
// ���������� ��������� ���-�� ���� ������������ ������ ��� �������������
    Repeat
      LogT.Lines.Add(' ����� ����������� ������������...');
      i:=1;   CanDoDivision:=0;
      ProgressBar.Position:=0;
      ProgressBar.Max:=list.ResElements.Count;
      repeat
        IF not State then begin
          Nodes.Lines.Add('<- ���������� ��������->');
          Nodes.Lines.Add(format('���������� ������������� ���� %d',[num_elem_old]));
          Nodes.Lines.Add(format('����� ������������� ����� %d',[list.ResElements.Count]));
          exit; end;
        Application.ProcessMessages; {��� ������}
          INFO.Caption:=format('�� %d ��������� ���������� %d',[list.ResElements.Count,i]);
          LogT.Lines.Add(format('�� %d ��������� ���������� %d',[list.ResElements.Count,i]));
          INFO.update;
        // ��������� �� ������������ ���� � ������������
          IF UseCheckBaseMinTR.Checked and not(UseBaseMaxS.Checked) then
            IF CheckMinTrInElement(i) then DoIt else LogT.Lines.Add(format('%d ������� �� ������ �� ���. ����',[i]));
        // ��������� �� ������������ �������
          IF (UseBaseMaxS.Checked)and not(UseCheckBaseMinTR.Checked) then
            IF CheckMaxS(i) then DoIt else LogT.Lines.Add(format('%d ������� �� ������ �� ���. �������',[i]));
        // ��� �����������
          IF UseCheckBaseMinTR.Checked and UseBaseMaxS.Checked then
            IF CheckMinTrInElement(i) or CheckMaxS(i) then DoIt else LogT.Lines.Add(format('%d ������� �� ������ �� ���. ����/�������',[i]));
        // ��� �����������
          IF not(UseCheckBaseMinTR.Checked) and not(UseBaseMaxS.Checked) then DoIt;
        ProgressBar.Position:=ProgressBar.Position+1;
        inc(i);
      Until (i>list.ResElements.Count) or (CanDoDivision>0);
      IF (i>list.ResElements.Count) then  Done:=False;
    Until not Done;
    ProgressBar.Position:=0;
    INFO.Visible:=False;
  end;
  Nodes.Lines.Add(format('���������� ������������� ���� %d',[num_elem_old]));
  Nodes.Lines.Add(format('����� ������������� ����� %d',[list.ResElements.Count]));
  Nodes.Lines.Add(' ��������� ������������� ��������� ...}');
end;

procedure TAlgForm.DoTDivision(ELEMENT:integer;NEARELEMENT:integer);
var
  i,m: integer;
  a: array [0..10] of integer;
  Function Unique(k:integer;Node:Integer): boolean;
  begin
    IF(List.ResElements.Elements[k].Node1<>Node) and
      (List.ResElements.Elements[k].Node2<>Node) and
      (List.ResElements.Elements[k].Node3<>Node) then Result:=True
    else Result:=False;
  end;
  function findNode(i2: integer;k1:integer;k2:integer):Integer; // ����� ��������� ���� � ��������, ��� �������� 2 ����, ��� ����� �� �� ����������
  begin
    if((List.ResElements.Elements[i2].Node1=k1) and (List.ResElements.Elements[i2].Node2=k2))
        or
      ((List.ResElements.Elements[i2].Node2=k1) and (List.ResElements.Elements[i2].Node1=k2))
        then Result:= list.ResElements.Elements[i2].Node3
    else if ((List.ResElements.Elements[i2].Node2=k1) and (List.ResElements.Elements[i2].Node3=k2))
              or
            ((List.ResElements.Elements[i2].Node3=k1) and (List.ResElements.Elements[i2].Node2=k2))
              then Result:= list.ResElements.Elements[i2].Node1
    else if ((List.ResElements.Elements[i2].Node1=k1) and (List.ResElements.Elements[i2].Node3=k2))
              or
            ((List.ResElements.Elements[i2].Node3=k1) and (List.ResElements.Elements[i2].Node1=k2))
              then Result:= list.ResElements.Elements[i2].Node2
    else Result:=-1;
  end;
  Procedure GetA;
  begin
    IF Unique(NEARELEMENT,List.ResElements.Elements[ELEMENT].Node1) then begin
      a[1]:=List.ResElements.Elements[ELEMENT].Node1;
      a[2]:=List.ResElements.Elements[ELEMENT].Node2;
      a[4]:=List.ResElements.Elements[ELEMENT].Node3;
      a[3]:=findNode(NEARELEMENT,a[2],a[4]);
    end
    ELSE IF Unique(NEARELEMENT,List.ResElements.Elements[ELEMENT].Node2) then begin
      a[1]:=List.ResElements.Elements[ELEMENT].Node2;
      a[2]:=List.ResElements.Elements[ELEMENT].Node3;
      a[4]:=List.ResElements.Elements[ELEMENT].Node1;
      a[3]:=findNode(NEARELEMENT,a[2],a[4]);
    end
    ELSE IF Unique(NEARELEMENT,List.ResElements.Elements[ELEMENT].Node3) then begin
      a[1]:=List.ResElements.Elements[ELEMENT].Node3;
      a[2]:=List.ResElements.Elements[ELEMENT].Node2;
      a[4]:=List.ResElements.Elements[ELEMENT].Node1;
      a[3]:=findNode(NEARELEMENT,a[2],a[4]);
    end;
  end;
begin
  Nodes.Lines.Add(Format('��������� �������� %d',[ELEMENT]));
  LogT.Lines.Add(Format('& ��������� �������� %d',[ELEMENT]));
  LogT.Lines.Add(format('& ������ �%d ������� ����� ���� � ��������� �� ������� ���������',[NEARELEMENT]));
  CalcRoundSForSegment(ELEMENT,NEARELEMENT,False);
// ������� ����� ����
    List.ResNodes.Count:=List.ResNodes.Count+1;
    SetLength(List.ResNodes.Nodes,List.ResNodes.Count+1);
    List.ResNodes.Nodes[List.ResNodes.Count].Number:=List.ResNodes.Count;
    List.ResNodes.Nodes[List.ResNodes.Count].X:=Rx;
    List.ResNodes.Nodes[List.ResNodes.Count].Y:=Ry;
    List.ResNodes.Nodes[List.ResNodes.Count].inf.Blocked:=False;
    List.ResNodes.Nodes[List.ResNodes.Count].inf.InOut:=False;
// ������� ��� ����� ��������
    List.ResElements.Count:=List.ResElements.Count+2;
    SetLength(List.ResElements.Elements,List.ResElements.Count+1);
// ����������� ��������� ����
    GetA;
    LogT.Lines.Add(Format('%d,%d,%d - %d,%d,%d',[
    Upload.Find(List.ResElements.Elements[ELEMENT].Node1),
    Upload.Find(List.ResElements.Elements[ELEMENT].Node2),
    Upload.Find(List.ResElements.Elements[ELEMENT].Node3),
    Upload.Find(List.ResElements.Elements[NEARELEMENT].Node1),
    Upload.Find(List.ResElements.Elements[NEARELEMENT].Node2),
    Upload.Find(List.ResElements.Elements[NEARELEMENT].Node3)]));
    LogT.Lines.Add(Format('& �������:%d,%d,%d,%d',[Upload.Find(a[1]),Upload.Find(a[2]),Upload.Find(a[3]),Upload.Find(a[4])]));
// ������
      List.ResElements.Elements[ELEMENT].Node1:=List.ResNodes.Nodes[List.ResNodes.Count].Number;
      List.ResElements.Elements[ELEMENT].Node2:=a[1];
      List.ResElements.Elements[ELEMENT].Node3:=a[2];
      m:=List.ResElements.Elements[ELEMENT].Material;
      List.ResElements.Elements[NEARELEMENT].Node1:=List.ResNodes.Nodes[List.ResNodes.Count].Number;
      List.ResElements.Elements[NEARELEMENT].Node2:=a[2];
      List.ResElements.Elements[NEARELEMENT].Node3:=a[3];
// �����
      List.ResElements.Elements[List.ResElements.Count-1].Number:=List.ResElements.Count-1;
      List.ResElements.Elements[List.ResElements.Count-1].Node1:=List.ResNodes.Nodes[List.ResNodes.Count].Number;
      List.ResElements.Elements[List.ResElements.Count-1].Node2:=a[3];
      List.ResElements.Elements[List.ResElements.Count-1].Node3:=a[4];
      List.ResElements.Elements[List.ResElements.Count-1].Material:=m;
      List.ResElements.Elements[List.ResElements.Count].Number:=List.ResElements.Count;
      List.ResElements.Elements[List.ResElements.Count].Node1:=List.ResNodes.Nodes[List.ResNodes.Count].Number;
      List.ResElements.Elements[List.ResElements.Count].Node2:=a[4];
      List.ResElements.Elements[List.ResElements.Count].Node3:=a[1];
      List.ResElements.Elements[List.ResElements.Count].Material:=m;
end;

// ���� �������� �������� �� True
Function TAlgForm.CheckDoTDivision(ELEMENT:integer): integer;
var
  i,r: integer;
  s1,s2: real;
  Found: boolean; // �� ��� ���� �� 1 ������� ������
  Inside: boolean; // �� ��� �������� ������ ������ �� �� ���� ��������
  function finde(i2: integer;None:integer;k1:Integer;k2:integer):Boolean; // ����� ��������� ���� � ��������, ��� �������� 2 ����, ��� ����� �� �� ����������
  begin
      if list.ResElements.Elements[i2].Node1=None then begin
          IF (list.ResElements.Elements[i2].Node2=k1) and (list.ResElements.Elements[i2].Node3<>k2) then begin Result:=True; Exit; end
          else IF (list.ResElements.Elements[i2].Node3=k1) and (list.ResElements.Elements[i2].Node2<>k2) then begin Result:=True; Exit; end;
      end
      else if list.ResElements.Elements[i2].Node2=None then begin
          IF (list.ResElements.Elements[i2].Node1=k1) and (list.ResElements.Elements[i2].Node3<>k2) then begin Result:=True; Exit; end
          else IF (list.ResElements.Elements[i2].Node3=k1) and (list.ResElements.Elements[i2].Node1<>k2) then begin Result:=True; Exit; end;
      end
      else if list.ResElements.Elements[i2].Node3=None then begin
          IF (list.ResElements.Elements[i2].Node1=k1) and (list.ResElements.Elements[i2].Node2<>k2) then begin Result:=True; Exit; end
          else IF (list.ResElements.Elements[i2].Node2=k1) and (list.ResElements.Elements[i2].Node1<>k2) then begin Result:=True; Exit; end;
      end
      else Result:=False;
  end;
  function find(i2,n1,n2,n3:integer):boolean;
  begin  // ��������� ���� ��������  � ��������� ����������
      IF finde(i2,n1,n2,n3) and (not(list.ResNodes.Nodes[Upload.Find(N1)].inf.InOut) and not(list.ResNodes.Nodes[Upload.Find(N2)].inf.InOut)) then Result:=True
      ELSE IF finde(i2,n1,n3,n2) and (not(list.ResNodes.Nodes[Upload.Find(N1)].inf.InOut) and not(list.ResNodes.Nodes[Upload.Find(N3)].inf.InOut))  then Result:=True
      ELSE IF finde(i2,n2,n1,n3) and (not(list.ResNodes.Nodes[Upload.Find(N2)].inf.InOut) and not(list.ResNodes.Nodes[Upload.Find(N1)].inf.InOut))  then Result:=True
      ELSE IF finde(i2,n2,n3,n1) and (not(list.ResNodes.Nodes[Upload.Find(N2)].inf.InOut) and not(list.ResNodes.Nodes[Upload.Find(N3)].inf.InOut))  then Result:=True
      ELSE IF finde(i2,n3,n1,n2) and (not(list.ResNodes.Nodes[Upload.Find(N3)].inf.InOut) and not(list.ResNodes.Nodes[Upload.Find(N1)].inf.InOut))  then Result:=True
      ELSE IF finde(i2,n3,n2,n1) and (not(list.ResNodes.Nodes[Upload.Find(N3)].inf.InOut) and not(list.ResNodes.Nodes[Upload.Find(N2)].inf.InOut))  then Result:=True
      ElSE Result:=False;
  end;
begin
  Found:=False; Inside:=False; s1:=0; s2:=0;
  LogT.Lines.Add(format('& ��������� ������� �%d ��� ���������',[ELEMENT]));
// ����� ������� ��������
  i:=0;
  Repeat
//  For i:=1 to List.ResElements.Count do begin
// ��������� ���������� �� ����� Round � �����-���� � ������� ����� ����� ��������
    IF (i<>ELEMENT) then begin
      IF find(i,List.ResElements.Elements[Element].Node1,List.ResElements.Elements[Element].Node2,List.ResElements.Elements[Element].Node3) then begin
         LogT.Lines.Add(format('&& ��� �������� %d ������� ������� %D ',[ELEMENT,i]));
         Found:=True;
         s1:=CalcSForSegment(i);
         s2:=CalcRoundSForSegment(ELEMENT,i,True);
         IF ABS(s1-s2)<=1 then begin Inside:=True; r:=i;
            LogT.Lines.Add(format('&& Round: S=%f| : Element S=%f',[S2,S1]));
            LogT.Lines.Add('&&& ���������� ������ ��������:'+IntToStr(i));
         end;
      end;
    end;
  Inc(i);
//  LogT.Lines.Add(format('i=%d',[i]));
  Until ((i>=List.ResElements.Count){ or not(Inside)});
  IF Found then begin
    IF Inside then begin
      IF BaseCheckTRInNewElements.Checked then begin
        CalcRoundSForSegment(ELEMENT,ELEMENT,False);
        Found:=CheckMinTrInNewElement(ELEMENT,r,Rx,Ry,StrToInt(BaseMinTrInNewElement.Text));
        LogTR.Lines.Add(Format('&& ������� �%d � ������� ��� %d =%s',[ELEMENT,r,BoolToStr(FOund,True)]));
        IF Found then Result:=r
        else begin
          Result:=0;
          LogT.LineS.add('&&& �� �������� �� ���.���� � ����������� ��������')
        end;
      end
      else Result:=r;
    end
    Else begin
        Result:=0;
        LogT.LineS.add('&&& �� ������� ����� ���������� � ������� �������')
    end;
  end
  ELSE begin
    Result:=0;
    LogT.LineS.add('&& �� ������� ������� ���������');
  end;
end;

Function TAlgForm.CheckENeedDivision(ELEMENT:integer):boolean;
Var
  GravityS, RoundS: real;
begin
  if (List.ResNodes.Count>0) and (List.ResElements.Count>0) then begin
    INFO2.Visible:=True;
    INFO2.Caption:=format('& �������� �� ��������� ��� �������� %d',[ELEMENT]);
    LogT.Lines.Add(format('& �������� �� ��������� ��� �������� %d',[ELEMENT]));
    INFO2.Update;
// ����� ������� �����������
    GravityS:=CalcSForSegment(ELEMENT);
// ����� ����� ��������� ����������
    RoundS:=CalcRoundSForSegment(ELEMENT,ELEMENT,False);
// ��������� ����� �� �� � ������������
    IF Abs(RoundS-GravityS)>1 then begin
      LogT.Lines.Add(format('&& Element �%d',[ELEMENT]));
      LogT.Lines.Add(format('&& Round: S=%f| Gravity: S=%f - ��� ������������',[RoundS,GravityS]));
      Result:=False  //�� �����
    end
    else begin
      LogT.Lines.Add(format('&& Round: S=%f| Gravity: S=%f - ������ ������������',[RoundS,GravityS]));
      Result:=True; // �����
    end;
    INFO2.Visible:=False;
  end;
end;

//        '��������� ���������'
procedure TAlgForm.SDivision(TypeOfPos:Integer);
Var
  i, num_seg_old: integer;
  Done,Changed: Boolean;
begin
  Nodes.Lines.Add('{ ��������� ���������');
  Nodes.Update;
  LogSS.Lines.Clear;
  LogSS.Lines.Add('$$$$$$$ ��������� ��������� $$$$$$$');
  LogSS.Update;
  INFO.Visible:=True;
  ProgressBar.Position:=0;
  ProgressBar.Min:=0;
  ProgressBar.Max:=list.ResElements.Count;
  num_seg_old:=list.ResElements.Count;
  Done:=True;
// ���������� ��������� ���-�� ���� ������������ ������ ��� �������������
    Repeat
//      Nodes.Lines.Add(' ����� ����������� ��������...');
      LogSS.Lines.Add('$$$ ����� ����������� �������� $$$');
      i:=1;
      ProgressBar.Position:=0;
      ProgressBar.Max:=list.ResElements.Count;
      repeat
        IF not State then begin
          Nodes.Lines.Add('<- ���������� ��������->');
          Nodes.Lines.Add(format('���������� ��������� ���� %d',[num_seg_old]));
          Nodes.Lines.Add(format('����� ��������� ����� %d',[list.ResElements.Count]));
          exit; end;
        Application.ProcessMessages; {��� ������}
          INFO.Caption:=format('�� %d ��������� ���������� %d',[list.ResElements.Count,i]);
          LogSS.Lines.Add(format('�� %d ��������� ���������� %d',[list.ResElements.Count,i]));
          INFO.update;
        // ���������
            IF CheckForRSegment(i) then begin
              Changed:=True;
              // ������������� ����
              PositionNodes(0,TypeOfPos);
            end  
            Else Changed:=False;
        ProgressBar.Position:=ProgressBar.Position+1;
        inc(i);
      Until (i>list.ResElements.Count) or Changed;
      IF (i>list.ResElements.Count) then Done:=False;
    Until not Done;
  ProgressBar.Position:=0;
  INFO.Visible:=False;
  Nodes.Lines.Add(format('���������� ��������� ���� %d',[num_seg_old]));
  Nodes.Lines.Add(format('����� ��������� ����� %d',[list.ResElements.Count]));
  Nodes.Lines.Add(' ��������� ��������� ��������� ...}');
end;

Function TAlgForm.CheckForRSegment(ELEMENT : Integer): boolean;
var
  Node1,Node2,Node3,NodeR: integer; // ���� �������� � ���� �������� ��������
  Found: boolean; // ���� ����� ���� ���� ���� ���������� �
  CenterX, CenterY: Real;
  ELEM, POS: INTEGER;
  function Dimension(x1,y1,x2,y2:real): real; // ���������� ����� ����� �������
    begin Result:=sqrt((x2-x1)*(x2-x1)+(y2-y1)*(y2-y1)); end;
  function findNextNode(n1:Integer;n2:integer;k:integer):integer; // ����� ���� � ������� ��������, ��� �������� 2 ����, � ��� ����� ������� �� ����������
  var
    i2: integer;
  begin
    for i2:=1 to list.ResElements.Count do begin
      if list.ResElements.Elements[i2].Node1=n1 then begin
          IF (list.ResElements.Elements[i2].Node2=n2) and (list.ResElements.Elements[i2].Node3<>k) then begin Result:=list.ResElements.Elements[i2].Node3; ELEM:=i2; POS:=3; Exit; end
          else IF (list.ResElements.Elements[i2].Node3=n2) and (list.ResElements.Elements[i2].Node2<>k) then begin Result:=list.ResElements.Elements[i2].Node2; ELEM:=i2; POS:=2; Exit; end;
      end
      else if list.ResElements.Elements[i2].Node2=n1 then begin
          IF (list.ResElements.Elements[i2].Node1=n2) and (list.ResElements.Elements[i2].Node3<>k) then begin Result:=list.ResElements.Elements[i2].Node3; ELEM:=i2; POS:=3; Exit; end
          else IF (list.ResElements.Elements[i2].Node3=n2) and (list.ResElements.Elements[i2].Node1<>k) then begin Result:=list.ResElements.Elements[i2].Node1; ELEM:=i2; POS:=1; Exit; end;
      end
      else if list.ResElements.Elements[i2].Node3=n1 then begin
          IF (list.ResElements.Elements[i2].Node1=n2) and (list.ResElements.Elements[i2].Node2<>k) then begin Result:=list.ResElements.Elements[i2].Node2; ELEM:=i2; POS:=2; Exit; end
          else IF (list.ResElements.Elements[i2].Node2=n2) and (list.ResElements.Elements[i2].Node1<>k) then begin Result:=list.ResElements.Elements[i2].Node1; ELEM:=i2; POS:=1; Exit; end;
      end
      else Result:=-1;
    end;
  end;
  function CheckNeedChange(n1:integer;n2:integer;n3:integer;r:integer): boolean;
  Const
    pi=3.1415926535897932384626433832795;
  Var
    P1x,P1y,P2x,P2y: real; // ���������� ������������ ���������
    D1x,D1y,D2x,D2y: real; // ���������� ������� ���������
    P,D, MinS: real;    // ����� ����������
    tr1,tr2,tr3,tr4,tr5,tr6:real;    // ������������ ����
    Flag,r1,r2: boolean;          // ���� (���� ��� ���� ������ �������, �� True, ���� ���� �� 1 ������, �� False)
  begin
      P1x:=list.ResNodes.Nodes[Upload.Find(N3)].X;
      P1y:=list.ResNodes.Nodes[Upload.Find(N3)].Y;
      P2x:=list.ResNodes.Nodes[Upload.Find(R)].X;
      P2y:=list.ResNodes.Nodes[Upload.Find(R)].Y;
      D1x:=list.ResNodes.Nodes[Upload.Find(N1)].X;
      D1y:=list.ResNodes.Nodes[Upload.Find(N1)].Y;
      D2x:=list.ResNodes.Nodes[Upload.Find(N2)].X;
      D2y:=list.ResNodes.Nodes[Upload.Find(N2)].Y;
      D:=Dimension(D1x,D1y,D2x,D2y);
      CenterX:=(D1x+D2x)/2;
      CenterY:=(D1y+D2y)/2;
      P:=Dimension(P2x,P2y,CenterX,CenterY);
// ���� P<D, �� ���� �����:)
      IF (((D/2)-P)>0.0001) then begin
      LogSS.Lines.Add(format('$$ ������:���������� = %f:%f',[(D/2),P]));
// ���� ����� ����������� �� ����, �� ���������
        IF BaseCheckTRInNewSElements.Checked and not(BaseCheckMinSInNewSElements.Checked) then begin
          IF CheckMinTrInNewElement(ELEMENT,ELEM,CenterX,CenterY,StrToInt(BaseMinTrInNewSElement.Text)) then begin
            MinS:=1;//CalculateMinimumS;
            IF (CalcSForSegmentInCoord(CenterX,CenterY,P2x,P2y,D1x,D1y)>MinS)  // �� �������
              and (CalcSForSegmentInCoord(CenterX,CenterY,D1x,D1y,P1x,P1y)>MinS) //����� ���������
              and (CalcSForSegmentInCoord(CenterX,CenterY,P1x,P1y,D2x,D2y)>MinS)
              and (CalcSForSegmentInCoord(CenterX,CenterY,D2x,D2y,P2x,P2y)>MinS) then Result:=True
            else Result:=False;
          end
          else Result:=False; end
// ���� ����� ����������� �� �������, �� ���������
        ELSE IF BaseCheckMinSInNewSElements.Checked and not(BaseCheckTRInNewSElements.Checked) then begin
          IF (CalcSForSegmentInCoord(CenterX,CenterY,P2x,P2y,D1x,D1y)>StrToInt(BaseMinSInNewSElement.Text))  // �� �������
            and (CalcSForSegmentInCoord(CenterX,CenterY,D1x,D1y,P1x,P1y)>StrToInt(BaseMinSInNewSElement.Text)) //����� ���������
            and (CalcSForSegmentInCoord(CenterX,CenterY,P1x,P1y,D2x,D2y)>StrToInt(BaseMinSInNewSElement.Text))
            and (CalcSForSegmentInCoord(CenterX,CenterY,D2x,D2y,P2x,P2y)>StrToInt(BaseMinSInNewSElement.Text)) then Result:=True;
        end
// ���� �������� ��� �����������
        ELSE IF BaseCheckMinSInNewSElements.Checked and BaseCheckTRInNewSElements.Checked then begin
          IF CheckMinTrInNewElement(ELEMENT,ELEM,CenterX,CenterY,StrToInt(BaseMinTrInNewSElement.Text)) then begin
            IF (CalcSForSegmentInCoord(CenterX,CenterY,P2x,P2y,D1x,D1y)>StrToInt(BaseMinSInNewSElement.Text))  // �� �������
              and (CalcSForSegmentInCoord(CenterX,CenterY,D1x,D1y,P1x,P1y)>StrToInt(BaseMinSInNewSElement.Text)) //����� ���������
              and (CalcSForSegmentInCoord(CenterX,CenterY,P1x,P1y,D2x,D2y)>StrToInt(BaseMinSInNewSElement.Text))
              and (CalcSForSegmentInCoord(CenterX,CenterY,D2x,D2y,P2x,P2y)>StrToInt(BaseMinSInNewSElement.Text)) then Result:=True
            else Result:=False;
         end
          else Result:=False;
        end
// ���� �� �������� ��� �����������
        Else begin
         MinS:=1;//CalculateMinimumS;
          IF (CalcSForSegmentInCoord(CenterX,CenterY,P2x,P2y,D1x,D1y)>MinS)  // �� �������
            and (CalcSForSegmentInCoord(CenterX,CenterY,D1x,D1y,P1x,P1y)>MinS) //����� ���������
            and (CalcSForSegmentInCoord(CenterX,CenterY,P1x,P1y,D2x,D2y)>MinS)
            and (CalcSForSegmentInCoord(CenterX,CenterY,D2x,D2y,P2x,P2y)>MinS) then Result:=True
          else Result:=False;
        end;
      end
      else begin
//        LogSS.Lines.Add(format('$$ ������ ������ ���������� = %f:%f',[(D/2),P]));
        Result:=False;
      end;
  end;
  Function ChangeIFNeeded(n1:integer;n2:integer;n3:integer): boolean;
  Var
    NodeR,m1,m2: Integer;
  begin
    NodeR:=findNextNode(N1,N2,N3);
//   IF (list.ResNodes.Nodes[Upload.Find(N1)].inf.InOut and not(list.ResNodes.Nodes[Upload.Find(N2)].inf.InOut)) or
//       (not(list.ResNodes.Nodes[Upload.Find(N1)].inf.InOut) and list.ResNodes.Nodes[Upload.Find(N2)].inf.InOut) then begin}
   IF (list.ResNodes.Nodes[Upload.Find(N1)].inf.InOut or list.ResNodes.Nodes[Upload.Find(N2)].inf.InOut)
      and not(list.ResNodes.Nodes[Upload.Find(N1)].inf.InOut and list.ResNodes.Nodes[Upload.Find(N2)].inf.InOut
            and list.ResNodes.Nodes[Upload.Find(N3)].inf.InOut) then begin
    IF NodeR>0 then begin
     LogSS.Lines.Add(Format('$ %d-������� ������� ��� %d �� ������� %d-%d',
        [ELEM,ELEMENT,Upload.find(N1),Upload.find(N2)]));
      IF CheckNeedChange(n1,n2,n3, NodeR) then begin
        LogSS.Lines.Add(format('$$ (%f:%f) ����� �������� %d:%d',[CenterX, CenterY,Upload.Find(N1),Upload.Find(N2)]));
        LogSS.Lines.Add(format('$$ ���� %d ���������� � ������� �� %d:%d',[Upload.Find(NodeR),Upload.Find(N1),Upload.Find(N2)]));
        Nodes.Lines.Add(format('��������� �������� %d:%d',[Upload.Find(N1),Upload.Find(N2)]));
// ������� ����� ����
        List.ResNodes.Count:=List.ResNodes.Count+1;
        SetLength(List.ResNodes.Nodes,List.ResNodes.Count+1);
        List.ResNodes.Nodes[List.ResNodes.Count].Number:=List.ResNodes.Count;
        List.ResNodes.Nodes[List.ResNodes.Count].X:=Centerx;
        List.ResNodes.Nodes[List.ResNodes.Count].Y:=Centery;
        List.ResNodes.Nodes[List.ResNodes.Count].inf.Blocked:=False;
{ � ����������� �� ����� �������� ���������� ������� ����� ���� ��� ����������}
        IF ((list.ResNodes.Nodes[Upload.Find(N1)].inf.InOut and list.ResNodes.Nodes[Upload.Find(N2)].inf.InOut) and
        ((not(list.ResNodes.Nodes[Upload.Find(N3)].inf.InOut) and not(list.ResNodes.Nodes[Upload.Find(NodeR)].inf.InOut))
          or (List.ResElements.Elements[ELEMENT].Material <> List.ResElements.Elements[ELEM].Material))) then
          begin  {Nodes.Lines.Add(format('N1+N2=�����, � N3 � NodeR ���. ���������:%d-%d',[List.ResElements.Elements[ELEMENT].Material,List.ResElements.Elements[ELEM].Material]));}
          List.ResNodes.Nodes[List.ResNodes.Count].inf.InOut:=True;
          end
        else List.ResNodes.Nodes[List.ResNodes.Count].inf.InOut:=False;
// ������� ��� ����� ��������
        List.ResElements.Count:=List.ResElements.Count+2;
        SetLength(List.ResElements.Elements,List.ResElements.Count+1);
        m1:=List.ResElements.Elements[ELEMENT].Material;
        m2:=List.ResElements.Elements[ELEM].Material;
// ������
        List.ResElements.Elements[ELEMENT].Node1:=List.ResNodes.Nodes[List.ResNodes.Count].Number;
        List.ResElements.Elements[ELEMENT].Node2:=NodeR;
        List.ResElements.Elements[ELEMENT].Node3:=N1;
        List.ResElements.Elements[ELEMENT].Material:=m2;
        List.ResElements.Elements[ELEM].Node1:=List.ResNodes.Nodes[List.ResNodes.Count].Number;
        List.ResElements.Elements[ELEM].Node2:=N1;
        List.ResElements.Elements[ELEM].Node3:=N3;
        List.ResElements.Elements[ELEM].Material:=m1;
// �����
        List.ResElements.Elements[List.ResElements.Count-1].Number:=List.ResElements.Count-1;
        List.ResElements.Elements[List.ResElements.Count-1].Node1:=List.ResNodes.Nodes[List.ResNodes.Count].Number;
        List.ResElements.Elements[List.ResElements.Count-1].Node2:=N3;
        List.ResElements.Elements[List.ResElements.Count-1].Node3:=N2;
        List.ResElements.Elements[List.ResElements.Count-1].Material:=m1;
        List.ResElements.Elements[List.ResElements.Count].Number:=List.ResElements.Count;
        List.ResElements.Elements[List.ResElements.Count].Node1:=List.ResNodes.Nodes[List.ResNodes.Count].Number;
        List.ResElements.Elements[List.ResElements.Count].Node2:=N2;
        List.ResElements.Elements[List.ResElements.Count].Node3:=NodeR;
        List.ResElements.Elements[List.ResElements.Count].Material:=m2;
        Result:=True;
      END
      else begin
        LogSS.Lines.Add('$$ �� �������� �� ����������� ���� ������������');
        Result:=False;
      end;
    end
    else LogSS.Lines.Add('$$ ��� �������� ����');
  end;
  end;
begin
// Node1-Node2
    Node1:=list.ResElements.Elements[ELEMENT].Node1;
    Node2:=list.ResElements.Elements[ELEMENT].Node2;
    Node3:=list.ResElements.Elements[ELEMENT].Node3;
    Found:=ChangeIFNeeded(Node1,Node2,Node3);
// Node2-Node3
// 1<2,2<3,3<1
    IF not Found then begin
      Node1:=list.ResElements.Elements[ELEMENT].Node1;
      Node2:=list.ResElements.Elements[ELEMENT].Node2;
      Node3:=list.ResElements.Elements[ELEMENT].Node3;
      Found:=ChangeIFNeeded(Node2,Node3,Node1);
// Node3-Node1
// 1<1,2<3,3<2
      IF not Found then begin
        Node1:=list.ResElements.Elements[ELEMENT].Node1;
        Node2:=list.ResElements.Elements[ELEMENT].Node2;
        Node3:=list.ResElements.Elements[ELEMENT].Node3;
        Found:=ChangeIFNeeded(Node1,Node3,Node2);
        IF Found then Result:=True
        else begin Result:=False; // �� ���� ���� �� �������� � ������ �� ������ ��������
          LogSS.Lines.Add('$$ �� ���� ���� �� �������� � ������ �� ������ ��������');
        end;
      end
      else Result:=True;
    end
    else Result:=True;
end;


//        '��������� ������� '
procedure TAlgForm.SDivision2(TypeOfPos:Integer);
Var
  i, num_seg_old: integer;
  Done,Changed: Boolean;
begin
  LogSE.Lines.Clear;
  Nodes.Lines.Add('{ ��������� �������');
  LogSE.Lines.Add('----- ��������� ������� -----');
  INFO.Visible:=True;
  ProgressBar.Position:=0;
  ProgressBar.Min:=0;
  ProgressBar.Max:=list.ResElements.Count;
  num_seg_old:=list.ResElements.Count;
  Done:=True;
// ���������� ��������� ���-�� ���� ������������ ������ ��� �������������
    Repeat
//      Nodes.Lines.Add(' ����� ����������� ��������...');
      LogSE.Lines.Add('--- ����� ����������� �������... --');
      i:=1;
      ProgressBar.Position:=0;
      ProgressBar.Max:=list.ResElements.Count;
      repeat
        IF not State then begin
          Nodes.Lines.Add('<- ���������� ��������->');
          Nodes.Lines.Add(format('���������� ��������� ���� %d',[num_seg_old]));
          Nodes.Lines.Add(format('����� ��������� ����� %d',[list.ResElements.Count]));
          exit; end;
        Application.ProcessMessages; {��� ������}
          INFO.Caption:=format('�� %d ��������� ���������� %d',[list.ResElements.Count,i]);
          LogSE.Lines.Add(format('�� %d ��������� ���������� %d',[list.ResElements.Count,i]));
          INFO.update;
        // ���������
            IF CheckForRSegment2(i) then begin
              Changed:=True;
              // ������������� ����
              PositionNodes(0,TypeOfPos);
            end  
            Else Changed:=False;
        ProgressBar.Position:=ProgressBar.Position+1;
        inc(i);
      Until (i>list.ResElements.Count) or Changed;
      IF (i>list.ResElements.Count) then Done:=False;
    Until not Done;
  ProgressBar.Position:=0;
  INFO.Visible:=False;
  Nodes.Lines.Add(format('���������� ��������� ���� %d',[num_seg_old]));
  Nodes.Lines.Add(format('����� ��������� ����� %d',[list.ResElements.Count]));
  Nodes.Lines.Add(' ��������� ������� ��������� ...}');
end;

Function TAlgForm.CheckForRSegment2(ELEMENT : Integer): boolean;
var
  Node1,Node2,Node3,NodeR: integer; // ���� �������� � ���� �������� ��������
  f1,f2,f3: integer;
  a: array [0..4] of integer;
  Found: boolean; // ���� ����� ���� ���� ���� ���������� �
  CenterX, CenterY: Real;
  ELEM, POS: INTEGER;
  function Dimension(x1,y1,x2,y2:real): real; // ���������� ����� ����� �������
    begin Result:=sqrt((x2-x1)*(x2-x1)+(y2-y1)*(y2-y1)); end;
  function findNextNode(n1:Integer;n2:integer;k:integer):integer; // ����� ���� � ������� ��������, ��� �������� 2 ����, � ��� ����� ������� �� ����������
  var
    i2: integer;
  begin
    for i2:=1 to list.ResElements.Count do begin
      if list.ResElements.Elements[i2].Node1=n1 then begin
          IF (list.ResElements.Elements[i2].Node2=n2) and (list.ResElements.Elements[i2].Node3<>k) then begin Result:=list.ResElements.Elements[i2].Node3; ELEM:=i2; POS:=3; Exit; end
          else IF (list.ResElements.Elements[i2].Node3=n2) and (list.ResElements.Elements[i2].Node2<>k) then begin Result:=list.ResElements.Elements[i2].Node2; ELEM:=i2; POS:=2; Exit; end;
      end
      else if list.ResElements.Elements[i2].Node2=n1 then begin
          IF (list.ResElements.Elements[i2].Node1=n2) and (list.ResElements.Elements[i2].Node3<>k) then begin Result:=list.ResElements.Elements[i2].Node3; ELEM:=i2; POS:=3; Exit; end
          else IF (list.ResElements.Elements[i2].Node3=n2) and (list.ResElements.Elements[i2].Node1<>k) then begin Result:=list.ResElements.Elements[i2].Node1; ELEM:=i2; POS:=1; Exit; end;
      end
      else if list.ResElements.Elements[i2].Node3=n1 then begin
          IF (list.ResElements.Elements[i2].Node1=n2) and (list.ResElements.Elements[i2].Node2<>k) then begin Result:=list.ResElements.Elements[i2].Node2; ELEM:=i2; POS:=2; Exit; end
          else IF (list.ResElements.Elements[i2].Node2=n2) and (list.ResElements.Elements[i2].Node1<>k) then begin Result:=list.ResElements.Elements[i2].Node1; ELEM:=i2; POS:=1; Exit; end;
      end
      else Result:=-1;
    end;
  end;
  function CheckNeedChange(nn1:integer;nn2:integer;nn3:integer): boolean;
  Const
    pi=3.1415926535897932384626433832795;
  Var
    P1x,P1y,P2x,P2y: real; // ���������� ������������ ���������
    D1x,D1y,D2x,D2y: real; // ���������� ������� ���������
    P,D, MinS,Treg: real;    // ����� ����������
    tr1,tr2,tr3,tr4,tr5,tr6:real;    // ������������ ����
    Flag,r1,r2: boolean;          // ���� (���� ��� ���� ������ �������, �� True, ���� ���� �� 1 ������, �� False)
// �������� ������������ ����
    Function CheckMinInElem(x1,y1,x2,y2,x3,y3:real):  boolean;
    Const
      pi=3.1415926535897932384626433832795;
    var
      tr1,tr2,tr3:real;
    begin
      LogSE.Lines.Add(Format('----- �����:(%f,%f)-(%f,%f)-(%f,%f)',[x1,y1,x2,y2,x3,y3]));
      tr1:=ABS(ArcTan2((x2-x1)*(y3-y1)-(x3-x1)*(y2-y1),(x2-x1)*(x3-x1)+(y2-y1)*(y3-y1))*(180/pi));
      tr2:=ABS(ArcTan2((x1-x2)*(y3-y2)-(x3-x2)*(y1-y2),(x1-x2)*(x3-x2)+(y1-y2)*(y3-y2))*(180/pi));
      tr3:=ABS(180-(tr1+tr2));
      LogSE.Lines.Add(Format('----- ����:%f,%f,%f <> %f',[tr1,tr2,tr3,Treg]));
      IF tr1<Treg then Result:=False
        ELSE IF tr2<Treg then Result:=False
        ELSE IF tr3<Treg then Result:=False
      Else Result:=True;
    end;
  begin
      Treg:=StrToInt(BaseMinTrInNewSElement.Text);
      P1x:=list.ResNodes.Nodes[Upload.Find(nn3)].X;
      P1y:=list.ResNodes.Nodes[Upload.Find(nn3)].Y;
      D1x:=list.ResNodes.Nodes[Upload.Find(nn1)].X;
      D1y:=list.ResNodes.Nodes[Upload.Find(nn1)].Y;
      D2x:=list.ResNodes.Nodes[Upload.Find(nn2)].X;
      D2y:=list.ResNodes.Nodes[Upload.Find(nn2)].Y;
      D:=Dimension(D1x,D1y,D2x,D2y);
      CenterX:=(D1x+D2x)/2;
      CenterY:=(D1y+D2y)/2;
      P:=Dimension(P1x,P1y,CenterX,CenterY);
// ���� P<D, �� ���� �����:)
      IF (((D/2)-P)>0.0001) then begin
      LogSE.Lines.Add(format('----- ������:���������� = %f:%f',[(D/2),P]));      
// ���� ����� ����������� �� ����, �� ���������
        IF BaseCheckTRInNewSElements.Checked and not(BaseCheckMinSInNewSElements.Checked) then begin
          IF CheckMinInElem(d1x,d1y,p1x,p1y,CenterX,CenterY)
              and CheckMinInElem(p1x,p1y,d2x,d2y,CenterX,CenterY)then begin
            MinS:=1;//CalculateMinimumS;
            IF (CalcSForSegmentInCoord(d1x,d1y,p1x,p1y,CenterX,CenterY)>MinS)  // �� �������
              and (CalcSForSegmentInCoord(p1x,p1y,d2x,d2y,CenterX,CenterY)>MinS) then Result:=True
            else Result:=False;
          end
          else Result:=False; end
// ���� ����� ����������� �� �������, �� ���������
        ELSE IF BaseCheckMinSInNewSElements.Checked and not(BaseCheckTRInNewSElements.Checked) then begin
            IF (CalcSForSegmentInCoord(d1x,d1y,p1x,p1y,CenterX,CenterY)>MinS)  // �� �������
              and (CalcSForSegmentInCoord(p1x,p1y,d2x,d2y,CenterX,CenterY)>MinS) then Result:=True
          else Result:=False;
        end
// ���� �������� ��� �����������
        ELSE IF BaseCheckMinSInNewSElements.Checked and BaseCheckTRInNewSElements.Checked then begin
          IF CheckMinInElem(d1x,d1y,p1x,p1y,CenterX,CenterY)
              and CheckMinInElem(p1x,p1y,d2x,d2y,CenterX,CenterY)then begin
            IF (CalcSForSegmentInCoord(d1x,d1y,p1x,p1y,CenterX,CenterY)>MinS)  // �� �������
              and (CalcSForSegmentInCoord(p1x,p1y,d2x,d2y,CenterX,CenterY)>MinS) then Result:=True
            else Result:=False;
         end
          else Result:=False;
        end
// ���� �� �������� ��� �����������
        Else begin
         MinS:=1;//CalculateMinimumS;
            IF (CalcSForSegmentInCoord(d1x,d1y,p1x,p1y,CenterX,CenterY)>MinS)  // �� �������
              and (CalcSForSegmentInCoord(p1x,p1y,d2x,d2y,CenterX,CenterY)>MinS) then Result:=True
          else Result:=False;
        end;
      end
      else begin
        LogSE.Lines.Add(format('-- ������ ������ ���������� = %f:%f',[(D/2),P]));
        Result:=False;
      end;
  end;
  Function ChangeIFNeeded(n1:integer;n2:integer;n3:integer): boolean;
  Var
    NodeR: Integer;
  begin
    f1:=0; f2:=0; f3:=0;
    IF list.ResNodes.Nodes[Upload.Find(N1)].inf.InOut then inc(f1);
    IF list.ResNodes.Nodes[Upload.Find(N2)].inf.InOut then inc(f2);
    IF list.ResNodes.Nodes[Upload.Find(N3)].inf.InOut then inc(f3);
    IF (f1+f2+f3)=2 then begin
      LogSE.Lines.Add(Format('-- � �������� %d ��� ���� �� (%d;%d;%d) ����� �� ������e',
          [ELEMENT,Upload.find(N1),Upload.find(N2),Upload.find(N3)]));
      NodeR:=findNextNode(N1,N2,N3);
      IF NodeR<0 then begin
        IF f1 = 0 then begin LogSE.Lines.Add(Format('---- � �������� %d ������� ������������: %d-%d',
          [ELEMENT,Upload.find(N2),Upload.find(N3)]));
          a[1]:=N2; a[2]:=N3; a[3]:=N1;
        END
        ELSE IF f2 = 0 then begin LogSE.Lines.Add(Format('---- � �������� %d ������� ������������: %d-%d',
          [ELEMENT,Upload.find(N1),Upload.find(N3)]));
          a[1]:=N1; a[2]:=N3; a[3]:=N2;
        END
        ELSE begin LogSE.Lines.Add(Format('---- � �������� %d ������� ������������: %d-%d',
          [ELEMENT,Upload.find(N1),Upload.find(N2)]));
          a[1]:=N1; a[2]:=N2; a[3]:=N3;
        END;
        LogSE.Lines.Add(Format('--- ��������� ������� %d-%d �������� %d',[Upload.find(a[1]),Upload.find(a[2]),ELEMENT]));
        IF CheckNeedChange(a[1],a[2],a[3]) then begin
          LogSE.Lines.Add(format('---- (%f:%f) ����� �������� %d:%d',[CenterX, CenterY,Upload.Find(a[1]),Upload.Find(a[2])]));
          LogSE.Lines.Add(format('---- ���� %d ���������� � ������� �� %d:%d',[Upload.Find(a[3]),Upload.Find(a[1]),Upload.Find(a[2])]));
          Nodes.Lines.Add(format('��������� �������� %d:%d',[Upload.Find(a[1]),Upload.Find(a[2])]));
// ������� ����� ����
          List.ResNodes.Count:=List.ResNodes.Count+1;
          SetLength(List.ResNodes.Nodes,List.ResNodes.Count+1);
          List.ResNodes.Nodes[List.ResNodes.Count].Number:=List.ResNodes.Count;
          List.ResNodes.Nodes[List.ResNodes.Count].X:=Centerx;
          List.ResNodes.Nodes[List.ResNodes.Count].Y:=Centery;
          List.ResNodes.Nodes[List.ResNodes.Count].inf.Blocked:=True;
          List.ResNodes.Nodes[List.ResNodes.Count].inf.InOut:=True;
// ������� ����� �������
          List.ResElements.Count:=List.ResElements.Count+1;
          SetLength(List.ResElements.Elements,List.ResElements.Count+1);
// ������
          List.ResElements.Elements[ELEMENT].Node1:=a[1];
          List.ResElements.Elements[ELEMENT].Node2:=List.ResNodes.Count;
          List.ResElements.Elements[ELEMENT].Node3:=a[3];
// �����
          List.ResElements.Elements[List.ResElements.Count].Number:=List.ResElements.Count;
          List.ResElements.Elements[List.ResElements.Count].Node1:=List.ResNodes.Nodes[List.ResNodes.Count].Number;
          List.ResElements.Elements[List.ResElements.Count].Node2:=a[3];
          List.ResElements.Elements[List.ResElements.Count].Node3:=a[2];
          List.ResElements.Elements[List.ResElements.Count].Material:=List.ResElements.Elements[ELEMENT].Material;
          Result:=True;
        END
        else begin Result:=False;
          LogSE.Lines.Add('- �� ������������� ������������');
        end;
      end
      else begin Result:=False;
        LogSE.Lines.Add(Format('--- %d-������� ������� ��� %d �� ������� %d-%d',
           [ELEM,ELEMENT,Upload.find(N1),Upload.find(N2)]));
      end;
    end
    else Result:=False;
  end;{����� ChangeIFNeeded}
begin
// Node1-Node2
    Node1:=list.ResElements.Elements[ELEMENT].Node1;
    Node2:=list.ResElements.Elements[ELEMENT].Node2;
    Node3:=list.ResElements.Elements[ELEMENT].Node3;
    Found:=ChangeIFNeeded(Node1,Node2,Node3);
// Node2-Node3
// 1<2,2<3,3<1
   IF not Found then begin
      Node1:=list.ResElements.Elements[ELEMENT].Node1;
      Node2:=list.ResElements.Elements[ELEMENT].Node2;
      Node3:=list.ResElements.Elements[ELEMENT].Node3;
      Found:=ChangeIFNeeded(Node2,Node3,Node1);
// Node3-Node1
// 1<1,2<3,3<2
      IF not Found then begin
        Node1:=list.ResElements.Elements[ELEMENT].Node1;
        Node2:=list.ResElements.Elements[ELEMENT].Node2;
        Node3:=list.ResElements.Elements[ELEMENT].Node3;
        Found:=ChangeIFNeeded(Node1,Node3,Node2);
        IF Found then Result:=True
          else begin Result:=False; // �� ���� ���� �� �������� � ������ �� ������ ��������
          LogSE.Lines.Add('-- �� ���� ���� �� �������� � ������ �� ������ ��������');
        end;
      end
      else Result:=True; 
    end
    else Result:=True;
end;

//        '������������� �����'
procedure TAlgForm.Regularization;
begin
  Nodes.Lines.Add('������������� �����');
end;
//        '����������� �����'
procedure TAlgForm.BlockedNodesToForm;
begin
  Nodes.Lines.Add('����������� �����');
end;
//        '�������������� �����'
procedure TAlgForm.BlockedNodesDefault;
begin
  Nodes.Lines.Add('�������������� �����');
end;
{procedure TAlgForm.;
begin
end;
}

procedure TAlgForm.BtnBlockedNodesClick(Sender: TObject);
var
  i: integer;
begin
  NodeA.Lines.Add('������������� ����');
  IF List.ResNodes.CountOfBlocked>0 then begin
    FOR i:=1 to List.ResNodes.Count do
      if List.ResNodes.Nodes[i].inf.Blocked then NodeA.Lines.Add(IntToStr(i));
    END;
end;


procedure TAlgForm.FormResize(Sender: TObject);
begin
{  if Screen.Width=1280 then Width:=1060
  else if Screen.Width=1024 then Width:=900
  else if Screen.Width<801 then Width:=650
  else if Screen.Width=1440 then Width:=1220
  else} Width:=900;
{  If Screen.Height=1024 then Height:=800
  else If Screen.Height=768 then Height:=650
  else If Screen.Height<601 then Height:=500
  else If Screen.Height=900 then Height:=800
  else} Height:=600;
  Top  :=100;
  Left :=0;//Screen.Width;
end;
{
procedure TAlgForm.ReCalculateClick(Sender: TObject);
begin
  Upload.ReCalculate;
end;

procedure TAlgForm.ReLoadResultsClick(Sender: TObject);
begin
  Upload.CreateRes;
  Upload.LoaDResult;
  Upload.DestroyRes;
end; }

procedure TAlgForm.FormShow(Sender: TObject);
begin
  Update;
  Updating;
end;


// ������ ������������ �������
Function TAlgForm.CalculateMaximumS(Log: Boolean):Real;
var
  i,e: integer;
  s,MaxS:real;
begin
  if (List.ResNodes.Count>0) and (List.ResElements.Count>0) then begin
    MaxS:=0;
    for i:=1 to list.ResElements.Count do begin
      S:=CalcSForSegment(i);
      IF MaxS<S then begin MaxS:=S; e:=i; end;
    end;
    If Log then Nodes.Lines.Add(Format('# ������������ ������� � �������� %d � � �������� %g (~ %f)',[e,MaxS,MaxS]));
    Result:=MaxS;
  end;
end;

// ������  ����������� �������
Function TAlgForm.CalculateMinimumS(Log: Boolean):Real;
var
  i,e: integer;
  s,MinS:real;
begin
  if (List.ResNodes.Count>0) and (List.ResElements.Count>0) then begin
    MinS:=99999;
    for i:=1 to list.ResElements.Count do begin
      S:=CalcSForSegment(i);
      IF MinS>S then begin MinS:=S; e:=i; end;
    end;
    If Log then Nodes.Lines.Add(Format('# ����������� ������� � �������� %d � � �������� %g (~ %f)',[e,MinS,MinS]));
    Result:=MinS;
  end;
end;

// ������ ������������ ����
Function TAlgForm.CalculateMinimumTr(Log: Boolean):Real;
Const
  pi=3.1415926535897932384626433832795;
Var
  I,e: Integer;
  x1,y1,x2,y2,x3,y3:real;
  tr1,tr2,tr3,tr:real;
begin
  // ������� ������������ ���� �� ���� �����
  if (List.ResNodes.Count>0) and (List.ResElements.Count>0) then begin
    Tr:=180;
    for i:=1 to list.ResElements.Count do begin
     x1:=List.ResNodes.Nodes[Upload.Find(list.ResElements.Elements[i].Node1)].X;
     y1:=List.ResNodes.Nodes[Upload.Find(list.ResElements.Elements[i].Node1)].Y;
     x2:=List.ResNodes.Nodes[Upload.Find(list.ResElements.Elements[i].Node2)].X;
     y2:=List.ResNodes.Nodes[Upload.Find(list.ResElements.Elements[i].Node2)].Y;
     x3:=List.ResNodes.Nodes[Upload.Find(list.ResElements.Elements[i].Node3)].X;
     y3:=List.ResNodes.Nodes[Upload.Find(list.ResElements.Elements[i].Node3)].Y;
     tr1:=ABS(ArcTan2((x2-x1)*(y3-y1)-(x3-x1)*(y2-y1),(x2-x1)*(x3-x1)+(y2-y1)*(y3-y1))*(180/pi));
     tr2:=ABS(ArcTan2((x1-x2)*(y3-y2)-(x3-x2)*(y1-y2),(x1-x2)*(x3-x2)+(y1-y2)*(y3-y2))*(180/pi));
     tr3:=ABS(180-(tr1+tr2));
     IF Tr>tr1 then begin Tr:=Tr1; e:=i; end
     else if Tr>tr2 then begin Tr:=Tr2;  e:=i; end
     else if Tr>tr3 then begin Tr:=Tr3; e:=i; end;
    end;
    If Log then Nodes.Lines.Add(Format('# ����������� ���� � �������� %d � ��� �������� %g (~ %f)',[e,Tr,Tr]));
    Result:=Tr;
  end;
end;

// ��������� ���� � ��������
  function TAlgForm.CheckMinTrInElement(ELEMENT:Integer): boolean;
  Const
    pi=3.1415926535897932384626433832795;
  var
    x1,y1,x2,y2,x3,y3:real;
    tr1,tr2,tr3:real;
  begin
     x1:=List.ResNodes.Nodes[Upload.Find(list.ResElements.Elements[ELEMENT].Node1)].X;
     y1:=List.ResNodes.Nodes[Upload.Find(list.ResElements.Elements[ELEMENT].Node1)].Y;
     x2:=List.ResNodes.Nodes[Upload.Find(list.ResElements.Elements[ELEMENT].Node2)].X;
     y2:=List.ResNodes.Nodes[Upload.Find(list.ResElements.Elements[ELEMENT].Node2)].Y;
     x3:=List.ResNodes.Nodes[Upload.Find(list.ResElements.Elements[ELEMENT].Node3)].X;
     y3:=List.ResNodes.Nodes[Upload.Find(list.ResElements.Elements[ELEMENT].Node3)].Y;
     tr1:=ABS(ArcTan2((x2-x1)*(y3-y1)-(x3-x1)*(y2-y1),(x2-x1)*(x3-x1)+(y2-y1)*(y3-y1))*(180/pi));
     tr2:=ABS(ArcTan2((x1-x2)*(y3-y2)-(x3-x2)*(y1-y2),(x1-x2)*(x3-x2)+(y1-y2)*(y3-y2))*(180/pi));
     tr3:=ABS(180-(tr1+tr2));
//     LogTR.Lines.Add(Format('������� �%d:(%f,%f),(%f,%f),(%f,%f)',[ELEMENT,x1,y1,x2,y2,x3,y3]));
//     LogTR.Lines.Add(Format('_ ����:%f,%f,%f',[tr1,tr2,tr3]));
// �������� ������������ ����
      IF tr1<StrToInt(BaseMinTrunc.Text) then Result:=True
        ELSE IF tr2<StrToInt(BaseMinTrunc.Text) then Result:=True
        ELSE IF tr3<StrToInt(BaseMinTrunc.Text) then Result:=True
      Else Result:=False;
  end;
// ��������� ���� � ��������
  function TAlgForm.CheckMinTrInNewElement(ELEMENT:Integer;NEARELEMENT:Integer; Fx,Fy:Real; Treg: Integer): boolean;
  Var
    a: array [0..4] of integer;
    x,y: array [0..5] of real;
    Function Unique2(k:integer;Node:Integer): boolean;
    begin
      IF(List.ResElements.Elements[k].Node1<>Node) and
        (List.ResElements.Elements[k].Node2<>Node) and
        (List.ResElements.Elements[k].Node3<>Node) then Result:=True
      else Result:=False;
    end;
    function findNode2(i2: integer;k1:integer;k2:integer):Integer; // ����� ��������� ���� � ��������, ��� �������� 2 ����, ��� ����� �� �� ����������
    begin
    if((List.ResElements.Elements[i2].Node1=k1) and (List.ResElements.Elements[i2].Node2=k2))
        or
      ((List.ResElements.Elements[i2].Node2=k1) and (List.ResElements.Elements[i2].Node1=k2))
        then Result:= list.ResElements.Elements[i2].Node3
    else if ((List.ResElements.Elements[i2].Node2=k1) and (List.ResElements.Elements[i2].Node3=k2))
              or
            ((List.ResElements.Elements[i2].Node3=k1) and (List.ResElements.Elements[i2].Node2=k2))
              then Result:= list.ResElements.Elements[i2].Node1
    else if ((List.ResElements.Elements[i2].Node1=k1) and (List.ResElements.Elements[i2].Node3=k2))
              or
            ((List.ResElements.Elements[i2].Node3=k1) and (List.ResElements.Elements[i2].Node1=k2))
              then Result:= list.ResElements.Elements[i2].Node2
      else Result:=-1;
    end;
    Procedure GetA2;
    begin
      IF Unique2(NEARELEMENT,List.ResElements.Elements[ELEMENT].Node1) then begin
        a[1]:=List.ResElements.Elements[ELEMENT].Node1;
        a[2]:=List.ResElements.Elements[ELEMENT].Node2;
        a[4]:=List.ResElements.Elements[ELEMENT].Node3;
        a[3]:=findNode2(NEARELEMENT,a[2],a[4]);
      end
      ELSE IF Unique2(NEARELEMENT,List.ResElements.Elements[ELEMENT].Node2) then begin
        a[1]:=List.ResElements.Elements[ELEMENT].Node2;
        a[2]:=List.ResElements.Elements[ELEMENT].Node3;
        a[4]:=List.ResElements.Elements[ELEMENT].Node1;
        a[3]:=findNode2(NEARELEMENT,a[2],a[4]);
      end
      ELSE IF Unique2(NEARELEMENT,List.ResElements.Elements[ELEMENT].Node3) then begin
        a[1]:=List.ResElements.Elements[ELEMENT].Node3;
        a[2]:=List.ResElements.Elements[ELEMENT].Node2;
        a[4]:=List.ResElements.Elements[ELEMENT].Node1;
        a[3]:=findNode2(NEARELEMENT,a[2],a[4]);
      end;
    end;
    Function CheckMinInElem(x1,y1,x2,y2,x3,y3:real):  boolean;
    Const
      pi=3.1415926535897932384626433832795;
    var
      tr1,tr2,tr3:real;
    begin
      tr1:=ABS(ArcTan2((x2-x1)*(y3-y1)-(x3-x1)*(y2-y1),(x2-x1)*(x3-x1)+(y2-y1)*(y3-y1))*(180/pi));
      tr2:=ABS(ArcTan2((x1-x2)*(y3-y2)-(x3-x2)*(y1-y2),(x1-x2)*(x3-x2)+(y1-y2)*(y3-y2))*(180/pi));
      tr3:=ABS(180-(tr1+tr2));
      LogTR.Lines.Add(Format('����:%f,%f,%f <> %d',[tr1,tr2,tr3,Treg]));
// �������� ������������ ����
      IF tr1<Treg then Result:=False
        ELSE IF tr2<Treg then Result:=False
        ELSE IF tr3<Treg then Result:=False
      Else Result:=True;
    end;
  begin
//    CalcRoundSForSegment(ELEMENT,ELEMENT,False);
    GetA2; // ����������� ��������� ����
    x[1]:=List.ResNodes.Nodes[Upload.Find(a[1])].X;
    y[1]:=List.ResNodes.Nodes[Upload.Find(a[1])].Y;
    x[2]:=List.ResNodes.Nodes[Upload.Find(a[2])].X;;
    y[2]:=List.ResNodes.Nodes[Upload.Find(a[2])].Y;;
    x[3]:=List.ResNodes.Nodes[Upload.Find(a[3])].X;;
    y[3]:=List.ResNodes.Nodes[Upload.Find(a[3])].Y;;
    x[4]:=List.ResNodes.Nodes[Upload.Find(a[4])].X;;
    y[4]:=List.ResNodes.Nodes[Upload.Find(a[4])].Y;;
//    x[5]:=Rx; y[5]:=Ry;
    x[5]:=Fx; y[5]:=Fy;
    LogTR.Lines.Add('...');
    LogTR.Lines.Add(Format('%d,%d,%d,%d',[Upload.Find(a[1]),Upload.Find(a[2]),Upload.Find(a[3]),Upload.Find(a[4])]));
    LogTR.Lines.Add(Format('(%f,%f),(%f,%f),(%f,%f),(%f,%f)',[ x[1],y[1],x[2],y[2],x[3],y[3],x[4],y[4]]));
    LogTR.Lines.Add(Format('Round(%f,%f)',[x[5],y[5]]));
    IF CheckMinInElem(x[5],y[5],x[1],y[1],x[2],y[2])
        and CheckMinInElem(x[5],y[5],x[2],y[2],x[3],y[3])
        and CheckMinInElem(x[5],y[5],x[3],y[3],x[4],y[4])
        and CheckMinInElem(x[5],y[5],x[4],y[4],x[1],y[1]) then Result:=True
    else Result:=False;
  end;

// �������� �� ������ �� ������������ �������
  Function TAlgForm.CheckMaxS(ELEMENT:integer):boolean;
  Var
    Trouble:double;
    x1,y1,x2,y2,x3,y3,a,b,c,p,s,R:real;
  begin
    x1:=List.ResNodes.Nodes[Upload.Find(list.ResElements.Elements[ELEMENT].Node1)].X;
    y1:=List.ResNodes.Nodes[Upload.Find(list.ResElements.Elements[ELEMENT].Node1)].Y;
    x2:=List.ResNodes.Nodes[Upload.Find(list.ResElements.Elements[ELEMENT].Node2)].X;
    y2:=List.ResNodes.Nodes[Upload.Find(list.ResElements.Elements[ELEMENT].Node2)].Y;
    x3:=List.ResNodes.Nodes[Upload.Find(list.ResElements.Elements[ELEMENT].Node3)].X;
    y3:=List.ResNodes.Nodes[Upload.Find(list.ResElements.Elements[ELEMENT].Node3)].Y;
    c:=sqrt((y1-y2)*(y1-y2)+(x1-x2)*(x1-x2));
    a:=sqrt((y2-y3)*(y2-y3)+(x2-x3)*(x2-x3));
    b:=sqrt((y1-y3)*(y1-y3)+(x1-x3)*(x1-x3));
    p:=(a+b+c)/2;
    Trouble:=p*(p-a)*(p-b)*(p-c); {�������� ����������� "-" ��-�� ����� ���������}
    IF (Trouble<0) then S:=0 else S:=sqrt(Trouble);
    R:=S;//Round(abs(S)*10)/10;
    IF R>StrToInt(BaseMaxS.text) then Result:=True
      Else Result:=False;
  end;

procedure TAlgForm.ShowTR;
Const
  pi=3.1415926535897932384626433832795;
Var
  I : Integer;
  x1,y1,x2,y2,x3,y3:real;
  tr1,tr2,tr3,tr:real;
begin
  // ������ ����� �� ���� �����
  if (List.ResNodes.Count>0) and (List.ResElements.Count>0) then begin
    Nodes.Lines.Clear;
    Nodes.Lines.Add('--- ������ ����� �� ���� ���������');
    Nodes.Update;
    INFO.Visible:=True;
    ProgressBar.Position:=0;
    ProgressBar.Min:=0;
    ProgressBar.Max:=list.ResElements.Count;
    Tr:=CalculateMinimumTr(True);
    for i:=1 to list.ResElements.Count do begin
      INFO.Caption:=format('�� %d ��������� ���������� %d',[list.ResElements.Count,i]);
      INFO.update;
      x1:=List.ResNodes.Nodes[Upload.Find(list.ResElements.Elements[i].Node1)].X;
      y1:=List.ResNodes.Nodes[Upload.Find(list.ResElements.Elements[i].Node1)].Y;
      x2:=List.ResNodes.Nodes[Upload.Find(list.ResElements.Elements[i].Node2)].X;
      y2:=List.ResNodes.Nodes[Upload.Find(list.ResElements.Elements[i].Node2)].Y;
      x3:=List.ResNodes.Nodes[Upload.Find(list.ResElements.Elements[i].Node3)].X;
      y3:=List.ResNodes.Nodes[Upload.Find(list.ResElements.Elements[i].Node3)].Y;
      tr1:=ABS(ArcTan2((x2-x1)*(y3-y1)-(x3-x1)*(y2-y1),(x2-x1)*(x3-x1)+(y2-y1)*(y3-y1))*(180/pi));
      tr2:=ABS(ArcTan2((x1-x2)*(y3-y2)-(x3-x2)*(y1-y2),(x1-x2)*(x3-x2)+(y1-y2)*(y3-y2))*(180/pi));
      tr3:=ABS(180-(tr1+tr2));
      LogTR.Lines.Add('������� �'+IntToStr(i));
      LogTR.Lines.Add(format('���� ����� (%d^:%d:^%d) %f > %f(min)',[
        Upload.Find(list.ResElements.Elements[i].Node2),
        Upload.Find(list.ResElements.Elements[i].Node1),
        Upload.Find(list.ResElements.Elements[i].Node3),
        tr1,Tr]));
      LogTR.Lines.Add(format('���� ����� (%d^:%d:^%d) %f > %f(min)',[
        Upload.Find(list.ResElements.Elements[i].Node2),
        Upload.Find(list.ResElements.Elements[i].Node3),
        Upload.Find(list.ResElements.Elements[i].Node1),
        tr2,Tr]));
      LogTR.Lines.Add(format('���� ����� (%d^:%d:^%d) %f > %f(min)',[
        Upload.Find(list.ResElements.Elements[i].Node1),
        Upload.Find(list.ResElements.Elements[i].Node2),
        Upload.Find(list.ResElements.Elements[i].Node3),
        tr3,Tr]));
      INFO.Caption:=format('�� %d ��������� ���������� %d',[list.ResElements.Count,i]);
      INFO.Update;
      ProgressBar.Position:=ProgressBar.Position+1;
      LogTR.Update;
    end;
    INFO.Visible:=False;
    ProgressBar.Position:=0;
  end;
end;



procedure TAlgForm.CalcSumEClick(Sender: TObject);
var
  i: integer;
begin
  FOr i:=1 to list.ResElements.Count do LogSumm.Lines.Add(FOrmat('������� �������� %d = %f',[i,CalcSForSegment(i)]));
end;

Function TAlgForm.CalcSForSegmentInCoord(x1,y1,x2,y2,x3,y3:real):real;
Var
  Trouble:double;
  a,b,c,p,s:real;
begin
      c:=sqrt((y1-y2)*(y1-y2)+(x1-x2)*(x1-x2));
      a:=sqrt((y2-y3)*(y2-y3)+(x2-x3)*(x2-x3));
      b:=sqrt((y1-y3)*(y1-y3)+(x1-x3)*(x1-x3));
      p:=(a+b+c)/2;
      Trouble:=p*(p-a)*(p-b)*(p-c); {�������� ����������� "-" ��-�� ����� ���������}
      IF (Trouble<0) then S:=0 else S:=sqrt(Trouble);
      Result:=Round(abs(S)*10)/10;
end;

Function TAlgForm.CalcSForSegment(ELEMENT:integer):real;
Var
  Trouble:double;
  x1,y1,x2,y2,x3,y3,a,b,c,p,s:real;
begin
      x1:=List.ResNodes.Nodes[Upload.Find(list.ResElements.Elements[ELEMENT].Node1)].X;
      y1:=List.ResNodes.Nodes[Upload.Find(list.ResElements.Elements[ELEMENT].Node1)].Y;
      x2:=List.ResNodes.Nodes[Upload.Find(list.ResElements.Elements[ELEMENT].Node2)].X;
      y2:=List.ResNodes.Nodes[Upload.Find(list.ResElements.Elements[ELEMENT].Node2)].Y;
      x3:=List.ResNodes.Nodes[Upload.Find(list.ResElements.Elements[ELEMENT].Node3)].X;
      y3:=List.ResNodes.Nodes[Upload.Find(list.ResElements.Elements[ELEMENT].Node3)].Y;
      c:=sqrt((y1-y2)*(y1-y2)+(x1-x2)*(x1-x2));
      a:=sqrt((y2-y3)*(y2-y3)+(x2-x3)*(x2-x3));
      b:=sqrt((y1-y3)*(y1-y3)+(x1-x3)*(x1-x3));
      p:=(a+b+c)/2;
      Trouble:=p*(p-a)*(p-b)*(p-c); {�������� ����������� "-" ��-�� ����� ���������}
      IF (Trouble<0) then S:=0 else S:=sqrt(Trouble);
      Result:=S;//Round(abs(S)*10)/10;
end;
// ���������� ������� ��������������, ��� ������ ����� - ����� ��������� ����������
Function TAlgForm.CalcRoundSForSegment(ELEMENT:integer;CHECKEL:Integer; Log: boolean):real;
Var
  RoundX,RoundY, Trouble:Extended	;
  x1,y1,x2,y2,x3,y3,a,b,c,p,s,S1,S2,S3:Extended;
  procedure OverRoundCenter;
  Var
    Determ: real;
  begin
    Determ:=x1*y2+y1*x3-y2*x3-x1*y3-x2*y1+x2*y3;
    IF Determ<>0 then begin
    RoundY :=(-1/2)*((-x2*x2*x1-y2*y2*x1-x2*x3*x3-x1*x1*x3-y1*y1*x3+x1*x3*x3+
                      x2*x2*x3+y2*y2*x3+x2*x1*x1+x2*y1*y1+x1*y3*y3-x2*y3*y3)
                      /Determ);
    RoundX :=(1/2)*((-x1*x1*y3+x1*x1*y2-x3*x3*y2+y1*y1*y2+y1*y3*y3+y3*x2*x2-
                      y1*x2*x2-y1*y2*y2+y1*x3*x3-y3*y3*y2-y1*y1*y3+y3*y2*y2)
                      /Determ);
    Rx:=RoundX; Ry:=RoundY;
    end
    else begin
      RoundX:=(x1+x2+x3)/3;
      RoundY:=(y1+y2+y3)/3;
    end;
  end;
  begin
  s1:=0;  s2:=0;  s3:=0; RoundX:=0; RoundY:=0;
      x1:=List.ResNodes.Nodes[Upload.Find(list.ResElements.Elements[ELEMENT].Node1)].X;
      y1:=List.ResNodes.Nodes[Upload.Find(list.ResElements.Elements[ELEMENT].Node1)].Y;
      x2:=List.ResNodes.Nodes[Upload.Find(list.ResElements.Elements[ELEMENT].Node2)].X;
      y2:=List.ResNodes.Nodes[Upload.Find(list.ResElements.Elements[ELEMENT].Node2)].Y;
      x3:=List.ResNodes.Nodes[Upload.Find(list.ResElements.Elements[ELEMENT].Node3)].X;
      y3:=List.ResNodes.Nodes[Upload.Find(list.ResElements.Elements[ELEMENT].Node3)].Y;
      OverRoundCenter;
      IF Log then LogT.Lines.Add(format('&&& RoundX=%f,RoundY=%f',[RoundX,RoundY]));
      x1:=List.ResNodes.Nodes[Upload.Find(list.ResElements.Elements[CHECKEL].Node1)].X;
      y1:=List.ResNodes.Nodes[Upload.Find(list.ResElements.Elements[CHECKEL].Node1)].Y;
      x2:=List.ResNodes.Nodes[Upload.Find(list.ResElements.Elements[CHECKEL].Node2)].X;
      y2:=List.ResNodes.Nodes[Upload.Find(list.ResElements.Elements[CHECKEL].Node2)].Y;
      x3:=List.ResNodes.Nodes[Upload.Find(list.ResElements.Elements[CHECKEL].Node3)].X;
      y3:=List.ResNodes.Nodes[Upload.Find(list.ResElements.Elements[CHECKEL].Node3)].Y;
      Trouble:=(Roundy-y2)*(Roundy-y2)+(Roundx-x2)*(Roundx-x2); {�������� ����������� "-" ��-�� ����� ���������}
        IF (Trouble<0) then c:=-1 else c:=sqrt(Trouble);
      Trouble:=(y2-y3)*(y2-y3)+(x2-x3)*(x2-x3); {�������� ����������� "-" ��-�� ����� ���������}
        IF (Trouble<0) then a:=-1 else a:=sqrt(Trouble);
      Trouble:=(Roundy-y3)*(Roundy-y3)+(Roundx-x3)*(Roundx-x3); {�������� ����������� "-" ��-�� ����� ���������}
        IF (Trouble<0) then b:=-1 else b:=sqrt(Trouble);
      IF (a=-1) or (b=-1) or (c=-1) then S1:=-1
      else begin
        p:=(a+b+c)/2;
        Trouble:=p*(p-a)*(p-b)*(p-c); {�������� ����������� "-" ��-�� ����� ���������}
        IF (Trouble<0) then S1:=0 else S1:=sqrt(Trouble);
      end;
      Trouble:=(y1-Roundy)*(y1-Roundy)+(x1-Roundx)*(x1-Roundx); {�������� ����������� "-" ��-�� ����� ���������}
        IF (Trouble<0) then c:=-1 else c:=sqrt(Trouble);
      Trouble:=(Roundy-y3)*(Roundy-y3)+(Roundx-x3)*(Roundx-x3); {�������� ����������� "-" ��-�� ����� ���������}
        IF (Trouble<0) then a:=-1 else a:=sqrt(Trouble);
      Trouble:=(y1-y3)*(y1-y3)+(x1-x3)*(x1-x3); {�������� ����������� "-" ��-�� ����� ���������}
        IF (Trouble<0) then b:=-1 else b:=sqrt(Trouble);
      IF (a=-1) or (b=-1) or (c=-1) then S2:=-1
      else begin
        p:=(a+b+c)/2;
        Trouble:=p*(p-a)*(p-b)*(p-c); {�������� ����������� "-" ��-�� ����� ���������}
        IF (Trouble<0) then S2:=0 else S2:=sqrt(Trouble);
      end;
      Trouble:=(y1-y2)*(y1-y2)+(x1-x2)*(x1-x2); {�������� ����������� "-" ��-�� ����� ���������}
        IF (Trouble<0) then c:=-1 else c:=sqrt(Trouble);
      Trouble:=(y2-Roundy)*(y2-Roundy)+(x2-Roundx)*(x2-Roundx); {�������� ����������� "-" ��-�� ����� ���������}
        IF (Trouble<0) then a:=-1 else a:=sqrt(Trouble);
      Trouble:=(y1-Roundy)*(y1-Roundy)+(x1-Roundx)*(x1-Roundx); {�������� ����������� "-" ��-�� ����� ���������}
        IF (Trouble<0) then b:=-1 else b:=sqrt(Trouble);
      IF (a=-1) or (b=-1) or (c=-1) then S3:=-1
      else begin
        p:=(a+b+c)/2;
        Trouble:=p*(p-a)*(p-b)*(p-c); {�������� ����������� "-" ��-�� ����� ���������}
        IF (Trouble<0) then S3:=0 else S3:=sqrt(Trouble);
      end;
      IF (S1=-1) or (S2=-1) or (S3=-1) then S:=-1
      else S:=S1+S2+S3;
      Result:=S;//Round(abs(S)*10)/10;
  end;

// ����� ����������
procedure TAlgForm.UseMinTRClick(Sender: TObject);
begin
  IF UseMinTR.Checked then begin
    UpDownMinTrunc.Enabled:=True;
    MinTrunc.Enabled:=True;
    BtnFillMinTrunc.Enabled:=True;
  end
  else begin
    UpDownMinTrunc.Enabled:=False;
    MinTrunc.Enabled:=False;
    BtnFillMinTrunc.Enabled:=False;
  end;
end;

// ������������ �����������
procedure TAlgForm.NRS_ChangeDClick(Sender: TObject);
begin
  IF NRS_ChangeD.Checked then begin
    NRS_PosNewNode.Enabled:=True;
    NRS_PosRough.Enabled:=True;
    NRS_PosGravityCenter.Enabled:=True;
    NRS_PosDoNotUse.Enabled:=True;
// ����� ������������
    NRS_PosNewNode.Enabled:=False;
    NRS_Middle.Enabled:=False;
    NRS_Optimum.Enabled:=False;
  end
  else begin
    NRS_PosNewNode.Enabled:=False;
    NRS_PosRough.Enabled:=False;
    NRS_PosGravityCenter.Enabled:=False;
    NRS_PosDoNotUse.Enabled:=False;
  end;
end;

procedure TAlgForm.NRS_AppNewNodeClick(Sender: TObject);
begin
  IF NRS_AppNewNode.Checked then begin
    NRS_PosNewNode.Enabled:=True;
    NRS_Middle.Enabled:=True;
    NRS_Optimum.Enabled:=True;
// ����� ������������
    NRS_PosNewNode.Enabled:=False;
    NRS_PosRough.Enabled:=False;
    NRS_PosGravityCenter.Enabled:=False;
    NRS_PosDoNotUse.Enabled:=False;
  end
  else begin
    NRS_PosNewNode.Enabled:=False;
    NRS_Middle.Enabled:=False;
    NRS_Optimum.Enabled:=False;
  end;
end;


procedure TAlgForm.ClearNodesClick(Sender: TObject);
  begin Nodes.Lines.Clear;  end;

// ������� �������� (����������� ����)
procedure TAlgForm.UseCheckBaseMinTRClick(Sender: TObject);
begin
  IF UseCheckBaseMinTR.Checked then begin
    UpDownBaseMinTrunc.Enabled:=True;
    BaseMinTrunc.Enabled:=True;
    BtnFillBaseMinTrunc.Enabled:=True;
  end
  else begin
    UpDownBaseMinTrunc.Enabled:=False;
    BaseMinTrunc.Enabled:=False;
    BtnFillBaseMinTrunc.Enabled:=False;
  end;
end;
// ������� �������� (����������� �������)
procedure TAlgForm.UseBaseMaxSClick(Sender: TObject);
begin
   IF UseBaseMaxS.Checked then begin
    BaseMaxS.Enabled:=True;
    UpDownBaseMaxS.Enabled:=True;
    BtnFillBaseMaxS.Enabled:=True;
  end
  else begin
    BaseMaxS.Enabled:=False;
    UpDownBaseMaxS.Enabled:=False;
    BtnFillBaseMaxS.Enabled:=False;
  end;
end;

procedure TAlgForm.BaseCalculateMaxSClick(Sender: TObject);
begin
{  IF BaseCalculateMaxS.Checked then} UpDownBaseMaxS.Enabled:=False;
  BaseMaxS.Text:=IntToStr(Trunc(CalculateMaximumS(True)));
end;

procedure TAlgForm.StopClick(Sender: TObject);
begin
    State:=False;
//    terminatethread(HChDiag,0); // �������� ����� ��� ����������
//    Thread.Terminate;
end;

procedure TAlgForm.BaseCheckTRInNewElementsClick(Sender: TObject);
begin
  IF BaseCheckTRInNewElements.Checked then begin
    BaseMinTrInNewElement.Enabled:=True;
    UpDownBaseMinTrInNewElement.Enabled:=True;
    BtnFillBaseMinTrInNewElement.Enabled:=True;
  end
  else begin
    BaseMinTrInNewElement.Enabled:=False;
    UpDownBaseMinTrInNewElement.Enabled:=False;
    BtnFillBaseMinTrInNewElement.Enabled:=False;
  end;
end;

procedure TAlgForm.BaseCheckTRInNewSElementsClick(Sender: TObject);
begin
  IF BaseCheckTRInNewSElements.Checked then begin
    BaseMinTrInNewSElement.Enabled:=True;
    UpDownBaseMinTrInNewSElement.Enabled:=True;
    BtnFillBaseCheckTRInNewSElements.Enabled:=True;
  end
  else begin
    BaseMinTrInNewSElement.Enabled:=False;
    UpDownBaseMinTrInNewSElement.Enabled:=False;
    BtnFillBaseCheckTRInNewSElements.Enabled:=False;
  end;
end;

procedure TAlgForm.BaseCheckMinSInNewSElementsClick(Sender: TObject);
begin
  IF BaseCheckMinSInNewSElements.Checked then begin
    BaseMinSInNewSElement.Enabled:=True;
    UpDownBaseMinSInNewSElement.Enabled:=True;
    BtnFillBaseCheckMinSInNewSElements.Enabled:=True;
  end
  else begin
    BaseMinSInNewSElement.Enabled:=False;
    UpDownBaseMinSInNewSElement.Enabled:=False;
    BtnFillBaseCheckMinSInNewSElements.Enabled:=False;
  end;
end;

// ������ �������� ��������� ���������

procedure TAlgForm.BtnFillBaseCheckMinSInNewSElementsClick(
  Sender: TObject);
var i: integer;
begin
  i:=Trunc(CalculateMinimumS(True));
  if i=0 then i:=1;
  OutMinS.Text:=IntToStr(i);
  BaseMinSInNewSElement.Text:=OutMinS.Text;
end;

procedure TAlgForm.BtnFillBaseCheckTRInNewSElementsClick(Sender: TObject);
  begin
    OutMinTrS.Text:=IntToStr(Trunc(CalculateMinimumTr(True)));
    BaseMinTrInNewSElement.Text:=OutMinTrS.Text;
  end;

procedure TAlgForm.BtnFillBaseMinTruncClick(Sender: TObject);
  begin
    ForMinTr.Text:=IntToStr(Trunc(CalculateMinimumTr(True)));
    BaseMinTrunc.Text:=ForMinTr.Text;
  end;

procedure TAlgForm.BtnFillBaseMaxSClick(Sender: TObject);
  begin
    MaxS1.Text:=IntToStr(Trunc(CalculateMaximumS(True)));
    BaseMaxS.Text:=MaxS1.Text;
  end;

procedure TAlgForm.BtnFillBaseMinTrInNewElementClick(Sender: TObject);
  begin
    OutMinTrT.Text:=IntToStr(Trunc(CalculateMinimumTr(True)));
    BaseMinTrInNewElement.Text:=OutMinTrT.Text;
  end;

procedure TAlgForm.BtnFillMinTruncClick(Sender: TObject);
  begin
    MinTrForDiag.Text:=IntToStr(Trunc(CalculateMinimumTr(True)));
    MinTrunc.Text:=MinTrForDiag.Text;
  end;




procedure TAlgForm.TabSheet1Show(Sender: TObject);
begin
  ShowTR;
end;


procedure TAlgForm.FormCreate(Sender: TObject);
begin
  ProcList.count:=0;
end;


// ��������� � ����������
// �������� �����
procedure TAlgForm.Var0RefreshClick(Sender: TObject);
Var
  idx: integer;
  MaxS, MinS: real;
  Function ArS: real;
  Var
    i: integer;
    s: real;
  begin
    s:=0; FOr i:=1 to List.ResElements.Count do s:=s+CalcSForSegment(i); Result:=s/List.ResElements.Count;
  end;
  Function ArgS: real;
  Var
    i,n: integer;
    s1,s,k: real;
  begin
    s:=0; k:=(MaxS-MinS)/10; n:=0;
    FOr i:=1 to List.ResElements.Count do begin
      s1:=CalcSForSegment(i);
      IF (s1>(Mins+k)) and (s1<(MaxS-k)) then begin
        S:=s+s1; inc(n);
      end;
    end;
    Result:=s/n;
  end;
begin
  idx:=MainR.CheckPoint.ItemIndex; {��������� ����� �������� ��������}
  MainR.CheckPoint.ItemIndex:=0;   {�������� �������� �����}
  Upload.CopyFromVariant(1);
  MinS:=CalculateMinimumS(False);  {������� � �����...}
  MaxS:=CalculateMaximumS(False);
  Var0minT.Text:=format('%f',[CalculateMinimumTr(False)]);//IntToStr(Trunc(CalculateMinimumTr(False)));
  Var0minS.Text:=format('%f',[MinS]);//IntToStr(Trunc(MinS));
  Var0maxS.Text:=format('%f',[MaxS]);//IntToStr(Trunc(MaxS));
  Var0numE.Text:=IntToStr(List.ResElements.Count);
  Var0numN.Text:=IntToStr(List.ResNodes.Count);
  Var0arS.Text:=format('%f',[ArS]);
  Var0argS.Text:=format('%f',[ArgS]);
  MainR.CheckPoint.ItemIndex:=idx;   {������������ � �������� ��������}
  Upload.CopyFromVariant(MainVariant);
end;
// ������� �����
procedure TAlgForm.Var1RefreshClick(Sender: TObject);
Var
  idx: integer;
  MaxS, MinS: real;
  Function ArS: real;
  Var
    i: integer;
    s: real;
  begin
    s:=0; FOr i:=1 to List.ResElements.Count do s:=s+CalcSForSegment(i); Result:=s/List.ResElements.Count;
  end;
  Function ArgS: real;
  Var
    i,n: integer;
    s1,s,k: real;
  begin
    s:=0; k:=(MaxS-MinS)/10; n:=0;
    FOr i:=1 to List.ResElements.Count do begin
      s1:=CalcSForSegment(i);
      IF (s1>(Mins+k)) and (s1<(MaxS-k)) then begin
        S:=s+s1; inc(n);
      end;
    end;
    Result:=s/n;
  end;
begin
  MinS:=CalculateMinimumS(False);  {������� � �����...}
  MaxS:=CalculateMaximumS(False);
  Var1minT.Text:=format('%f',[CalculateMinimumTr(False)]);//IntToStr(Trunc(CalculateMinimumTr(False)));
  Var1minS.Text:=format('%f',[MinS]);//IntToStr(Trunc(MinS));
  Var1maxS.Text:=format('%f',[MaxS]);//IntToStr(Trunc(MaxS));
  Var1numE.Text:=IntToStr(List.ResElements.Count);
  Var1numN.Text:=IntToStr(List.ResNodes.Count);
  Var1arS.Text:=format('%f',[ArS]);
  Var1argS.Text:=format('%f',[ArgS]);
end;

procedure TAlgForm.SummaryRefreshClick(Sender: TObject);
Var
  MinT,MinS,MaxS,NumE,NumN,ArS,ArgS,ArgMS:real;
begin
  Var0RefreshClick(Sender); Var1RefreshClick(Sender); {������� �������� ������}
  MinT:=(StrToFloat(Var0minT.Text)/StrToFloat(Var1minT.Text))*100;
  MinS:=(StrToFloat(Var0minS.Text)/StrToFloat(Var1minS.Text))*100;
  MaxS:=(StrToFloat(Var0maxS.Text)/StrToFloat(Var1maxS.Text))*100;
  NumE:=(StrToFloat(Var1NumE.Text)/StrToFloat(Var0NumE.Text))*100;
  NumN:=(StrToFloat(Var1NumN.Text)/StrToFloat(Var0NumN.Text))*100;
  ArS:=(StrToFloat(Var0ArS.Text)/StrToFloat(Var1ArS.Text))*100;
  ArgS:=(StrToFloat(Var0ArgS.Text)/StrToFloat(Var1ArgS.Text))*100;
  ArgMS:=((StrToFloat(Var0minS.Text)/StrToFloat(Var0maxS.Text))/
          (StrToFloat(Var1minS.Text)/StrToFloat(Var1maxS.Text)))*100;
  SummaryMinT.Text:=format('%f',[MinT]);
  SummaryMinS.Text:=format('%f',[MinS]);
  SummaryMaxS.Text:=format('%f',[MaxS]);
  SummaryNumE.Text:=format('%f',[NumE]);
  SummaryNumN.Text:=format('%f',[NumN]);
  SummaryArS.Text:=format('%f',[ArS]);
  SummaryArgS.Text:=format('%f',[ArgS]);
  SummaryArgMS.Text:=format('%f',[ArgMS]);
  IF MinT>100 then SummaryMinT.Color:=clRed   else SummaryMinT.Color:=clGreen;
  IF ArS<100 then SummaryArS.Color:=clRed     else SummaryArS.Color:=clGreen;
  IF ArgS<100 then SummaryArgS.Color:=clRed   else SummaryArgS.Color:=clGreen;
  IF ArgMS>100 then SummaryArgMS.Color:=clRed else SummaryArgMS.Color:=clGreen;
end;

procedure TAlgForm.SaveIfAlgWasClick(Sender: TObject);
begin
  IF MainVariant <> 1  then Upload.CopyToVariant(MainVariant);
  SaveIfAlgWas.Visible:=False;
  Roolback.Visible:=False;
end;

procedure TAlgForm.RoolbackClick(Sender: TObject);
begin
  Upload.CopyFromVariant(MainVariant);
  SaveIfAlgWas.Visible:=False;
  Roolback.Visible:=False;
end;

end.
