unit component.navibar;

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
  FMX.Layouts,
  FMX.Objects,
  component.button,
  FMX.Effects,
  Router4D;

type
  Tcomponentnavibar = class(TForm)
    Layout1: TLayout;
    RecBackgroud: TRectangle;
    Layout2: TLayout;
    Layout3: TLayout;
    Layout4: TLayout;
    ShadowEffect1: TShadowEffect;
    procedure FormCreate(Sender: TObject);
  private
    procedure _onClick(Sender: TObject);
  public
    function component: TFMXObject;
  end;

var
  componentnavibar: Tcomponentnavibar;

implementation

{$R *.fmx}
{ Tcomponentnavibar }

function Tcomponentnavibar.component: TFMXObject;
begin
  Result := Layout1;
end;

procedure Tcomponentnavibar.FormCreate(Sender: TObject);
begin
  Layout2.AddObject(Tcomponentbutton.Create(Self).Image('img_menu')
    .Click(_onClick).component);
end;

procedure Tcomponentnavibar._onClick(Sender: TObject);
begin
  TRouter4D.Link.&To('Order');
end;

end.
