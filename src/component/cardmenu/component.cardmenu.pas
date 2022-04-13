unit component.cardmenu;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.Objects, FMX.Effects, FMX.Layouts;

type
  TcomponetCardMenu = class(TFrame)
    LayoutContainer: TLayout;
    Layout1: TLayout;
    RecBankgroud: TRectangle;
    ShadowEffect1: TShadowEffect;
    Rectangle1: TRectangle;
    Layout2: TLayout;
    Layout3: TLayout;
    Image1: TImage;
    Layout4: TLayout;
    Label1: TLabel;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.fmx}

end.
