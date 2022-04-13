unit posdesign.pages.app;

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
  Router4D,
  Router4D.Interfaces,
  posdesign.pages.main;

type
  TPagesApp = class(TForm)
    LayoutContainer: TLayout;
    LayoutNavbar: TLayout;
    LayoutMain: TLayout;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    function Build: TFmxObject;
  end;

var
  PagesApp: TPagesApp;

implementation

{$R *.fmx}

procedure TPagesApp.FormCreate(Sender: TObject);
begin
  LayoutNavbar.AddObject(Tcomponentnavibar.Create(self).component);

  TRouter4D.Render<TPageMain>.SetElement(LayoutMain,LayoutMain);
end;

function TPagesApp.Build: TFmxObject;
begin
  Result := LayoutContainer;
end;

end.
