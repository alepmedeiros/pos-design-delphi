unit posdesign.components.attributes.impl;

interface

uses
  posdesign.component.attributes.interfaces;

type
  TComponenteAttributes<T: class> = class(TInterfacedObject, iComponenteAttributes<T>)
    private
      [weak]
      FParent: T;
      FImage: String;
      FHeight:Integer;
      FWidth:Integer;
    public
      constructor Create(Parent: T);
      destructor Destroy; override;
      class function New(Parent: T) : iComponenteAttributes<T>;
      function Image(Value: String) : iComponenteAttributes<T>; overload;
      function Image : String; overload;
      function Height(Value: Integer) : iComponenteAttributes<T>; overload;
      function Height : Integer; overload;
      function Width(Value: Integer) : iComponenteAttributes<T>; overload;
      function Width : Integer; overload;
      function &End: T;
  end;

implementation

function TComponenteAttributes<T>.&End: T;
begin
  Result := FParent;
end;

constructor TComponenteAttributes<T>.Create(Parent: T);
begin
  FParent := Parent;
end;

destructor TComponenteAttributes<T>.Destroy;
begin

  inherited;
end;

function TComponenteAttributes<T>.Height: Integer;
begin
  Result := FHeight;
end;

function TComponenteAttributes<T>.Height(
  Value: Integer): iComponenteAttributes<T>;
begin
  Result := Self;
  FHeight := VAlue;
end;

function TComponenteAttributes<T>.Image(
  Value: String): iComponenteAttributes<T>;
begin
  Result := Self;
  FImage := Value;
end;

function TComponenteAttributes<T>.Image: String;
begin
  Result := FImage;
end;

class function TComponenteAttributes<T>.New(Parent: T) : iComponenteAttributes<T>;
begin
  Result := Self.Create(Parent);
end;


function TComponenteAttributes<T>.Width: Integer;
begin
  Result := FWidth;
end;

function TComponenteAttributes<T>.Width(
  Value: Integer): iComponenteAttributes<T>;
begin
  Result := Self;
  FWidth := VAlue;
end;

end.
