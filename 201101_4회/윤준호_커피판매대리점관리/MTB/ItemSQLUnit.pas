unit ItemSQLUnit;

interface
uses SysUtils, DB, Generics.collections, clientModuleunit1
;


type
  TItem = class
  private
  public
    I_ID : string;
    I_NAME  : string;
    I_COST  : integer;
    I_DATE  : TSQLTimeStampField;
    I_IMAGE : TBlobField;
  end;
  function GetItem : TObjectlist<TItem>;


implementation

//  var
//  Itemlist : TObjectlist<TItem>;
//Itemlist := TOBjectlist<TItem>.create;
//  itemlist.free;
//  itemlist.add();

 function GetItem: TObjectlist<TItem>;
var
  Item : TItem;
begin
  Result := TObjectList<TItem>.Create;
                                 
//  with ClientModule1.SQLQuery do
//  begin
//  close;
//  SQL.Text := 'SELECT * FROM ITEM';
//  Open;
//  First;
//
//  while not Eof do
//  begin
//    Item := TItem.Create;
//    Item.I_ID := FieldByName('I_ID').AsString;
//    Item.I_NAME := FieldByName('I_NAME').AsString;
//    Item.I_COST := FieldByName('I_COST').AsInteger;
//    Item.I_DATE := TSQLTimeStampField(ParamByName('I_DATE').AsSQLTimeStamp);
//    Item.I_IMAGE := ParamByName('I_IMAGE').AsBlob;
//
//    Result.Add(ITem);
//    Next;
//    end;
//  end;
end;

end.
