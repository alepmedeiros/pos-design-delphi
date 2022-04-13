unit component.cardbutton;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.Objects, FMX.Layouts;

type
  TComponentCard = class(TForm)
    LayoutContainer: TLayout;
    LayoutDescricao: TLayout;
    LayoutImage: TLayout;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    cardbutton: TSpeedButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ComponentCard: TComponentCard;

implementation

{$R *.fmx}

end.
