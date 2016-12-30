
{***********************************************}
{                                               }
{               XML Data Binding                }
{                                               }
{         Generated on: 2011-01-29 ¿ÀÈÄ 2:59:31   }
{       Generated from: C:\test1.xml            }
{   Settings stored in: C:\test1.xdb            }
{                                               }
{***********************************************}

unit weather;

interface

uses xmldom, XMLDoc, XMLIntf;

type

{ Forward Decls }

  IXMLCurrentType = interface;
  IXMLWeatherType = interface;
  IXMLLocalType = interface;

{ IXMLCurrentType }

  IXMLCurrentType = interface(IXMLNode)
    ['{C28C46F7-67B5-4114-B56C-F5E389FFFE98}']
    { Property Accessors }
    function Get_Xmlns: UnicodeString;
    function Get_Weather: IXMLWeatherType;
    procedure Set_Xmlns(Value: UnicodeString);
    { Methods & Properties }
    property Xmlns: UnicodeString read Get_Xmlns write Set_Xmlns;
    property Weather: IXMLWeatherType read Get_Weather;
  end;

{ IXMLWeatherType }

  IXMLWeatherType = interface(IXMLNodeCollection)
    ['{7227AC4D-0275-4105-9C3A-E7F40E79A20D}']
    { Property Accessors }
    function Get_Year: Integer;
    function Get_Month: Integer;
    function Get_Day: Integer;
    function Get_Hour: Integer;
    function Get_Local(Index: Integer): IXMLLocalType;
    procedure Set_Year(Value: Integer);
    procedure Set_Month(Value: Integer);
    procedure Set_Day(Value: Integer);
    procedure Set_Hour(Value: Integer);
    { Methods & Properties }
    function Add: IXMLLocalType;
    function Insert(const Index: Integer): IXMLLocalType;
    property Year: Integer read Get_Year write Set_Year;
    property Month: Integer read Get_Month write Set_Month;
    property Day: Integer read Get_Day write Set_Day;
    property Hour: Integer read Get_Hour write Set_Hour;
    property Local[Index: Integer]: IXMLLocalType read Get_Local; default;
  end;

{ IXMLLocalType }

  IXMLLocalType = interface(IXMLNode)
    ['{42726FCA-9A53-489C-9A62-B1435E68D243}']
    { Property Accessors }
    function Get_Stn_id: Integer;
    function Get_Icon: Integer;
    function Get_Desc: UnicodeString;
    function Get_Ta: UnicodeString;
    function Get_Rn_hr1: UnicodeString;
    function Get_Sd_day: UnicodeString;
    procedure Set_Stn_id(Value: Integer);
    procedure Set_Icon(Value: Integer);
    procedure Set_Desc(Value: UnicodeString);
    procedure Set_Ta(Value: UnicodeString);
    procedure Set_Rn_hr1(Value: UnicodeString);
    procedure Set_Sd_day(Value: UnicodeString);
    { Methods & Properties }
    property Stn_id: Integer read Get_Stn_id write Set_Stn_id;
    property Icon: Integer read Get_Icon write Set_Icon;
    property Desc: UnicodeString read Get_Desc write Set_Desc;
    property Ta: UnicodeString read Get_Ta write Set_Ta;
    property Rn_hr1: UnicodeString read Get_Rn_hr1 write Set_Rn_hr1;
    property Sd_day: UnicodeString read Get_Sd_day write Set_Sd_day;
  end;

{ Forward Decls }

  TXMLCurrentType = class;
  TXMLWeatherType = class;
  TXMLLocalType = class;

{ TXMLCurrentType }

  TXMLCurrentType = class(TXMLNode, IXMLCurrentType)
  protected
    { IXMLCurrentType }
    function Get_Xmlns: UnicodeString;
    function Get_Weather: IXMLWeatherType;
    procedure Set_Xmlns(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLWeatherType }

  TXMLWeatherType = class(TXMLNodeCollection, IXMLWeatherType)
  protected
    { IXMLWeatherType }
    function Get_Year: Integer;
    function Get_Month: Integer;
    function Get_Day: Integer;
    function Get_Hour: Integer;
    function Get_Local(Index: Integer): IXMLLocalType;
    procedure Set_Year(Value: Integer);
    procedure Set_Month(Value: Integer);
    procedure Set_Day(Value: Integer);
    procedure Set_Hour(Value: Integer);
    function Add: IXMLLocalType;
    function Insert(const Index: Integer): IXMLLocalType;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLLocalType }

  TXMLLocalType = class(TXMLNode, IXMLLocalType)
  protected
    { IXMLLocalType }
    function Get_Stn_id: Integer;
    function Get_Icon: Integer;
    function Get_Desc: UnicodeString;
    function Get_Ta: UnicodeString;
    function Get_Rn_hr1: UnicodeString;
    function Get_Sd_day: UnicodeString;
    procedure Set_Stn_id(Value: Integer);
    procedure Set_Icon(Value: Integer);
    procedure Set_Desc(Value: UnicodeString);
    procedure Set_Ta(Value: UnicodeString);
    procedure Set_Rn_hr1(Value: UnicodeString);
    procedure Set_Sd_day(Value: UnicodeString);
  end;

{ Global Functions }

function Getcurrent(Doc: IXMLDocument): IXMLCurrentType;
function Loadcurrent(const FileName: string): IXMLCurrentType;
function Newcurrent: IXMLCurrentType;

const
  TargetNamespace = 'current';

implementation

{ Global Functions }

function Getcurrent(Doc: IXMLDocument): IXMLCurrentType;
begin
  Result := Doc.GetDocBinding('current', TXMLCurrentType, TargetNamespace) as IXMLCurrentType;
end;

function Loadcurrent(const FileName: string): IXMLCurrentType;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('current', TXMLCurrentType, TargetNamespace) as IXMLCurrentType;
end;

function Newcurrent: IXMLCurrentType;
begin
  Result := NewXMLDocument.GetDocBinding('current', TXMLCurrentType, TargetNamespace) as IXMLCurrentType;
end;

{ TXMLCurrentType }

procedure TXMLCurrentType.AfterConstruction;
begin
  RegisterChildNode('weather', TXMLWeatherType);
  inherited;
end;

function TXMLCurrentType.Get_Xmlns: UnicodeString;
begin
  Result := AttributeNodes['xmlns'].Text;
end;

procedure TXMLCurrentType.Set_Xmlns(Value: UnicodeString);
begin
  SetAttribute('xmlns', Value);
end;

function TXMLCurrentType.Get_Weather: IXMLWeatherType;
begin
  Result := ChildNodes['weather'] as IXMLWeatherType;
end;

{ TXMLWeatherType }

procedure TXMLWeatherType.AfterConstruction;
begin
  RegisterChildNode('local', TXMLLocalType);
  ItemTag := 'local';
  ItemInterface := IXMLLocalType;
  inherited;
end;

function TXMLWeatherType.Get_Year: Integer;
begin
  Result := AttributeNodes['year'].NodeValue;
end;

procedure TXMLWeatherType.Set_Year(Value: Integer);
begin
  SetAttribute('year', Value);
end;

function TXMLWeatherType.Get_Month: Integer;
begin
  Result := AttributeNodes['month'].NodeValue;
end;

procedure TXMLWeatherType.Set_Month(Value: Integer);
begin
  SetAttribute('month', Value);
end;

function TXMLWeatherType.Get_Day: Integer;
begin
  Result := AttributeNodes['day'].NodeValue;
end;

procedure TXMLWeatherType.Set_Day(Value: Integer);
begin
  SetAttribute('day', Value);
end;

function TXMLWeatherType.Get_Hour: Integer;
begin
  Result := AttributeNodes['hour'].NodeValue;
end;

procedure TXMLWeatherType.Set_Hour(Value: Integer);
begin
  SetAttribute('hour', Value);
end;

function TXMLWeatherType.Get_Local(Index: Integer): IXMLLocalType;
begin
  Result := List[Index] as IXMLLocalType;
end;

function TXMLWeatherType.Add: IXMLLocalType;
begin
  Result := AddItem(-1) as IXMLLocalType;
end;

function TXMLWeatherType.Insert(const Index: Integer): IXMLLocalType;
begin
  Result := AddItem(Index) as IXMLLocalType;
end;

{ TXMLLocalType }

function TXMLLocalType.Get_Stn_id: Integer;
begin
  Result := AttributeNodes['stn_id'].NodeValue;
end;

procedure TXMLLocalType.Set_Stn_id(Value: Integer);
begin
  SetAttribute('stn_id', Value);
end;

function TXMLLocalType.Get_Icon: Integer;
begin
  Result := AttributeNodes['icon'].NodeValue;
end;

procedure TXMLLocalType.Set_Icon(Value: Integer);
begin
  SetAttribute('icon', Value);
end;

function TXMLLocalType.Get_Desc: UnicodeString;
begin
  Result := AttributeNodes['desc'].Text;
end;

procedure TXMLLocalType.Set_Desc(Value: UnicodeString);
begin
  SetAttribute('desc', Value);
end;

function TXMLLocalType.Get_Ta: UnicodeString;
begin
  Result := AttributeNodes['ta'].Text;
end;

procedure TXMLLocalType.Set_Ta(Value: UnicodeString);
begin
  SetAttribute('ta', Value);
end;

function TXMLLocalType.Get_Rn_hr1: UnicodeString;
begin
  Result := AttributeNodes['rn_hr1'].Text;
end;

procedure TXMLLocalType.Set_Rn_hr1(Value: UnicodeString);
begin
  SetAttribute('rn_hr1', Value);
end;

function TXMLLocalType.Get_Sd_day: UnicodeString;
begin
  Result := AttributeNodes['sd_day'].Text;
end;

procedure TXMLLocalType.Set_Sd_day(Value: UnicodeString);
begin
  SetAttribute('sd_day', Value);
end;

end.