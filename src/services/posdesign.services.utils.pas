unit posdesign.services.utils;

interface

uses
  FMX.Objects,
  System.Classes,
  System.Types;

type
  TUtils = class
  private
  public
    class procedure ResourceImage(aResource: String; aImage: TImage);
  end;

implementation

{ TUtils }

class procedure TUtils.ResourceImage(aResource: String; aImage: TImage);
var
  lResource: TResourceStream;
begin
  lResource := TResourceStream.Create(HInstance, aResource, RT_RCDATA);
  try
    aImage.Bitmap.LoadFromStream(lResource);
  finally
    lResource.Free;
  end;
end;

end.
