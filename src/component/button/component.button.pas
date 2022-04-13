unit component.button;

interface

uses
  System.SysUtils,
  System.Types,
  System.UITypes,
  System.Classes,
  System.Variants,
  FMX.Types,
  FMX.Controls,
  FMX.Forms,
  FMX.Graphics,
  FMX.Dialogs,
  FMX.Controls.Presentation,
  FMX.StdCtrls,
  FMX.Objects,
  FMX.Layouts,
  posdesign.services.utils,
  posdesign.component.attributes.interfaces,
  posdesign.components.attributes.impl,
  Router4D.Props;

type
  Tcomponentbutton = class(TForm)
    LayoutContainer: TLayout;
    ImageButton: TImage;
    btnButton: TSpeedButton;
    procedure btnButtonClick(Sender: TObject);
  private
    FClick: TProc<TObject>;
  public
    function Component : TFmxObject;
    function Image(Value: String) : Tcomponentbutton;
    function Click(Value: TProc<TObject>) : Tcomponentbutton;
  end;

var
  componentbutton: Tcomponentbutton;

implementation

{$R *.fmx}


procedure Tcomponentbutton.btnButtonClick(Sender: TObject);
begin
  if Assigned(Fclick) then
    FClick(Sender);
end;

function Tcomponentbutton.Click(Value: TProc<TObject>) : Tcomponentbutton;
begin
  Result := Self;
  FClick := Value;
end;

function Tcomponentbutton.Component: TFmxObject;
begin
  Result := LayoutContainer;
end;

function Tcomponentbutton.Image(Value: String): Tcomponentbutton;
begin
  Result := Self;
  TUtils.ResourceImage(Value,ImageButton);
end;

end.
