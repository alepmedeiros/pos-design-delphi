unit posdesign.index;

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
  posdesign.pages.app;

type
  Tpageindex = class(TForm)
    LayoutContainer: TLayout;
    Rectangle1: TRectangle;
    Layout1: TLayout;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  pageindex: Tpageindex;

implementation

{$R *.fmx}

procedure Tpageindex.FormCreate(Sender: TObject);
begin
  LayoutContainer.AddObject(TPagesApp.Create(Self).Build);
end;

end.
