unit posdesign.pages.main;

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
  component.navibar,
  FMX.Effects,
  FMX.Objects,
  Router4D.Interfaces, FMX.Controls.Presentation, FMX.StdCtrls;

type
  TPageMain = class(TForm, iRouter4DComponent)
    LayoutContainer: TLayout;
    Layout3: TLayout;
    Layout4: TLayout;
    Layout5: TLayout;
    Layout6: TLayout;
    Layout8: TLayout;
    Layout9: TLayout;
    Layout10: TLayout;
    ShadowEffect2: TShadowEffect;
    Layout7: TLayout;
    Layout11: TLayout;
    Layout12: TLayout;
    Rectangle1: TRectangle;
    Rectangle2: TRectangle;
    ShadowEffect1: TShadowEffect;
    Layout1: TLayout;
    Label1: TLabel;
    Layout2: TLayout;
    Rectangle3: TRectangle;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
  private
    { Private declarations }
  public
    function Render: TFmxObject;
    procedure UnRender;
  end;

var
  PageMain: TPageMain;

implementation

{$R *.fmx}

function TPageMain.Render: TFmxObject;
begin
  Result := LayoutContainer;
end;

procedure TPageMain.UnRender;
begin

end;

end.
