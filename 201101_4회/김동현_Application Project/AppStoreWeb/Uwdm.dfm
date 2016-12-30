object WebModule1: TWebModule1
  OldCreateOrder = False
  Actions = <
    item
      Default = True
      Name = 'WebActionItem1'
      PathInfo = '/MainPageProducer'
      Producer = MainPageProducer
    end
    item
      Name = 'WebActionItem2'
      PathInfo = '/Board'
      Producer = BoardDataSetTableProducer
    end
    item
      Name = 'WebActionItem3'
      PathInfo = '/Item'
      Producer = ItemQueryTableProducer
      OnAction = WebModule1WebActionItem3Action
    end
    item
      Name = 'WebActionItem4'
      PathInfo = '/ItemList'
      Producer = ItemDataSetTableProducer
    end
    item
      Name = 'WebActionItem5'
      PathInfo = '/Intro'
      Producer = IntroPageProducer
    end>
  Height = 630
  Width = 856
  object SQLConnection1: TSQLConnection
    ConnectionName = 'APPSTOREDB'
    DriverName = 'INTERBASE'
    GetDriverFunc = 'getSQLDriverINTERBASE'
    LibraryName = 'dbxint.dll'
    LoginPrompt = False
    Params.Strings = (
      'drivername=INTERBASE'
      'blobsize=-1'
      'commitretain=False'
      'Database=C:\Embarcadero\AppStoreDB\AppStoreDB.IB'
      'localecode=0000'
      'password=masterkey'
      'rolename=RoleName'
      'sqldialect=3'
      'isolationlevel=ReadCommitted'
      'user_name=sysdba'
      'waitonlocks=True'
      'trim char=False')
    VendorLib = 'GDS32.DLL'
    Connected = True
    Left = 48
    Top = 24
  end
  object MainPageProducer: TPageProducer
    HTMLDoc.Strings = (
      '<html>'
      '<head>'
      '<title> '#50545' '#49828#53664#50612'</title>'
      
        '<meta http-equiv="Content-Type" content="text/html; chaset=edu-k' +
        'r">'
      '</head>'
      '<body>'
      '<center><p><h1>'#9733#9733#9733' '#50545' '#49828#53664#50612' '#9733#9733#9733'</h1></p>'
      '<p>'
      '<p>'
      '<h3>'
      '<ul>'
      
        '   <li><a href="http://localhost:81/AppStoreWeb/Debug/Win32/PApp' +
        'StoreWeb.exe/Intro"> '#50545#49828#53664#50612' '#49548#44060'<p></a>'
      
        '   <li><a href="http://localhost:81/AppStoreWeb/Debug/Win32/PApp' +
        'StoreWeb.exe/Board"> '#44172#49884#54032'<p></a>'
      
        '   <li><a href="http://localhost:81/AppStoreWeb/Debug/Win32/PApp' +
        'StoreWeb.exe/ItemList"> '#49345#54408' '#51204#52404' '#51221#48372'<p></a>'
      '</UL>'
      '<h3>'
      '</center>'
      '</body>'
      '</html>')
    Left = 200
    Top = 24
  end
  object Board: TSQLTable
    Active = True
    MaxBlobSize = -1
    SQLConnection = SQLConnection1
    TableName = 'Board'
    Left = 120
    Top = 112
  end
  object Client: TSQLTable
    IndexName = 'PK1'
    MaxBlobSize = -1
    SQLConnection = SQLConnection1
    TableName = 'Client'
    Left = 120
    Top = 304
  end
  object BoardDataSetTableProducer: TDataSetTableProducer
    Columns = <
      item
        FieldName = 'Board_Number'
        Title.BgColor = 'Yellow'
        Title.Caption = #48264#54840
      end
      item
        FieldName = 'Board_Date'
        Title.BgColor = 'Yellow'
        Title.Caption = #46321#47197#51068
      end
      item
        FieldName = 'Board_ItemNote'
        Title.BgColor = 'Yellow'
        Title.Caption = #51060#47492' / '#49444#47749
      end
      item
        FieldName = 'Board_Downqty'
        Title.BgColor = 'Yellow'
        Title.Caption = #45796#50868#47196#46300' '#49688
      end
      item
        FieldName = 'Item_Code'
        Title.BgColor = 'Yellow'
        Title.Caption = #45796#50868#47196#46300
      end>
    DataSet = Board
    TableAttributes.Border = 1
    OnFormatCell = BoardDataSetTableProducerFormatCell
    Left = 280
    Top = 112
  end
  object ClientDataSetPageProducer: TDataSetPageProducer
    DataSet = Client
    Left = 280
    Top = 304
  end
  object ItemQueryTableProducer: TSQLQueryTableProducer
    Columns = <
      item
        FieldName = 'Item_Code'
        Title.BgColor = 'Yellow'
        Title.Caption = #49345#54408' '#53076#46300
      end
      item
        FieldName = 'Item_Name'
        Title.BgColor = 'Yellow'
        Title.Caption = #49345#54408' '#51060#47492
      end
      item
        FieldName = 'Item_Group'
        Title.BgColor = 'Yellow'
        Title.Caption = #49345#54408' '#44536#47353
      end
      item
        FieldName = 'Item_Price'
        Title.BgColor = 'Yellow'
        Title.Caption = #49345#54408' '#44032#44201
      end
      item
        FieldName = 'Item_Size'
        Title.BgColor = 'Yellow'
        Title.Caption = #49345#54408' '#53356#44592
      end
      item
        FieldName = 'Item_Maker'
        Title.BgColor = 'Yellow'
        Title.Caption = #51228#51089#49324
      end
      item
        FieldName = 'Item_MakeDate'
        Title.BgColor = 'Yellow'
        Title.Caption = #51228#51089#51068
      end>
    Query = ItemQuery
    TableAttributes.Border = 2
    Left = 280
    Top = 192
  end
  object ItemQuery: TSQLQuery
    Active = True
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftString
        Name = 'icode'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Select * From "Item"'
      'Where "Item_Code" = :icode')
    SQLConnection = SQLConnection1
    Left = 120
    Top = 192
  end
  object IntroPageProducer: TPageProducer
    HTMLDoc.Strings = (
      '<html>'
      '<head>'
      '<title> '#50545' '#49828#53664#50612'</title>'
      
        '<meta http-equiv="content-type" content="text/html; charset=edu-' +
        'kr">'
      '</head>'
      '<body>'
      ' <table border="0" cellspacing="0" cellpadding="0" align="left">'
      '   <tr>'
      '     <td valign="left height="16">'
      
        '        <a href="http://localhost:81/AppStoreWeb/Debug/Win32/PAp' +
        'pStoreWeb.exe"><h1>'#9733#9733#9733' '#50545' '#49828#53664#50612' '#9733#9733#9733'</h1><br><br>'
      '     </td>'
      '   </tr>'
      '   <tr>'
      '   <td gbcolor = "#cccccc" valign="top" height="16">'
      '     1. '#50545' '#49828#53664#50612#46976'?</span><br>'
      
        '     '#50545' '#49828#53664#50612' (App Store)'#45716' '#50528#54540#51060' '#50868#50689#54616#44256' '#51080#45716' '#50500#51060#54256', '#50500#51060#54056#46300' '#48143' '#50500#51060#54047' '#53552#52824#50857' '#51025#50857' '#49548#54532#53944#50920#50612 +
        ' '#45796#50868#47196#46300' '#49436#48708#49828#51060#45796'.'
      '     '#50500#51060#54256' 3G'#44032' '#48156#54364#46112' '#51592#51020#51064' 2008'#45380' 7'#50900' 10'#51068#48512#53552' '#50500#51060#53920#51592#51032' '#50629#45936#51060#53944' '#54805#53468#47196' '#49436#48708#49828#44032' '#49884#51089#46104#50632#45796'.'
      '     <br>'
      
        '     "'#50545' '#49828#53664#50612'"'#46976' '#51060#47492#51008' "'#50528#54540#51032' '#51025#50857' '#49548#54532#53944#50920#50612' '#44032#44172' (Apple Application Software S' +
        'tore)"'#46976' '#51032#48120#47484' '#45812#44256' '#51080#45796'.'
      '      <br><br>'
      '     2. '#54856#54168#51060#51648' '#49548#44060'</span><br>'
      '     '#45944#54028#51060#47484' '#49324#50857#54644#49436' '#50545' '#54028#51068#51012' '#50629#45936#51060#53944' '#49884#53412#44256' '#45796#50868' '#48155#51012' '#49688' '#51080#46020#47197' '#44396#49457#54620' '#54856#54168#51060#51648#51060#45796'.'
      '     C/S '#44592#48152#51004#47196' '#51228#51089' '#46104#50632#51004#47728', '#45936#51060#53552#48288#51060#49828#45716' InterBase'#47484' '#49324#50857#54616#44256' '#51080#45796'.<br>'
      '  </td>'
      '  </tr>'
      '  </table>'
      '</body>'
      '</html>')
    Left = 344
    Top = 24
  end
  object Item: TSQLTable
    Active = True
    MaxBlobSize = 1
    SQLConnection = SQLConnection1
    TableName = 'Item'
    Left = 464
    Top = 112
  end
  object ItemDataSetTableProducer: TDataSetTableProducer
    Columns = <
      item
        FieldName = 'Item_Name'
        Title.BgColor = 'Yellow'
        Title.Caption = #51060#47492
      end
      item
        FieldName = 'Item_Group'
        Title.BgColor = 'Yellow'
        Title.Caption = #44536#47353
      end
      item
        FieldName = 'Item_Price'
        Title.BgColor = 'Yellow'
        Title.Caption = #44032#44201
      end
      item
        FieldName = 'Item_Size'
        Title.BgColor = 'Yellow'
        Title.Caption = #53356#44592
      end
      item
        FieldName = 'Item_Code'
        Title.BgColor = 'Yellow'
        Title.Caption = #53076#46300
      end
      item
        FieldName = 'Item_Maker'
        Title.BgColor = 'Yellow'
        Title.Caption = #51228#51089#49324
      end
      item
        FieldName = 'Item_MakeDate'
        Title.BgColor = 'Yellow'
        Title.Caption = #51228#51089#51068
      end>
    DataSet = Item
    TableAttributes.Border = 1
    OnFormatCell = BoardDataSetTableProducerFormatCell
    Left = 624
    Top = 112
  end
end
