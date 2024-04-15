unit Common;

interface

uses contnrs,classes;

type

IPkgInterface=interface
['{FFC0F42B-7C92-41A7-AD31-534B451B055E}']

procedure SetID(value:Integer);
Function  GetID:Integer;
function  Display(Modal:Boolean=true):Boolean;
property  ID:integer read GetID write SetID;

end;

procedure RegisterTestClass(AClass : TClass);
procedure _GetPkgClssList(TargetList:TStringList);

var
PkgClssList: TClassList;


implementation
uses dialogs,sysutils;

procedure RegisterTestclass(AClass : TClass);
var
s:String;
begin
if PkgClssList.IndexOf(AClass)<0
then begin
     PkgClssList.Add(AClass);
     s:=Format('Class %s registered. ClassListcount = %d',[AClass.ClassName,PkgClssList.count]);

     end
else s:='Already exist';

Showmessage('Common Reister : '+s);
end;

procedure _GetPkgClssList(TargetList:TStringList);
var
i:integer;
begin
if not assigned(PkgClssList) then exit;
targetlist.clear;

for i :=0  to PkgClssList.Count-1 do
begin
TargetList.Add( PkgClssList[i].ClassName);
end;

end;

initialization
PkgClssList:=TClassList.Create;
showmessage('INit SEC for Common');

finalization
PkgClssList.Free

end.
