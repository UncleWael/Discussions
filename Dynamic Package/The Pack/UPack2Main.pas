unit UPack2Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Spin,common;

type
  TPack2Main = class(TForm,IPkgInterface )
    btnOk: TBitBtn;
    btnCancel: TBitBtn;
    Label1: TLabel;
    SpinEdit1: TSpinEdit;
  private
    { Private declarations }
  procedure SetID(value:Integer);
  Function  GetID:Integer;
  procedure ApplyClick(Sender:TObject);

  public
    { Public declarations }

  function Display(Modal:Boolean=true):Boolean;
  class procedure GetPkgClssList(TargetList: TStringList);

  end;

var
  Pack2Main: TPack2Main;

implementation


{$R *.dfm}

{ TPack2Main }

procedure TPack2Main.ApplyClick(Sender: TObject);
begin
//
end;

function TPack2Main.Display(Modal: Boolean): Boolean;
begin
result:=true;
if Modal then  Result:=(ShowModal = mrOk)
else begin
      btnOk.Caption:='Apply';
      btnOk.OnClick:=ApplyClick;
      btnCancel.Kind:=bkClose;
      Show;
     end;

end;

function TPack2Main.GetID: Integer;
begin
Result:=SpinEdit1.Value;
end;

class procedure TPack2Main.GetPkgClssList(TargetList: TStringList);
begin
_GetPkgClssList(TargetList);
end;

procedure TPack2Main.SetID(value: Integer);
begin
SpinEdit1.Value:=value;
end;

initialization
RegisterTestClass(TPack2Main);
ShowMessage('INIT SEC for DynaPackTwo');
end.
