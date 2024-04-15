unit UMainTest;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    lstLoadedPacks: TListBox;
    btnLoadPacks: TButton;
    LogMemo: TMemo;
    lstRegPacks: TListBox;
    procedure FormCreate(Sender: TObject);
    procedure btnLoadPacksClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
   LoadedPacks:TList;
   function LoadPack(PackageName:String):Boolean;
   procedure PopulatePacksList;
  public
    { Public declarations }
  function LoadAllPacks:integer;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}
uses common;

function TForm1.LoadAllPacks: integer;
begin
LoadPack('..\The Pack\DynaCommon.bpl') ;
LoadPack('..\The Pack\DynaPack.bpl') ;
LoadPack('..\The Pack\DynaPack2.bpl');


if LoadedPacks.Count>0
then PopulatePacksList
else showmessage('LoadedPacks is empty');



end;

function TForm1.LoadPack(PackageName: String): Boolean;
var
Handle:HMODULE;
begin
try
 Handle:=LoadPackage( PackageName);
 result:=true;
 except on Exception do result:=false;
 end;

 if Result then LoadedPacks.Add(Pointer(Handle));

if result
then  LogMemo.Lines.Insert(0,'Package '+PackageName+' Loaded succefuuly')
else  LogMemo.Lines.Insert(0,'Can not load package '+PackageName);


end;

procedure TForm1.FormCreate(Sender: TObject);
begin
LogMemo.Clear;
LoadedPacks:=TList.Create;

end;

procedure TForm1.PopulatePacksList;
var
i:integer;
begin
lstLoadedPacks.Clear;
lstRegPacks.Clear;


for i := 0 to LoadedPacks.Count-1 DO   lstLoadedPacks.Items.Add( inttostr(Integer(LoadedPacks[i])));

for i := 0 to PkgClssList.Count-1 do lstRegPacks.Items.Add(PkgClssList[i].ClassName);


lstLoadedPacks.ItemIndex:=0;
lstRegPacks.ItemIndex:=0;


end;

procedure TForm1.btnLoadPacksClick(Sender: TObject);
begin
LoadAllPacks;
end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
LoadedPacks.Free;
end;

end.
