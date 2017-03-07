object ServerMethods1: TServerMethods1
  OldCreateOrder = False
  Height = 469
  Width = 550
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=C:\Users\ltj\Desktop\Dodam\DB\DODAM_DB.IB'
      'User_Name=sysdba'
      'Password=masterkey'
      'CharacterSet=utf8'
      'DriverID=IB')
    LoginPrompt = False
    Left = 32
    Top = 16
  end
  object FDPhysIBDriverLink1: TFDPhysIBDriverLink
    Left = 104
    Top = 16
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 256
    Top = 24
  end
  object TmpOrderqry: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from TmpOrderlist'
      'where tablenum =:tableno')
    Left = 152
    Top = 152
    ParamData = <
      item
        Name = 'TABLENO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object TmpOrderqryKEYNUM: TIntegerField
      FieldName = 'KEYNUM'
      Origin = 'KEYNUM'
    end
    object TmpOrderqryTABLENUM: TIntegerField
      FieldName = 'TABLENUM'
      Origin = 'TABLENUM'
    end
    object TmpOrderqryMENU: TWideStringField
      FieldName = 'MENU'
      Origin = 'MENU'
      FixedChar = True
      Size = 80
    end
    object TmpOrderqryPEOPLE: TIntegerField
      FieldName = 'PEOPLE'
      Origin = 'PEOPLE'
    end
    object TmpOrderqryTOTALPRICE: TIntegerField
      FieldName = 'TOTALPRICE'
      Origin = 'TOTALPRICE'
    end
  end
  object SumPeopleqry: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from Tmporderlist'
      'where tablenum =:tableno and menu =:menuname')
    Left = 104
    Top = 384
    ParamData = <
      item
        Name = 'TABLENO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'MENUNAME'
        DataType = ftFixedWideChar
        ParamType = ptInput
        Size = 80
      end>
    object SumPeopleqryKEYNUM: TIntegerField
      FieldName = 'KEYNUM'
      Origin = 'KEYNUM'
    end
    object SumPeopleqryTABLENUM: TIntegerField
      FieldName = 'TABLENUM'
      Origin = 'TABLENUM'
    end
    object SumPeopleqryMENU: TWideStringField
      FieldName = 'MENU'
      Origin = 'MENU'
      FixedChar = True
      Size = 80
    end
    object SumPeopleqryPEOPLE: TIntegerField
      FieldName = 'PEOPLE'
      Origin = 'PEOPLE'
    end
    object SumPeopleqryTOTALPRICE: TIntegerField
      FieldName = 'TOTALPRICE'
      Origin = 'TOTALPRICE'
    end
  end
  object Totalqry: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select Tablenum, sum(TotalPrice) as totalprice from TmpOrderlist'
      'where tablenum =:tableno'
      'group by tablenum')
    Left = 216
    Top = 152
    ParamData = <
      item
        Name = 'TABLENO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object KeyUpdateqry: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'update tmporderlist'
      'set Keynum =:keyno'
      'where tablenum =:tableno')
    Left = 103
    Top = 321
    ParamData = <
      item
        Name = 'KEYNO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'TABLENO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object KeyUpdateqryFOODSEQ: TStringField
      FieldName = 'FOODSEQ'
      Origin = 'FOODSEQ'
      FixedChar = True
    end
    object KeyUpdateqryKIND: TWideStringField
      FieldName = 'KIND'
      Origin = 'KIND'
      Size = 40
    end
    object KeyUpdateqryMENU: TWideStringField
      FieldName = 'MENU'
      Origin = 'MENU'
      Size = 80
    end
    object KeyUpdateqryPRICE: TIntegerField
      FieldName = 'PRICE'
      Origin = 'PRICE'
    end
  end
  object dspTmpOrderqry: TDataSetProvider
    DataSet = TmpOrderqry
    Left = 144
    Top = 80
  end
  object dspTotal: TDataSetProvider
    DataSet = Totalqry
    Left = 208
    Top = 80
  end
  object Kindqry: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from Foodtable'
      'where Kind =:kind')
    Left = 88
    Top = 160
    ParamData = <
      item
        Name = 'KIND'
        DataType = ftWideString
        ParamType = ptInput
        Size = 40
        Value = Null
      end>
    object KindqryKIND: TWideStringField
      DisplayLabel = #51333#47448
      FieldName = 'KIND'
      Origin = 'KIND'
      Size = 40
    end
    object KindqryMENU: TWideStringField
      DisplayLabel = #51020#49885
      FieldName = 'MENU'
      Origin = 'MENU'
      Size = 80
    end
    object KindqryPRICE: TIntegerField
      DisplayLabel = #44032#44201
      FieldName = 'PRICE'
      Origin = 'PRICE'
    end
  end
  object dspKind: TDataSetProvider
    DataSet = Kindqry
    Left = 88
    Top = 80
  end
  object Kitchenqry: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from Kitchen')
    Left = 16
    Top = 152
    object KitchenqryKITCHEN_SEQ: TIntegerField
      FieldName = 'KITCHEN_SEQ'
      Origin = 'KITCHEN_SEQ'
    end
    object KitchenqryKIND: TWideStringField
      FieldName = 'KIND'
      Origin = 'KIND'
      Size = 120
    end
    object KitchenqryMENU: TWideStringField
      FieldName = 'MENU'
      Origin = 'MENU'
      Size = 200
    end
    object KitchenqryPEOPLE: TIntegerField
      FieldName = 'PEOPLE'
      Origin = 'PEOPLE'
    end
  end
  object dspKitchen: TDataSetProvider
    DataSet = Kitchenqry
    Left = 16
    Top = 80
  end
  object Deleteqry: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'delete from Kitchen'
      'where Kitchen_seq =:seq')
    Left = 24
    Top = 383
    ParamData = <
      item
        Name = 'SEQ'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object InsertDetailqry: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'insert into orderdetail'
      'select * from tmporderlist'
      'where tablenum =:tableno')
    Left = 177
    Top = 322
    ParamData = <
      item
        Name = 'TABLENO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object DeleteDataqry: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'delete from tmporderlist'
      'where tablenum =:tableno'
      ' ')
    Left = 177
    Top = 385
    ParamData = <
      item
        Name = 'TABLENO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object OrderDbqry: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from Orderdb'
      '')
    Left = 376
    Top = 144
  end
  object OrderDetailqry: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from OrderDetail'
      'where keynum =:keyno;')
    Left = 464
    Top = 144
    ParamData = <
      item
        Name = 'KEYNO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object dspOrderDb: TDataSetProvider
    DataSet = OrderDbqry
    Left = 368
    Top = 88
  end
  object dspOrderDetail: TDataSetProvider
    DataSet = OrderDetailqry
    Left = 464
    Top = 80
  end
  object KeyChangeqry: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'update keyupdate'
      'set Keynum =:keyno')
    Left = 24
    Top = 320
    ParamData = <
      item
        Name = 'KEYNO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object KeyInputqry: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from KeyUpdate')
    Left = 272
    Top = 152
  end
  object dspInput: TDataSetProvider
    DataSet = KeyInputqry
    Left = 272
    Top = 80
  end
end
