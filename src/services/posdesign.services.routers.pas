unit posdesign.services.routers;

interface

uses
  Router4D,
  posdesign.pages.main,
  posdesign.pages.orders,
  posdesign.pages.app;

type
  TRouters = class
  private
  public
    constructor Create;
    destructor Destroy; override;
  end;

var
  routers: TRouters;

implementation

{ TRouters }

constructor TRouters.Create;
begin
  TRouter4D
    .Switch
      .Router('App', TPagesApp)
      .Router('Main', TPageMain)
      .Router('Order', TPageOrders);
end;

destructor TRouters.Destroy;
begin

  inherited;
end;

initialization

routers := TRouters.Create;

finalization

routers.Free;

end.
