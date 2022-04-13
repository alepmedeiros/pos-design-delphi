program posdesign_multdevice;

{$R *.dres}

uses
  System.StartUpCopy,
  FMX.Forms,
  posdesign.index in 'src\posdesign.index.pas' {pageindex},
  component.navibar in 'src\component\navibar\component.navibar.pas' {componentnavibar},
  component.button in 'src\component\button\component.button.pas' {componentbutton},
  component.cardbutton in 'src\component\cardbutton\component.cardbutton.pas' {ComponentCard},
  componentItemlist in 'src\component\ItemList\componentItemlist.pas' {componentlistitem: TFrame},
  component.cardmenu in 'src\component\cardmenu\component.cardmenu.pas' {componetCardMenu: TFrame},
  posdesign.services.utils in 'src\services\posdesign.services.utils.pas',
  posdesign.component.attributes.interfaces in 'src\component\attributes\posdesign.component.attributes.interfaces.pas',
  posdesign.components.attributes.impl in 'src\component\attributes\impl\posdesign.components.attributes.impl.pas',
  posdesign.pages.main in 'src\pages\posdesign.pages.main.pas' {PageMain},
  posdesign.pages.orders in 'src\pages\posdesign.pages.orders.pas' {PageOrders},
  posdesign.services.routers in 'src\services\posdesign.services.routers.pas',
  posdesign.component.interfaces in 'src\component\posdesign.component.interfaces.pas',
  posdesign.component.factory.interfaces in 'src\component\posdesign.component.factory.interfaces.pas',
  posdesign.component.button.interfaces in 'src\component\button\posdesign.component.button.interfaces.pas',
  posdesign.component.button.factory in 'src\component\button\posdesign.component.button.factory.pas',
  posdesign.component.itemlist.interfaces in 'src\component\ItemList\posdesign.component.itemlist.interfaces.pas',
  posdesign.pages.app in 'src\pages\posdesign.pages.app.pas' {PagesApp};

{$R *.res}

begin
  Application.Initialize;
  ReportMemoryLeaksOnShutdown := True;
  Application.CreateForm(Tpageindex, pageindex);
  Application.Run;
end.
