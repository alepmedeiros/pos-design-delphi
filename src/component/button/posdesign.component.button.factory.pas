unit posdesign.component.button.factory;

interface

uses
  posdesign.component.button.interfaces,
  FMX.Types,
  posdesign.component.interfaces,
  System.Classes,
  component.button;

type
  TFactoryComponentsButtons = class(TInterfacedObject, iComponentsButtons)
  private
    FContainer : TFMXObject;
  public
    constructor Create;
    destructor Destroy; override;
    class function New: iComponentsButtons;
    function Container(Value: TFMXObject): iComponentsButtons;
    function button(Owner: TComponent): iComponents<Tcomponentbutton>;
  end;

implementation

function TFactoryComponentsButtons.button(Owner: TComponent)
  : iComponents<Tcomponentbutton>;
begin
//  Result := (Tcomponentbutton.Create(Owner) as iComponents<Tcomponentbutton>).Container(FContainer);
end;

function TFactoryComponentsButtons.Container(Value: TFMXObject)
  : iComponentsButtons;
begin
  Result := Self;
  FContainer := Value;
end;

constructor TFactoryComponentsButtons.Create;
begin

end;

destructor TFactoryComponentsButtons.Destroy;
begin

  inherited;
end;

class function TFactoryComponentsButtons.New: iComponentsButtons;
begin
  Result := Self.Create;
end;

end.
