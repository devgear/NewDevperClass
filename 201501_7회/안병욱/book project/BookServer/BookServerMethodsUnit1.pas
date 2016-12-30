unit BookServerMethodsUnit1;

interface

uses System.SysUtils, System.Classes, System.Json,
    Datasnap.DSServer, Datasnap.DSAuth, DataSnap.DSProviderDataModuleAdapter,
  Data.DBXInterBase, Data.FMTBcd, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.IB,
  FireDAC.Phys.IBDef, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.VCLUI.Wait, FireDAC.Comp.UI, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Datasnap.Provider, Data.DB, Data.SqlExpr;

type
  TServerMethods1 = class(TDSServerModule)
    BookProvider: TDataSetProvider;
    BookTable: TSQLTable;
    RentalTable: TSQLTable;
    RentalProvider: TDataSetProvider;
    MemberTable: TSQLTable;
    MemberProvider: TDataSetProvider;
    RentalBookTable: TSQLTable;
    RentalBookProvider: TDataSetProvider;
    BookingTable: TSQLTable;
    BookingProvider: TDataSetProvider;
    SQLConnection1: TSQLConnection;
    memberjoinQuery: TSQLQuery;
    memberjoinProvider: TDataSetProvider;
    RentalBookQuery: TSQLQuery;
    JoinQuery: TSQLQuery;
    DelQuery: TSQLQuery;
  private
    { Private declarations }
  public
    { Public declarations }
    function EchoString(Value: string): string;
    function ReverseString(Value: string): string;
    function Insert_BookRental(RentalNum,Period,BookNum:string) : integer;
    function Insert_Join(ID,Jumin,Name,Age,Phone,Address:string) : integer;
    function Delete_Rental(Value,BookNum:string) : integer;
  end;

implementation


{$R *.dfm}


uses System.StrUtils;
var
  td:TTransactiondesc;

function TServerMethods1.Delete_Rental(Value, BookNum: string): integer;
begin
  SQLConnection1.StartTransaction(td);
  try
    try
      DelQuery.Close;
      DelQuery.SQL.Clear;
      DelQuery.SQL.Add('delete from rentalbook where RentalbookNum = :pRentalbookNum');
      DelQuery.ParamByName('pRentalbookNum').AsString := Value;
      DelQuery.ExecSQL;
    except
      Result := 1;
      raise;
    end;
    try
      DelQuery.Close;
      DelQuery.SQL.Clear;
      DelQuery.SQL.Add('update book set total = total + 1,Rental= Rental - 1');
      DelQuery.SQL.Add('where BookNum =:pbookNum');
      DelQuery.ParamByName('pBookNum').AsString := BookNum;
      DelQuery.ExecSQL;
    except
      Result := 2;
      raise;
    end;
    SQLConnection1.Commit(td);
    Result := 0;
  except
    SQLConnection1.Rollback(td);
  end;
end;

function TServerMethods1.EchoString(Value: string): string;
begin
  Result := Value;
end;

function TServerMethods1.Insert_BookRental(RentalNum, Period, BookNum: string): integer;
begin
  SQLConnection1.StartTransaction(td);
  try
    try
      RentalBookQuery.Close;
      RentalBookQuery.SQL.Clear;
      RentalBookQuery.SQL.Add('insert into rentalbook(RentalbookNum,RentalNum,Period,BookNum)');
      RentalBookQuery.SQL.Add('values(0,:pRentalNum,:pPeriod,:pBookNum)');
      RentalBookQuery.ParamByName('pPeriod').AsString := Period;
      RentalBookQuery.ParamByName('pBookNum').AsString := BookNum;
      RentalBookQuery.ParamByName('pRentalNum').AsString := RentalNum;
      RentalBookQuery.ExecSQL;
    except
      Result := 1;
      raise;
    end;
    try
      RentalBookQuery.Close;
      RentalBookQuery.SQL.Clear;
      RentalBookQuery.SQL.Add('update book set total = total - 1,Rental= Rental + 1');
      RentalBookQuery.SQL.Add('where BookNum =:pbookNum');
      RentalBookQuery.ParamByName('pBookNum').AsString := BookNum;
      RentalBookQuery.ExecSQL;
    except
      Result := 2;
      raise;
    end;
    SQLConnection1.Commit(td);
    Result := 0;
  except
    SQLConnection1.Rollback(td);
  end;
end;

function TServerMethods1.Insert_Join(ID, Jumin, Name, Age, Phone,
  Address: string): integer;
begin
      JoinQuery.Close;
      JoinQuery.SQL.Clear;
      JoinQuery.SQL.Add('insert into Member(ID,Jumin,Name,Age,Phone,Address)');
      JoinQuery.SQL.Add('values(:pID,:pJumin,:pName,:pAge,:pPhone,:pAddress)');
      JoinQuery.ParamByName('pID').AsString := ID;
      JoinQuery.ParamByName('pJumin').AsString := Jumin;
      JoinQuery.ParamByName('pName').AsString := Name;
      JoinQuery.ParamByName('pAge').AsString := Age;
      JoinQuery.ParamByName('pPhone').AsString := Phone;
      JoinQuery.ParamByName('pAddress').AsString := Address;
      JoinQuery.ExecSQL;

end;

function TServerMethods1.ReverseString(Value: string): string;
begin
  Result := System.StrUtils.ReverseString(Value);
end;
initialization
begin
  td.TransactionID := 1;
  td.IsolationLevel := xilReadCommitted;

end;

end.
