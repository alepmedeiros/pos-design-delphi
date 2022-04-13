unit posdesign.component.attributes.interfaces;

interface

type
  iComponenteAttributes<T> = interface
    function Image(Value: String) : iComponenteAttributes<T>; overload;
    function Image : String; overload;
    function Height(Value: Integer) : iComponenteAttributes<T>; overload;
    function Height : Integer; overload;
    function Width(Value: Integer) : iComponenteAttributes<T>; overload;
    function Width : Integer; overload;
    function &End: T;
  end;

implementation

end.
