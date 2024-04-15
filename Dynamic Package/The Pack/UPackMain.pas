unit UPackMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,common, StdCtrls, Buttons;

type
  TPckgForm = class(TForm,IPkgInterface)
    lblID: TLabel;
    btnOk: TBitBtn;
    btnCancel: TBitBtn;
    lblTitle: TLabel;
  private
    { Private declarations }
    procedure SetID(value:Integer);
    Function  GetID:Integer;
    procedure ApplyClick(Sender: TObject);
  public
    { Public declarations }
   Function Display(Modal:Boolean=true):Boolean;
   class  procedure GetPkgClssList(TargetList:TStringList);

  end;


var
  PckgForm: TPckgForm;

implementation

{$R *.dfm}

{ TPckgForm }

procedure TPckgForm.ApplyClick(Sender: TObject);
begin
//SetID();
end;

function TPckgForm.Display(Modal: Boolean):Boolean;
begin
Result:=True;
if Modal then result:=(ShowModal=mrok)
else begin
     btnOk.Caption  := 'Apply';
     btnOk.OnClick  := ApplyClick;
     btnCancel.Kind := bkClose;
     Show;
     end;

end;

function TPckgForm.GetID: Integer;
begin
Result:=StrToInt(lblID.Caption) ;
end;

class procedure TPckgForm.GetPkgClssList(TargetList: TStringList);
begin
_GetPkgClssList(TargetList);
end;

procedure TPckgForm.SetID(value: Integer);
begin
lblID.Caption:=IntToStr(value);
end;

initialization
RegisterTestClass(TPckgForm);
ShowMessage('INIT SEC for DynaPackOne');

end.
