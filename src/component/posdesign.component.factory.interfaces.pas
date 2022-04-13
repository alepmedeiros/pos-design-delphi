unit posdesign.component.factory.interfaces;

interface

uses
  FMX.Types,
  posdesign.component.button.interfaces,
  posdesign.component.itemlist.interfaces;

type
  iComponentsFactory = interface
    function Container(Value: TFMXObject): iComponentsFactory;
    function Buttons: iComponentsButtons;
    function itemlist: iComponentsItemList;
  end;

implementation

end.
