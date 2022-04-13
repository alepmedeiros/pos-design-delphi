unit posdesign.component.itemlist.interfaces;

interface

uses
  FMX.Types,
  System.Classes,
  posdesign.component.interfaces,
  componentItemlist;

type
  iComponentsItemList = interface
    function Container(Value: TFMXObject): iComponentsItemList;
    function itemlist(Owner: TComponent): iComponents<Tcomponentlistitem>;
  end;

implementation

end.
