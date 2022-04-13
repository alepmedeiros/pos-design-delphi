unit posdesign.pages.orders;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Layouts,
  FMX.Effects, FMX.Objects,Router4D.Interfaces;

type
  TPageOrders = class(TForm,iRouter4DComponent)
    Layout1: TLayout;
    Layout4: TLayout;
    Layout7: TLayout;
    Rectangle1: TRectangle;
    ShadowEffect2: TShadowEffect;
    Layout5: TLayout;
    Layout6: TLayout;
    Rectangle2: TRectangle;
    ShadowEffect1: TShadowEffect;
    procedure Layout1Resize(Sender: TObject);
  private
    { Private declarations }
  public
    function Render : TFMXObject;
    procedure UnRender;
  end;

var
  PageOrders: TPageOrders;

implementation

{$R *.fmx}

{ TPageOrders }

procedure TPageOrders.Layout1Resize(Sender: TObject);
begin
  Layout4.Width :=  (Layout1.Width / 2);
end;

function TPageOrders.Render: TFMXObject;
begin
  Result := Layout1;
end;

procedure TPageOrders.UnRender;
begin

end;

end.
