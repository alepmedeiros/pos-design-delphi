unit componentItemlist;

interface

uses
  System.SysUtils,
  System.Types,
  System.UITypes,
  System.Classes,
  System.Variants,
  FMX.Types,
  FMX.Graphics,
  FMX.Controls,
  FMX.Forms,
  FMX.Dialogs,
  FMX.StdCtrls,
  FMX.Controls.Presentation,
  FMX.Layouts;

type
  Tcomponentlistitem = class(TFrame)
    LayoutContainer: TLayout;
    LayoutBtnExcluir: TLayout;
    LayoutButtons: TLayout;
    LayoutItem: TLayout;
    LayoutPreco: TLayout;
    LayoutQtd: TLayout;
    lblItem: TLabel;
    lblPreco: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.fmx}

end.
