unit posdesign.component.interfaces;

interface

uses
  FMX.Types, posdesign.component.attributes.interfaces;

type
  iComponents<T> = interface
    function Component : TFMXObject;
    function Attributes : iComponenteAttributes<T>;
    function LoadAttributes(Value: String) : T;
    function Container(Value: TFMXObject) : iComponents<T>;
    function Build : T;
  end;

implementation

end.
