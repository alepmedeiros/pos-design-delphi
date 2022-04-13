unit posdesign.component.button.interfaces;

interface

uses
  FMX.Types,
  posdesign.component.interfaces,
  System.Classes,
  component.button;

type
  iComponentsButtons = interface
    function Container(Value: TFMXObject): iComponentsButtons;
    function button(Owner: TComponent): iComponents<Tcomponentbutton>;
  end;

implementation

end.
