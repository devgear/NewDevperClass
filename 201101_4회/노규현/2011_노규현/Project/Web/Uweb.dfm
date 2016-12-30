object WebModule6: TWebModule6
  OldCreateOrder = False
  Actions = <
    item
      Default = True
      Name = 'WebActionItem1'
      PathInfo = '/MainProducer'
      Producer = MainProducer
    end
    item
      Name = 'WebActionItem2'
      PathInfo = '/search'
    end
    item
      Name = 'WebActionItem3'
      PathInfo = '/Rev'
      Producer = RevProducer
      OnAction = WebModule6WebActionItem3Action
    end>
  Height = 396
  Width = 521
  object MainProducer: TPageProducer
    HTMLDoc.Strings = (
      '<html>'
      '<head>'
      '<title> '#49093#49093#47116#53944#52852'</title>'
      
        '<meta http-equiv="Content-Type" content="text/html; chaset=edu-k' +
        'r">'
      '</head>'
      '<body>'
      '<center><img src ="..lec/pic/logo.jpg" height=53 width=397>'
      '<p>'
      '<p>'
      '<h3>'
      '<ul>'
      
        '   <li><a href="http://localhost:80/Web/pweb.exe/search"> '#52264#47049' '#51312#54924' ' +
        '<p></a>'
      
        '   <li><a href="http://localhost:80/Web/pweb.exe/rev">'#50696#50557' '#54616#44592' <p><' +
        '/a>'
      ''
      '</UL>'
      '<h3>'
      '</center>'
      '</body>'
      '</html>'
      ''
      ''
      '')
    Left = 104
    Top = 32
  end
  object SQLConnection1: TSQLConnection
    ConnectionName = 'RENTDB'
    DriverName = 'INTERBASE'
    GetDriverFunc = 'getSQLDriverINTERBASE'
    LibraryName = 'dbxint.dll'
    LoginPrompt = False
    Params.Strings = (
      'drivername=INTERBASE'
      'blobsize=-1'
      'commitretain=False'
      'database=C:\RENTALDB.IB'
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
    Left = 24
    Top = 32
  end
  object Query_search: TSQLQuery
    Active = True
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'SELECT "car"."name","car"."price","car"."type","branch"."name","' +
        'car"."car_id","branch"."branch_id"'
      'FROM "car","branch"'
      'WHERE "car"."branch_id" = "branch"."branch_id"'
      'AND "car"."STATUS" = '#39'Y'#39)
    SQLConnection = SQLConnection1
    Left = 88
    Top = 152
    object Query_searchname: TStringField
      FieldName = 'name'
      Size = 12
    end
    object Query_searchprice: TStringField
      FieldName = 'price'
      Size = 18
    end
    object Query_searchtype: TStringField
      FieldName = 'type'
      Size = 10
    end
    object Query_searchname_1: TStringField
      FieldName = 'name_1'
    end
    object Query_searchcar_id: TStringField
      FieldName = 'car_id'
      Required = True
      Size = 10
    end
    object Query_searchbranch_id: TStringField
      FieldName = 'branch_id'
      Required = True
      Size = 10
    end
  end
  object RevProducer: TPageProducer
    HTMLDoc.Strings = (
      '<html>'
      '<head>'
      '<title></title>'
      
        '<meta http-equiv="Content-Type" content="text/html; dataset=edu-' +
        'kr">'
      ''
      '</head>'
      '<body>'
      
        '  <table width ="300" border="0" cellspacing="0" cellpadding="0"' +
        ' align="left">'
      '    <tr>'
      '      <td valign="left" height="16">'
      '          <a href="http://localhost:81/lec/pweb.exe">'
      
        '             <img src="../PIC/logo.jpg" width="60" height="60" b' +
        'order="0"></a><br><br><br>'
      '      </td>'
      '    </tr>'
      '    <tr>'
      '      <td>'
      '        <h5>'
      '        '#52264#47049#51012' '#50696#50557' '#54616#49901#49884#50724'.<p>'
      '                <hr align=left width=50% size=3>'
      '        </h5>'
      '      </td>'
      '    </tr>'
      '    <tr>'
      '      <td>'
      
        '      <form name="myform" method="post" action="./rev?option=wri' +
        'te">'
      '      <table width=570 border=0 cellspacing=2 cellpadding=3>'
      '      <#selectcode>'
      '      <tr>'
      
        #9'  <th width="150" bgcolor="#990000" align="right"><font size =2' +
        '>'#51060#47492'</font></th>'
      
        #9'  <td width="500"><input type="text" size="10" maxlength="10" n' +
        'ame="name"></td>'
      '      </tr>'
      '      <tr>'
      
        #9'  <th width="150" bgcolor="#990000" align="right"><font size=2>' +
        #47116#53944' '#45216#51676'</font></th>'
      
        #9'  <td width="500"><input type="text" size="13" maxlength="13" n' +
        'ame="rental_date"></td>'
      '      </tr>'
      '      <tr>'
      
        #9'  <th width="150" bgcolor="#990000" align="right"><font size=2>' +
        #51204#54868#48264#54840'</font></th>'
      
        #9'  <td width= 500><input type="text" size="15" maxlength="15" na' +
        'me="tel"></td>'
      '      </tr>'
      '        <tr>'
      '<tr>'
      '<td><br></td>'
      '<td><input type="button" value="'#46321#47197'" onClick="chkfield()">'
      '    <input type="reset" name="'#51116#51089#49457'" value="'#51116#51089#49457'"></td>'
      '</tr>'
      '</table>'
      '</td>'
      '</tr>'
      '</table>'
      '</form>'
      '  </body>'
      '</html>')
    Left = 176
    Top = 32
  end
  object search_producer: TSQLQueryTableProducer
    Columns = <
      item
        FieldName = 'name'
        Title.Caption = #52264#51060#47492
      end
      item
        FieldName = 'price'
        Title.Caption = #44032#44201
      end
      item
        FieldName = 'type'
        Title.Caption = #52264#51333
      end
      item
        FieldName = 'name_1'
        Title.Caption = #51648#51216#51060#47492
      end
      item
        FieldName = 'branch_id'
        Title.Caption = #51648#51216#48264#54840
      end>
    Query = Query_search
    TableAttributes.BgColor = 'White'
    TableAttributes.Border = 1
    TableAttributes.CellSpacing = 1
    TableAttributes.CellPadding = 1
    Left = 88
    Top = 208
  end
  object FailedProducer: TPageProducer
    HTMLDoc.Strings = (
      '<html>'
      '<head>'
      '<title> '#49093#49093#47116#53944#52852' </title>'
      
        '<meta http-equiv="content-type" content="text/html; charset=edu-' +
        'kr">'
      '</head>'
      '<body>'
      
        ' <table  width = "300" border="0" cellspacing="0" cellpadding="0' +
        '" align="left">'
      '    <tr>'
      '      <td valign="left" height="16">'
      '          <a href="http://localhost:81/lec/pweb.exe">'
      
        '             <img src="../PIC/logo.jpg" width="60" height="60" b' +
        'order="0"></a><br><br><br>'
      '      </td>'
      '    </tr>'
      '   <tr>'
      '     <td>'
      '     <H5>'
      '      '#50696#50557' '#49892#54056'   <br>'
      '      '#45796#49884' '#50696#50557#54616#50668' '#51452#49901#49884#50724
      '     <hr align=left width=50% size=3>'
      '     </h5>'
      '     </td>'
      '   </tr>'
      '</body>'
      '</html>')
    Left = 296
    Top = 208
  end
  object CompleteProducer: TPageProducer
    HTMLDoc.Strings = (
      '<html>'
      '<head>'
      '<title> '#49093#49093#47116#53944#52852' </title>'
      
        '<meta http-equiv="content-type" content="text/html; charset=edu-' +
        'kr">'
      '</head>'
      '<body>'
      
        ' <table  width = "300" border="0" cellspacing="0" cellpadding="0' +
        '" align="left">'
      '    <tr>'
      '      <td valign="left" height="16">'
      '          <a href="http://localhost:81/lec/pweb.exe">'
      
        '             <img src="../PIC/logo.jpg" width="60" height="60" b' +
        'order="0"></a><br><br><br>'
      '      </td>'
      '    </tr>'
      '   <tr>'
      '     <td>'
      '     <H5>'
      '     '#50696#50557' '#50756#47308#46104#50632#49845#45768#45796'!<br>'
      '     3'#52488#54980#50640' '#47700#51064#54168#51060#51648#47196' '#51060#46041#54633#45768#45796'.'
      '     <hr align=left width=50% size=3>'
      '     </h5>'
      '     </td>'
      '   </tr>'
      '</body>'
      '</html>'
      '')
    Left = 216
    Top = 208
  end
  object revtemp: TSimpleDataSet
    Active = True
    Aggregates = <>
    Connection = SQLConnection1
    DataSet.CommandText = '"rev"'
    DataSet.CommandType = ctTable
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 296
    Top = 96
    object revtemprev_num: TStringField
      FieldName = 'rev_num'
      Required = True
      Size = 10
    end
    object revtempc_id: TStringField
      FieldName = 'c_id'
      Size = 10
    end
    object revtempCAR_ID: TStringField
      FieldName = 'CAR_ID'
      Size = 15
    end
    object revtemprev_date: TDateField
      FieldName = 'rev_date'
    end
    object revtempuse_date: TIntegerField
      FieldName = 'use_date'
    end
    object revtempback_date: TDateField
      FieldName = 'back_date'
    end
    object revtempprice: TIntegerField
      FieldName = 'price'
    end
    object revtempbranch_id: TStringField
      FieldName = 'branch_id'
      Size = 10
    end
  end
end
