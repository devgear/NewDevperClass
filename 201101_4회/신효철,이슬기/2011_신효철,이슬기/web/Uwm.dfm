object WebModule1: TWebModule1
  OldCreateOrder = False
  Actions = <
    item
      Default = True
      Name = 'IndexAction'
      PathInfo = '/index'
      Producer = IndexProducer
    end
    item
      Name = 'LocationAction'
      PathInfo = '/Location'
      ProducerContent = LocationProducer
    end
    item
      Name = 'ReservationAction'
      PathInfo = '/Reservation'
      ProducerContent = ReservationProducer
    end
    item
      Name = 'WebActionItem1'
      PathInfo = '/menulist'
    end
    item
      Name = 'MenuFoodActionItem'
      PathInfo = '/menu'
      ProducerContent = MenuProducer
    end
    item
      Name = 'AccepterAction'
      PathInfo = '/reg'
      OnAction = WebModule1AccepterActionAction
    end>
  Height = 344
  Width = 415
  object IndexProducer: TPageProducer
    HTMLDoc.Strings = (
      '<html>'
      '<head>'
      '<title>'#49884#51089'</title>'
      '<meta name="GENERATOR" content="Namo WebEditor v6.0">'
      '<meta name="author" content="shin">'
      '<meta name="namo-theme" content="theme\Abstract\Restaurant">'
      
        '<meta http-equiv="content-type" content="text/html; charset=euc-' +
        'kr">'
      '<style>'
      '<!--'
      'body { font-family:'#44404#47548'; font-size:9pt; color:rgb(49,0,0); }'
      'h1 { font-family:'#48148#53461'; font-size:14pt; color:gray; }'
      'h2 { font-family:'#48148#53461'; font-size:14pt; color:rgb(230,128,15); }'
      'p.namo-list { color:maroon; }'
      'p.namo-sublist { color:rgb(221,116,0); }'
      
        'table.namo-table { font-size:9pt; color:rgb(49,0,0); border-colo' +
        'r:rgb(224,148,91); }'
      
        'table.namo-table td { font-size:9pt; color:rgb(49,0,0); border-c' +
        'olor:rgb(255,203,143); }'
      
        'table.namo-table th { font-size:9pt; color:rgb(49,0,0); backgrou' +
        'nd-color:rgb(255,203,143); }'
      'span.namo-link, a:link { color:red; }'
      'span.namo-visited, a:visited { color:gray; }'
      'span.namo-active, a:active { color:rgb(254,139,90); }'
      'li.namo-list1 { list-style-image:url('#39'nav/bullet1.gif'#39'); }'
      'li.namo-list2 { list-style-image:url('#39'nav/bullet2.gif'#39'); }'
      '-->'
      '</style>'
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      '<script language="JavaScript">'
      '<!--'
      'function na_restore_img_src(name, nsdoc)'
      '{'
      
        '  var img = eval((navigator.appName.indexOf('#39'Netscape'#39', 0) != -1' +
        ') ? nsdoc+'#39'.'#39'+name : '#39'document.all.'#39'+name);'
      '  if (name == '#39#39')'
      '    return;'
      '  if (img && img.altsrc) {'
      '    img.src    = img.altsrc;'
      '    img.altsrc = null;'
      '  } '
      '}'
      ''
      'function na_preload_img()'
      '{ '
      '  var img_list = na_preload_img.arguments;'
      '  if (document.preloadlist == null) '
      '    document.preloadlist = new Array();'
      '  var top = document.preloadlist.length;'
      '  for (var i=0; i < img_list.length-1; i++) {'
      '    document.preloadlist[top+i] = new Image;'
      '    document.preloadlist[top+i].src = img_list[i+1];'
      '  } '
      '}'
      ''
      'function na_change_img_src(name, nsdoc, rpath, preload)'
      '{ '
      
        '  var img = eval((navigator.appName.indexOf('#39'Netscape'#39', 0) != -1' +
        ') ? nsdoc+'#39'.'#39'+name : '#39'document.all.'#39'+name);'
      '  if (name == '#39#39')'
      '    return;'
      '  if (img) {'
      '    img.altsrc = img.src;'
      '    img.src    = rpath;'
      '  } '
      '}'
      ''
      '// -->'
      '</script>'
      ''
      
        '</head><body background="images/nth_theme_abstract_restaurant_bg' +
        '.gif" OnLoad="na_preload_img(false, '#39'nav/nav_6_menu_thh.gif'#39', '#39'n' +
        'av/nav_6_location_tvr.gif'#39', '#39'nav/nav_6_reservation_tvr.gif'#39');">'
      ''
      '<table cellpadding="0" cellspacing="0" width="750">'
      '    <tr>'
      '        <td width="63">'
      '            <p align="center">&nbsp;</p>'
      '        </td>'
      '        <td width="687">'
      '            <!--NAMO_NAVBAR_START B H C       -1 0 2 4 3 5 -->'
      '<div align="center">'
      '<img src="nav/nav_1_index_bhb.gif" name="nav_index_BH0" '
      
        'border="0" class="namo-banner" alt="'#44260#46300#47112#47564#46300#47112'" align="texttop"></di' +
        'v>'
      '            <p><!--NAMO_NAVBAR_END-->'
      '</p>'
      '            <p>&nbsp;</p>'
      
        '            <p align="center"><img src="nav/nav_6_index_btn_home' +
        'r.gif" name="nav_rooms_TV3" '
      'border="0" class="namo-button1" alt="'#49884#51089'" align="texttop">'
      ''
      '<a href="http://localhost/bar/Debug/Win32/Pweb.exe/menu" '
      
        'onmouseover="na_change_img_src('#39'nav_location_TV1'#39', '#39'document'#39', '#39 +
        'nav/nav_6_menu_thh.gif'#39', true);"'
      'onmouseout="na_restore_img_src('#39'nav_location_TV1'#39', '#39'document'#39')">'
      '<img src="nav/nav_6_menu_thr.gif" name="nav_rooms_TV1" '
      
        'border="0" class="namo-hibutton1" alt="'#47700#45684' '#49548#44060'" align="texttop"></' +
        'a>'
      ''
      '<a href="http://localhost/bar/Debug/Win32/Pweb.exe/Location"  '
      
        'onmouseover="na_change_img_src('#39'nav_location_TV0'#39', '#39'document'#39', '#39 +
        'nav/nav_6_location_tvh.gif'#39', true);"'
      'onmouseout="na_restore_img_src('#39'nav_location_TV0'#39', '#39'document'#39')">'
      '<img src="nav/nav_6_location_tv.gif" name="nav_location_TV0" '
      'border="0" class="namo-button1" alt="'#50948#52824'" align="texttop"></a>'
      ''
      '<a href="http://localhost/bar/Debug/Win32/Pweb.exe/reservation"'
      
        'onmouseover="na_change_img_src('#39'nav_rooms_TV4'#39', '#39'document'#39', '#39'nav' +
        '/nav_6_reservation_tvr.gif'#39', true);"'
      'onmouseout="na_restore_img_src('#39'nav_rooms_TV4'#39', '#39'document'#39')">'
      '<img src="nav/nav_6_reservation_tv.gif" name="nav_rooms_TV4"'
      
        'border="0" class="namo-button1" alt="'#50696#50557' '#51221#48372'" align="texttop"></a>' +
        '</p>'
      '        </td>'
      '    </tr>'
      '    <tr>'
      '    <td></td><td>'
      
        '        <table align="center" width="80%" bordercolordark="#7070' +
        '70" bordercolorlight="silver" cellspacing="2" class="namo-table"' +
        '>'
      '    <tr>'
      
        '        <th class="namo-th" bgcolor="#D0FFFF"><p align="left" cl' +
        'ass="namo-sublist"><img src="nav/bullet1.gif" align="absmiddle" ' +
        'border="0" class="namo-list1" width="31" height="25">'
      '            '#51200#55148' '#54856#54168#51060#51648#47484' '#52286#50500#51452#49492#49436' '#44048#49324#54633#45768#45796'.</p>'
      '        </th>'
      '    </tr>'
      '    <tr>'
      '        <td>'
      '            <p><font size="2">'#54856#54168#51060#51648' '#50724#54536#54664#49845#45768#45796'.</font></p>'
      '            <p><font size="2"><a img=""></font></p>'
      '            <p>&nbsp;</p>'
      '        </td>'
      '    </tr>'
      '    </table>'
      '    </td>'
      '    </tr>'
      '    <tr>'
      '        <td width="63" valign="top">'
      '            <p>&nbsp;</p>'
      '            <p>&nbsp;</p>'
      '        </td>'
      '        <td width="687">'
      
        '        <p align="center"><img src="nav/'#49548#51452'.GIF" width="550" heig' +
        'ht="465" border="0"></p>'
      '        </td>'
      '    </tr>'
      '</table>'
      '</body>'
      '</html>'
      ''
      '')
    ScriptEngine = 'JScript'
    Left = 112
    Top = 8
  end
  object SQLConnection1: TSQLConnection
    ConnectionName = 'Rest'
    DriverName = 'INTERBASE'
    GetDriverFunc = 'getSQLDriverINTERBASE'
    KeepConnection = False
    LibraryName = 'dbxint.dll'
    LoginPrompt = False
    Params.Strings = (
      'drivername=INTERBASE'
      'blobsize=-1'
      'commitretain=False'
      'Database=C:\Project_bar\db\RESTAURANT.IB'
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
    Left = 32
    Top = 8
  end
  object MenuProducer: TPageProducer
    HTMLDoc.Strings = (
      '<html>'
      '<head>'
      '<title>'#44061#49892' '#50504#45236'</title>'
      '<meta name="GENERATOR" content="Namo WebEditor v6.0">'
      '<meta name="author" content="shin">'
      '<meta name="namo-theme" content="theme\Abstract\Restaurant">'
      
        '<meta http-equiv="content-type" content="text/html; charset=euc-' +
        'kr">'
      '<style>'
      '<!--'
      'body { font-family:'#44404#47548'; font-size:9pt; color:rgb(49,0,0); }'
      'h1 { font-family:'#48148#53461'; font-size:14pt; color:gray; }'
      'h2 { font-family:'#48148#53461'; font-size:14pt; color:rgb(230,128,15); }'
      'p.namo-list { color:maroon; }'
      'p.namo-sublist { color:rgb(221,116,0); }'
      
        'table.namo-table { font-size:9pt; color:rgb(49,0,0); border-colo' +
        'r:rgb(224,148,91); }'
      
        'table.namo-table td { font-size:9pt; color:rgb(49,0,0); border-c' +
        'olor:rgb(255,203,143); }'
      
        'table.namo-table th { font-size:9pt; color:rgb(49,0,0); backgrou' +
        'nd-color:rgb(255,203,143); }'
      'span.namo-link, a:link { color:red; }'
      'span.namo-visited, a:visited { color:gray; }'
      'span.namo-active, a:active { color:rgb(254,139,90); }'
      'li.namo-list1 { list-style-image:url('#39'nav/bullet1.gif'#39'); }'
      'li.namo-list2 { list-style-image:url('#39'nav/bullet2.gif'#39'); }'
      '-->'
      '</style>'
      ''
      ''
      ''
      ''
      ''
      ''
      '<script language="JavaScript">'
      '<!--'
      'function na_restore_img_src(name, nsdoc)'
      '{'
      
        '  var img = eval((navigator.appName.indexOf('#39'Netscape'#39', 0) != -1' +
        ') ? nsdoc+'#39'.'#39'+name : '#39'document.all.'#39'+name);'
      '  if (name == '#39#39')'
      '    return;'
      '  if (img && img.altsrc) {'
      '    img.src    = img.altsrc;'
      '    img.altsrc = null;'
      '  } '
      '}'
      ''
      'function na_preload_img()'
      '{ '
      '  var img_list = na_preload_img.arguments;'
      '  if (document.preloadlist == null) '
      '    document.preloadlist = new Array();'
      '  var top = document.preloadlist.length;'
      '  for (var i=0; i < img_list.length-1; i++) {'
      '    document.preloadlist[top+i] = new Image;'
      '    document.preloadlist[top+i].src = img_list[i+1];'
      '  } '
      '}'
      ''
      'function na_change_img_src(name, nsdoc, rpath, preload)'
      '{ '
      
        '  var img = eval((navigator.appName.indexOf('#39'Netscape'#39', 0) != -1' +
        ') ? nsdoc+'#39'.'#39'+name : '#39'document.all.'#39'+name);'
      '  if (name == '#39#39')'
      '    return;'
      '  if (img) {'
      '    img.altsrc = img.src;'
      '    img.src    = rpath;'
      '  } '
      '}'
      ''
      '// -->'
      '</script>'
      ''
      
        '</head><body background="images/nth_theme_abstract_restaurant_bg' +
        '.gif" OnLoad="na_preload_img(false, '#39'../nav/nav_6_index_btn_home' +
        'r.gif'#39', '#39'../nav/nav_6_location_tvr.gif'#39', '#39'../nav/nav_6_reservati' +
        'on_tvr.gif'#39');">'
      ''
      '<table cellpadding="0" cellspacing="0" width="856">'
      '    <tr>'
      '        <td width="64" height="176">'
      '            <p align="center">&nbsp;</p>'
      '        </td>'
      '        <td width="792" height="176">'
      '<!--NAMO_NAVBAR_START B H C       -1 0 2 4 3 5 -->'
      '<div align="center">'
      '<img src="../nav/nav_1_menu_bhb.gif" name="nav_rooms_BH0" '
      
        'border="0" class="namo-banner" alt="'#47700#45684' '#49548#44060'" align="texttop" width' +
        '="771" height="110">  '
      '            <p><!--NAMO_NAVBAR_END-->'
      '</p>'
      '            <p>&nbsp;</p>'
      '<a href="http://localhost/bar/Debug/Win32/Pweb.exe"  '
      
        'onmouseover="na_change_img_src('#39'nav_rooms_TV0'#39', '#39'document'#39', '#39'../' +
        'nav/nav_6_index_btn_homer.gif'#39', true);"'
      
        'onmouseout="na_restore_img_src('#39'nav_rooms_TV0'#39', '#39'document'#39')"><im' +
        'g src="../nav/nav_6_index_btn_home.gif" name="nav_rooms_TV0" '
      
        'border="0" class="namo-button1" alt="'#49884#51089'" align="texttop"></a><im' +
        'g src="../nav/nav_6_menu_thh.gif" name="nav_reservation_TV4" '
      'border="0" class="namo-hibutton1" alt="'#47700#45684' '#49548#44060'" align="texttop" >'
      '<a href="http://localhost/bar/Debug/Win32/Pweb.exe/location"  '
      
        'onmouseover="na_change_img_src('#39'nav_rooms_TV3'#39', '#39'document'#39', '#39'../' +
        'nav/nav_6_location_tvr.gif'#39', true);"'
      
        'onmouseout="na_restore_img_src('#39'nav_rooms_TV3'#39', '#39'document'#39')"><im' +
        'g src="../nav/nav_6_location_tv.gif" name="nav_rooms_TV3" '
      'border="0" class="namo-button1" alt="'#50948#52824'" align="texttop"></a>'
      
        '<a href="http://localhost/bar/Debug/Win32/Pweb.exe/reservation" ' +
        ' '
      
        'onmouseover="na_change_img_src('#39'nav_rooms_TV4'#39', '#39'document'#39', '#39'../' +
        'nav/nav_6_reservation_tvr.gif'#39', true);"'
      
        'onmouseout="na_restore_img_src('#39'nav_rooms_TV4'#39', '#39'document'#39')"><im' +
        'g src="../nav/nav_6_reservation_tv.gif" name="nav_rooms_TV4"'
      
        'border="0" class="namo-button1" alt="'#50696#50557' '#51221#48372'" align="texttop"></a>' +
        '</div>'
      '        </td>'
      '    </tr>'
      '    <tr>'
      '        <td width="64" valign="top" rowspan="2">'
      '            <p>&nbsp;</p>'
      '            <p>&nbsp;</p>'
      '        </td>'
      '        <td width="792">'
      '<font size="2">'
      '<!--NAMO_NAVBAR_START I h         -1 0 2 4 3 5 -->'
      '<div>'
      
        '[<a href="http://localhost/bar/Debug/Win32/Pweb.exe"  onmouseove' +
        'r="" onmouseout="">'#49884#51089'</a>]['#47700#45684' '#49548#44060']</div>'
      '<!--NAMO_NAVBAR_END-->'
      '</font>        </td>'
      '    </tr>'
      '    <tr>'
      '        <td width="792">'
      '            <p class="namo-table" align="center">&nbsp;</p>'
      
        '                <table align="center" border="0" width="80%" bor' +
        'dercolordark="#707070" bordercolorlight="silver" cellspacing="2"' +
        ' class="namo-table">'
      '                    <tr>'
      '                       <td><img src="../nav/'#44867#49332'.gif"></img></td>'
      
        '                       <td rowspan="6"><font size="4"><br><br><b' +
        'r><br><br><br><#foodlist></font></td>'
      '                    </tr>'
      '                    <tr>'
      
        '                       <td><img src="../nav/'#46076#51648#50773#44040#48708'.gif"></img></t' +
        'd>'
      '                    </tr>'
      '                    <tr>'
      
        '                       <td><img src="../nav/'#50977#49324#49884#48120'.gif"></img></td' +
        '>'
      '                    </tr>'
      '                    <tr>'
      '                       <td><img src="../nav/'#50977#54924'.gif"></img></td>'
      '                    </tr>'
      '                    <tr>'
      
        '                       <td><img src="../nav/'#53664#51333#49340#44228#53461'.gif"></img></t' +
        'd>'
      '                    </tr>'
      '                    <tr>'
      
        '                       <td><img src="../nav/'#54889#53468#48513#50612#44397'.gif"></img></t' +
        'd>'
      '                    </tr>'
      ''
      #9'   </table>'
      #9'   <p>&nbsp;</p>'
      '           </td>'
      #9'</tr>'
      '</table>'
      '</body>'
      '</html>')
    OnHTMLTag = MenuProducerHTMLTag
    Left = 112
    Top = 64
  end
  object LocationProducer: TPageProducer
    HTMLDoc.Strings = (
      '<html>'
      '<head>'
      '<title>'#50948#52824'</title>'
      '<meta name="GENERATOR" content="Namo WebEditor v6.0">'
      '<meta name="author" content="shin">'
      '<meta name="namo-theme" content="theme\Abstract\Restaurant">'
      
        '<meta http-equiv="content-type" content="text/html; charset=euc-' +
        'kr">'
      '<style>'
      '<!--'
      'body { font-family:'#44404#47548'; font-size:9pt; color:rgb(49,0,0); }'
      'h1 { font-family:'#48148#53461'; font-size:14pt; color:gray; }'
      'h2 { font-family:'#48148#53461'; font-size:14pt; color:rgb(230,128,15); }'
      'p.namo-list { color:maroon; }'
      'p.namo-sublist { color:rgb(221,116,0); }'
      
        'table.namo-table { font-size:9pt; color:rgb(49,0,0); border-colo' +
        'r:rgb(224,148,91); }'
      
        'table.namo-table td { font-size:9pt; color:rgb(49,0,0); border-c' +
        'olor:rgb(255,203,143); }'
      
        'table.namo-table th { font-size:9pt; color:rgb(49,0,0); backgrou' +
        'nd-color:rgb(255,203,143); }'
      'span.namo-link, a:link { color:red; }'
      'span.namo-visited, a:visited { color:gray; }'
      'span.namo-active, a:active { color:rgb(254,139,90); }'
      'li.namo-list1 { list-style-image:url('#39'nav/bullet1.gif'#39'); }'
      'li.namo-list2 { list-style-image:url('#39'nav/bullet2.gif'#39'); }'
      '-->'
      '</style>'
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      '<script language="JavaScript">'
      '<!--'
      'function na_restore_img_src(name, nsdoc)'
      '{'
      
        '  var img = eval((navigator.appName.indexOf('#39'Netscape'#39', 0) != -1' +
        ') ? nsdoc+'#39'.'#39'+name : '#39'document.all.'#39'+name);'
      '  if (name == '#39#39')'
      '    return;'
      '  if (img && img.altsrc) {'
      '    img.src    = img.altsrc;'
      '    img.altsrc = null;'
      '  } '
      '}'
      ''
      'function na_preload_img()'
      '{ '
      '  var img_list = na_preload_img.arguments;'
      '  if (document.preloadlist == null) '
      '    document.preloadlist = new Array();'
      '  var top = document.preloadlist.length;'
      '  for (var i=0; i < img_list.length-1; i++) {'
      '    document.preloadlist[top+i] = new Image;'
      '    document.preloadlist[top+i].src = img_list[i+1];'
      '  } '
      '}'
      ''
      'function na_change_img_src(name, nsdoc, rpath, preload)'
      '{ '
      
        '  var img = eval((navigator.appName.indexOf('#39'Netscape'#39', 0) != -1' +
        ') ? nsdoc+'#39'.'#39'+name : '#39'document.all.'#39'+name);'
      '  if (name == '#39#39')'
      '    return;'
      '  if (img) {'
      '    img.altsrc = img.src;'
      '    img.src    = rpath;'
      '  } '
      '}'
      ''
      '// -->'
      '</script>'
      ''
      '</head>'
      
        '<body background="images/nth_theme_abstract_restaurant_bg.gif" O' +
        'nLoad="na_preload_img(false, '#39'../nav/nav_6_index_btn_homer.gif'#39',' +
        ' '#39'../nav/nav_6_reservation_tvr.gif'#39');">'
      '<table cellpadding="0" cellspacing="0" width="750">'
      '    <tr>'
      '        <td width="63">'
      '            <p align="center">&nbsp;</p>'
      '        </td>'
      '        <td width="687">'
      '<!--NAMO_NAVBAR_START B H C       -1 0 2 4 3 5 -->'
      '<div align="center">'
      
        '<img src="../nav/nav_1_location_bhb.gif" name="nav_location_BH0"' +
        ' '
      'border="0" class="namo-banner" alt="'#50948#52824'" align="texttop"></div>'
      '            <p><!--NAMO_NAVBAR_END-->'
      '</p>'
      '            <p>&nbsp;</p>'
      
        '            <p align="center"><a href="http://localhost/bar/Debu' +
        'g/Win32/Pweb.exe"  '
      
        'onmouseover="na_change_img_src('#39'nav_location_TV0'#39', '#39'document'#39', '#39 +
        '../nav/nav_6_index_btn_homer.gif'#39', true);"'
      'onmouseout="na_restore_img_src('#39'nav_location_TV0'#39', '#39'document'#39')">'
      
        '<img src="../nav/nav_6_index_btn_home.gif" name="nav_location_TV' +
        '0" '
      'border="0" class="namo-button1" alt="'#49884#51089'" align="texttop"></a>'
      '<a href="http://localhost/bar/Debug/Win32/Pweb.exe/menu">'
      '<img src="../nav/nav_6_menu_thr.gif" name="nav_rooms_TV1" '
      
        'border="0" class="namo-hibutton1" alt="'#47700#45684' '#49548#44060'" align="texttop"></' +
        'a>'
      '<img src="../nav/nav_6_location_tvh.gif" name="nav_rooms_TV3" '
      'border="0" class="namo-button1" alt="'#50948#52824'" align="texttop">'
      
        '<a href="http://localhost/bar/Debug/Win32/Pweb.exe/reservation" ' +
        ' '
      
        'onmouseover="na_change_img_src('#39'nav_rooms_TV4'#39', '#39'document'#39', '#39'../' +
        'nav/nav_6_reservation_tvr.gif'#39', true);"'
      'onmouseout="na_restore_img_src('#39'nav_rooms_TV4'#39', '#39'document'#39')">'
      '<img src="../nav/nav_6_reservation_tv.gif" name="nav_rooms_TV4" '
      
        'border="0" class="namo-button1" alt="'#50696#50557' '#51221#48372'" align="texttop"></a>' +
        '</p>'
      '        </td>'
      '    </tr>'
      '    <tr>'
      '        <td width="63" rowspan="2" valign="top">'
      '&nbsp;        </td>'
      '        <td width="687">'
      '<font size="2">'
      '<!--NAMO_NAVBAR_START I h         -1 0 2 4 3 5 -->'
      '<div>'
      
        '[<a href="http://localhost/bar/Debug/Win32/Pweb.exe"  onmouseove' +
        'r="" onmouseout="">'#49884#51089'</a>]['#50948#52824']</div>'
      '<!--NAMO_NAVBAR_END-->'
      '</font>'
      '        </td>'
      '    </tr>'
      '    <tr>'
      '        <td width="687">'
      '            <p class="namo-table" align="center">&nbsp;</p>'
      
        '<table align="center" border="0" width="80%" bordercolordark="#7' +
        '07070" bordercolorlight="silver" class="namo-table">'
      '    <tr>'
      '        <th class="namo-th" bgcolor="#D0FFFF">'
      
        #9#9'    <p class="namo-list" align="left"><img src="../nav/bullet1' +
        '.gif" border="0" class="namo-list1" align="absmiddle" width="31"' +
        ' height="25">'#52286#50500' '#50724#49884#45716' '#44600'</p>'
      '        </th>'
      '    </tr>'
      '    <tr>'
      '        <td>'
      '            <p align="center">&nbsp;</p>'
      
        '                <p align="center"><img src="../nav/'#52286#50500#50724#45716#44600'.JPG" wi' +
        'dth="450" height="350" border="0"></p>'
      '                <ul>'
      
        '                    <li><font size="2">'#48260#49828'642, 643, 146, 341, 421' +
        ', 3422, 8541, 3412, 4412</font></li>'
      
        '                    <li><font size="2">'#51648#54616#52384'9'#54840#49440'('#49324#54217'), 9'#54840#49440'('#49888#45436#54788')</fon' +
        't></li>'
      '                </ul>'
      '        </td>'
      '    </tr>'
      '</table>'
      '     <p>&nbsp;</p>'
      '</td>'
      '    </tr>'
      '</table>'
      '</body>'
      '</html>')
    Left = 112
    Top = 120
  end
  object ReservationProducer: TPageProducer
    HTMLDoc.Strings = (
      '<html>'
      '<head>'
      '<title>'#50696#50557' '#51221#48372'</title>'
      '<meta name="GENERATOR" content="Namo WebEditor v6.0">'
      '<meta name="author" content="shin">'
      '<meta name="namo-theme" content="theme\Abstract\Restaurant">'
      
        '<meta http-equiv="content-type" content="text/html; charset=euc-' +
        'kr">'
      '<style>'
      '<!--'
      'body { font-family:'#44404#47548'; font-size:9pt; color:rgb(49,0,0); }'
      'h1 { font-family:'#48148#53461'; font-size:14pt; color:gray; }'
      'h2 { font-family:'#48148#53461'; font-size:14pt; color:rgb(230,128,15); }'
      'p.namo-list { color:maroon; }'
      'p.namo-sublist { color:rgb(221,116,0); }'
      
        'table.namo-table { font-size:9pt; color:rgb(49,0,0); border-colo' +
        'r:rgb(224,148,91); }'
      
        'table.namo-table td { font-size:9pt; color:rgb(49,0,0); border-c' +
        'olor:rgb(255,203,143); }'
      
        'table.namo-table th { font-size:9pt; color:rgb(49,0,0); backgrou' +
        'nd-color:rgb(255,203,143); }'
      'span.namo-link, a:link { color:red; }'
      'span.namo-visited, a:visited { color:gray; }'
      'span.namo-active, a:active { color:rgb(254,139,90); }'
      'li.namo-list1 { list-style-image:url('#39'nav/bullet1.gif'#39'); }'
      'li.namo-list2 { list-style-image:url('#39'nav/bullet2.gif'#39'); }'
      '-->'
      '</style>'
      ''
      ''
      ''
      ''
      ''
      ''
      '<script language="JavaScript">'
      '<!--'
      'function na_restore_img_src(name, nsdoc)'
      '{'
      
        '  var img = eval((navigator.appName.indexOf('#39'Netscape'#39', 0) != -1' +
        ') ? nsdoc+'#39'.'#39'+name : '#39'document.all.'#39'+name);'
      '  if (name == '#39#39')'
      '    return;'
      '  if (img && img.altsrc) {'
      '    img.src    = img.altsrc;'
      '    img.altsrc = null;'
      '  } '
      '}'
      ''
      'function na_preload_img()'
      '{ '
      '  var img_list = na_preload_img.arguments;'
      '  if (document.preloadlist == null) '
      '    document.preloadlist = new Array();'
      '  var top = document.preloadlist.length;'
      '  for (var i=0; i < img_list.length-1; i++) {'
      '    document.preloadlist[top+i] = new Image;'
      '    document.preloadlist[top+i].src = img_list[i+1];'
      '  } '
      '}'
      ''
      'function na_change_img_src(name, nsdoc, rpath, preload)'
      '{'
      
        '  var img = eval((navigator.appName.indexOf('#39'Netscape'#39', 0) != -1' +
        ') ? nsdoc+'#39'.'#39'+name : '#39'document.all.'#39'+name);'
      '  if (name == '#39#39')'
      '    return;'
      '  if (img) {'
      '    img.altsrc = img.src;'
      '    img.src    = rpath;'
      '  } '
      '}'
      'function chkfield()'
      '{'
      ' if (document.form1.name.value=="")'
      ' {'
      '        alert("'#51060#47492#51060' '#51077#47141#46104#51648' '#50506#50520#49845#45768#45796'.");'
      '        document.form1.name.focus();'
      '        return;'
      ' }'
      ' if (document.form1.tel1.value=="")'
      ' {'
      '        alert("'#51204#54868#48264#54840#44032' '#51077#47141#46104#51648' '#50506#50520#49845#45768#45796'.");'
      '        document.form1.tel1.focus();'
      '        return;'
      ' }'
      ' if (document.form1.a_year.value=="")'
      ' {'
      '        alert("'#50696#50557#45380#46020#44032' '#51077#47141#46104#51648' '#50506#50520#49845#45768#45796'.");'
      '        document.form1.a_year.focus();'
      '        return;'
      ' }'
      '  if (document.form1.a_month.value=="")'
      ' {'
      '        alert("'#50696#50557#50900#51060' '#51077#47141#46104#51648' '#50506#50520#49845#45768#45796'.");'
      '        document.form1.a_month.focus();'
      '        return;'
      ' }'
      '  if (document.form1.a_day.value=="")'
      ' {'
      '        alert("'#50696#50557#45216#51060' '#51077#47141#46104#51648' '#50506#50520#49845#45768#45796'.");'
      '        document.form1.a_day.focus();'
      '        return;'
      ' }'
      ''
      ''
      ' document.form1.submit();'
      '}'
      ''
      '// -->'
      '</script>'
      ''
      
        '</head><body background="images/nth_theme_abstract_restaurant_bg' +
        '.gif" OnLoad="na_preload_img(false, '#39'../nav/nav_6_index_btn_home' +
        'r.gif'#39', '#39'../nav/nav_6_location_tvr.gif'#39');">'
      ''
      '<table cellpadding="0" cellspacing="0" width="750">'
      '    <tr>'
      '        <td width="63">'
      '            <p align="center">&nbsp;</p>'
      '        </td>'
      '        <td width="687">'
      '<!--NAMO_NAVBAR_START B H C       -1 0 2 4 3 5 -->'
      '<div align="center">'
      
        '<img src="../nav/nav_1_reservation_bhb.gif" name="nav_reservatio' +
        'n_BH0" '
      
        'border="0" class="namo-banner" alt="'#50696#50557' '#51221#48372'" align="texttop"></div' +
        '>'
      '            <p><!--NAMO_NAVBAR_END-->'
      '</p>'
      '            <p>&nbsp;</p>'
      
        '            <p align="center"><a href="http://localhost/bar/Debu' +
        'g/Win32/Pweb.exe"'
      
        'onmouseover="na_change_img_src('#39'nav_rooms_TV0'#39', '#39'document'#39', '#39'../' +
        'nav/nav_6_index_btn_homer.gif'#39', true);"'
      
        'onmouseout="na_restore_img_src('#39'nav_rooms_TV0'#39', '#39'document'#39')"><im' +
        'g src="../nav/nav_6_index_btn_home.gif" name="nav_rooms_TV0" '
      'border="0" class="namo-button1" alt="'#49884#51089'" align="texttop"></a>'
      '<a href="http://localhost/bar/Debug/Win32/Pweb.exe/menu">'
      '<img src="../nav/nav_6_menu_thr.gif" name="nav_rooms_TV1" '
      
        'border="0" class="namo-hibutton1" alt="'#47700#45684' '#49548#44060'" align="texttop"></' +
        'a>'
      '<a href="http://localhost/bar/Debug/Win32/Pweb.exe/location"  '
      
        'onmouseover="na_change_img_src('#39'nav_rooms_TV3'#39', '#39'document'#39', '#39'../' +
        'nav/nav_6_location_tvr.gif'#39', true);"'
      
        'onmouseout="na_restore_img_src('#39'nav_rooms_TV3'#39', '#39'document'#39')"><im' +
        'g src="../nav/nav_6_location_tv.gif" name="nav_rooms_TV3" border' +
        '="0" class="namo-button1" alt="'#50948#52824'" align="texttop"></a><img src=' +
        '"../nav/nav_6_reservation_tvh.gif" name="nav_reservation_TV4" '
      
        'border="0" class="namo-hibutton1" alt="'#50696#50557' '#51221#48372'" align="texttop"></' +
        'p>'
      '        </td>'
      '    </tr>'
      '    <tr>'
      '        <td width="63" rowspan="2" valign="top">'
      ''
      '            <p>&nbsp;</p>'
      '        </td>'
      '        <td width="687">'
      '<font size="2">'
      '<!--NAMO_NAVBAR_START I h         -1 0 2 4 3 5 -->'
      '<div>'
      
        '[<a href="http://localhost/bar/Debug/Win32/Pweb.exe"  onmouseove' +
        'r="" onmouseout="">'#49884#51089'</a>]['#50696#50557' '#51221#48372']</div>'
      '<!--NAMO_NAVBAR_END-->'
      '</font>        </td>'
      '    </tr>'
      '    <tr>'
      '        <td width="687">'
      '<p>&nbsp;</p>'
      '<form name="form1" method="post" action="./reg?option=write">'
      
        '    <table width="80%" align="center" bordercolordark="#707070" ' +
        'bordercolorlight="silver" border="0" class="namo-table">'
      '        <tr>'
      
        '            <th width="494" align="right" colspan="2" bgcolor="#' +
        'D0FFFF"><p align="left" class="namo-sublist"><img src="../nav/bu' +
        'llet1.gif" align="absmiddle" border="0" class="namo-list1" width' +
        '="31" height="25">'#50696#50557' '#51221#48372#47484' '#51077#47141#54616#49464#50836'.</th>'
      '        </tr>'
      '        <tr>'
      
        '            <th width="117" align="right" class="namo-th" bgcolo' +
        'r="#D0FFFF"><p><font size="2"> '#51060#47492' : </font></th>'
      '            <td width="373">'
      '                <p><input type="text" name="name"></td>'
      '        </tr>'
      '        <tr>'
      
        '            <th width="117" align="right" class="namo-th" bgcolo' +
        'r="#D0FFFF"><p><font size="2">'#51204#54868#48264#54840'</font></th>'
      '            <td width="373">'
      
        #9#9#9'    <input type=text size=4 maxlength=4 name=tel1> - <input t' +
        'ype=text size=4 maxlength=4 name=tel2> - <input type=text size=4' +
        ' maxlength=4 name=tel3></td>'
      '        </tr>'
      '        <tr>'
      
        '            <th width="117" align="right" class="namo-th" bgcolo' +
        'r="#D0FFFF"><font size="2">'#50696#50557' '#51068#51088'</font></th>'
      '            <td width="373" align="right" class="namo-th">'
      
        '                <p align="left"><input name="a_year" type=text s' +
        'ize=4 maxlength=4><font size="2">'#45380'</font>'
      
        #9#9#9#9'<input type=text size=2 maxlength=2 name="a_month"><font siz' +
        'e="2">'#50900'</font> <input type=text size=2 maxlength=2 name="a_day">' +
        '<font size="2">'#51068'</font>'
      #9#9'    </td>'
      '        </tr>'
      ''
      '        <tr>'
      
        '            <th width="117" align="right" class="namo-th" bgcolo' +
        'r="#D0FFFF"><font size="2">'#50696#50557' '#49884#44036'</font></th>'
      '            <td width="373" align="right" class="namo-th">'
      
        '                <p align="left"><input name="a_hh" type=text siz' +
        'e=4 maxlength=4><font size="2">'#49884'</font>'
      
        #9#9#9#9'<input type=text size=2 maxlength=2 name="a_nn"><font size="' +
        '2">'#48516'</font> </font>'
      #9#9'    </td>'
      '        </tr>'
      ''
      '         <tr>'
      
        '             <th width="117" align="right" class="namo-th" bgcol' +
        'or="#D0FFFF"><font size="2">'#44592#53440' '#51452#47928' '#49324#54637'</font></th>'
      '             <td width="373" align="right" class="namo-th">'
      
        '             <p align="left"><textarea name="Comment" rows="5" c' +
        'ols="35"></textarea></td>'
      '        </tr>'
      '        <tr>'
      
        '             <td width="494" align="center" class="namo-th" heig' +
        'ht="24" colspan="2"><p><font size="2"><input type="button" value' +
        '="'#50696#50557#54616#44592'" onclick="chkfield()"> <input type="reset" value='#45796#49884#51089#49457'></f' +
        'ont></td>'
      '        </tr>'
      '    </table>'
      '</form>'
      '<p>&nbsp;</p>'
      '</td>'
      '    </tr>'
      '</table>'
      '</body>'
      '</html>')
    Left = 112
    Top = 176
  end
  object CompleteProducer: TPageProducer
    HTMLDoc.Strings = (
      '<html>'
      '<head>'
      '<title>'#50696#50557' '#51221#48372'</title>'
      '<meta name="GENERATOR" content="Namo WebEditor v6.0">'
      '<meta name="author" content="shin">'
      '<meta name="namo-theme" content="theme\Abstract\Restaurant">'
      
        '<meta http-equiv="content-type" content="text/html; charset=euc-' +
        'kr">'
      '<style>'
      '<!--'
      'body { font-family:'#44404#47548'; font-size:9pt; color:rgb(49,0,0); }'
      'h1 { font-family:'#48148#53461'; font-size:14pt; color:gray; }'
      'h2 { font-family:'#48148#53461'; font-size:14pt; color:rgb(230,128,15); }'
      'p.namo-list { color:maroon; }'
      'p.namo-sublist { color:rgb(221,116,0); }'
      
        'table.namo-table { font-size:9pt; color:rgb(49,0,0); border-colo' +
        'r:rgb(224,148,91); }'
      
        'table.namo-table td { font-size:9pt; color:rgb(49,0,0); border-c' +
        'olor:rgb(255,203,143); }'
      
        'table.namo-table th { font-size:9pt; color:rgb(49,0,0); backgrou' +
        'nd-color:rgb(255,203,143); }'
      'span.namo-link, a:link { color:red; }'
      'span.namo-visited, a:visited { color:gray; }'
      'span.namo-active, a:active { color:rgb(254,139,90); }'
      'li.namo-list1 { list-style-image:url('#39'nav/bullet1.gif'#39'); }'
      'li.namo-list2 { list-style-image:url('#39'nav/bullet2.gif'#39'); }'
      '-->'
      '</style>'
      ''
      ''
      ''
      ''
      ''
      ''
      '<script language="JavaScript">'
      '<!--'
      'function na_restore_img_src(name, nsdoc)'
      '{'
      
        '  var img = eval((navigator.appName.indexOf('#39'Netscape'#39', 0) != -1' +
        ') ? nsdoc+'#39'.'#39'+name : '#39'document.all.'#39'+name);'
      '  if (name == '#39#39')'
      '    return;'
      '  if (img && img.altsrc) {'
      '    img.src    = img.altsrc;'
      '    img.altsrc = null;'
      '  } '
      '}'
      ''
      'function na_preload_img()'
      '{ '
      '  var img_list = na_preload_img.arguments;'
      '  if (document.preloadlist == null) '
      '    document.preloadlist = new Array();'
      '  var top = document.preloadlist.length;'
      '  for (var i=0; i < img_list.length-1; i++) {'
      '    document.preloadlist[top+i] = new Image;'
      '    document.preloadlist[top+i].src = img_list[i+1];'
      '  } '
      '}'
      ''
      'function na_change_img_src(name, nsdoc, rpath, preload)'
      '{'
      
        '  var img = eval((navigator.appName.indexOf('#39'Netscape'#39', 0) != -1' +
        ') ? nsdoc+'#39'.'#39'+name : '#39'document.all.'#39'+name);'
      '  if (name == '#39#39')'
      '    return;'
      '  if (img) {'
      '    img.altsrc = img.src;'
      '    img.src    = rpath;'
      '  } '
      '}'
      ''
      '// -->'
      '</script>'
      ''
      
        '</head><body background="images/nth_theme_abstract_restaurant_bg' +
        '.gif" OnLoad="na_preload_img(false, '#39'../nav/nav_6_index_btn_home' +
        'r.gif'#39', '#39'../nav/nav_6_location_tvr.gif'#39');">'
      ''
      '<table cellpadding="0" cellspacing="0" width="750">'
      '    <tr>'
      '        <td width="63">'
      '            <p align="center">&nbsp;</p>'
      '        </td>'
      '        <td width="687">'
      '<!--NAMO_NAVBAR_START B H C       -1 0 2 4 3 5 -->'
      '<div align="center">'
      
        '<img src="../nav/nav_1_reservation_bhb.gif" name="nav_reservatio' +
        'n_BH0" '
      
        'border="0" class="namo-banner" alt="'#50696#50557' '#51221#48372'" align="texttop"></div' +
        '>'
      '            <p><!--NAMO_NAVBAR_END-->'
      '</p>'
      '            <p>&nbsp;</p>'
      
        '            <p align="center"><a href="http://localhost/bar/Debu' +
        'g/Win32/Pweb.exe"'
      
        'onmouseover="na_change_img_src('#39'nav_rooms_TV0'#39', '#39'document'#39', '#39'../' +
        'nav/nav_6_index_btn_homer.gif'#39', true);"'
      
        'onmouseout="na_restore_img_src('#39'nav_rooms_TV0'#39', '#39'document'#39')"><im' +
        'g src="../nav/nav_6_index_btn_home.gif" name="nav_rooms_TV0" '
      'border="0" class="namo-button1" alt="'#49884#51089'" align="texttop"></a>'
      '<a href="http://localhost/bar/Debug/Win32/Pweb.exe/menu">'
      '<img src="../nav/nav_6_menu_thr.gif" name="nav_rooms_TV1" '
      
        'border="0" class="namo-hibutton1" alt="'#47700#45684' '#49548#44060'" align="texttop"></' +
        'a>'
      '<a href="http://localhost/bar/Debug/Win32/Pweb.exe/location"  '
      
        'onmouseover="na_change_img_src('#39'nav_rooms_TV3'#39', '#39'document'#39', '#39'../' +
        'nav/nav_6_location_tvr.gif'#39', true);"'
      
        'onmouseout="na_restore_img_src('#39'nav_rooms_TV3'#39', '#39'document'#39')"><im' +
        'g src="../nav/nav_6_location_tv.gif" name="nav_rooms_TV3" border' +
        '="0" class="namo-button1" alt="'#50948#52824'" align="texttop"></a><img src=' +
        '"../nav/nav_6_reservation_tvh.gif" name="nav_reservation_TV4" '
      
        'border="0" class="namo-hibutton1" alt="'#50696#50557' '#51221#48372'" align="texttop"></' +
        'p>'
      '        </td>'
      '    </tr>'
      '    <tr>'
      '        <td width="63" rowspan="2" valign="top">'
      ''
      '            <p>&nbsp;</p>'
      '        </td>'
      '        <td width="687">'
      '<font size="2">'
      '<!--NAMO_NAVBAR_START I h         -1 0 2 4 3 5 -->'
      '<div>'
      
        '[<a href="http://localhost/bar/Debug/Win32/Pweb.exe"  onmouseove' +
        'r="" onmouseout="">'#49884#51089'</a>]['#50696#50557' '#51221#48372']</div>'
      '<!--NAMO_NAVBAR_END-->'
      '</font>        </td>'
      '    </tr>'
      '    <tr>'
      '        <td width="687">'
      '<p>&nbsp;</p>'
      '<form name="form1" method="post" action="./reg">'
      '    <br><br> '
      
        '    <table width="80%" align="center" bordercolordark="#707070" ' +
        'bordercolorlight="silver" class="namo-table">'
      '    <tr><td>'#50696#50557#51060' '#50756#47308#46104#50632#49845#45768#45796'.</td></tr>'
      '   <tr><td>'#51600#44144#50868' '#49884#44036' '#46104#49901#49884#50724'.</td></tr>'
      '    </table>'
      '</form>'
      '<p>&nbsp;</p>'
      '</td>'
      '    </tr>'
      '</table>'
      '</body>'
      '</html>')
    Left = 232
    Top = 264
  end
  object FailedProducer: TPageProducer
    HTMLDoc.Strings = (
      '<html>'
      '<head>'
      '<title>'#50696#50557' '#51221#48372'</title>'
      '<meta name="GENERATOR" content="Namo WebEditor v6.0">'
      '<meta name="author" content="shin">'
      '<meta name="namo-theme" content="theme\Abstract\Restaurant">'
      
        '<meta http-equiv="content-type" content="text/html; charset=euc-' +
        'kr">'
      '<style>'
      '<!--'
      'body { font-family:'#44404#47548'; font-size:9pt; color:rgb(49,0,0); }'
      'h1 { font-family:'#48148#53461'; font-size:14pt; color:gray; }'
      'h2 { font-family:'#48148#53461'; font-size:14pt; color:rgb(230,128,15); }'
      'p.namo-list { color:maroon; }'
      'p.namo-sublist { color:rgb(221,116,0); }'
      
        'table.namo-table { font-size:9pt; color:rgb(49,0,0); border-colo' +
        'r:rgb(224,148,91); }'
      
        'table.namo-table td { font-size:9pt; color:rgb(49,0,0); border-c' +
        'olor:rgb(255,203,143); }'
      
        'table.namo-table th { font-size:9pt; color:rgb(49,0,0); backgrou' +
        'nd-color:rgb(255,203,143); }'
      'span.namo-link, a:link { color:red; }'
      'span.namo-visited, a:visited { color:gray; }'
      'span.namo-active, a:active { color:rgb(254,139,90); }'
      'li.namo-list1 { list-style-image:url('#39'nav/bullet1.gif'#39'); }'
      'li.namo-list2 { list-style-image:url('#39'nav/bullet2.gif'#39'); }'
      '-->'
      '</style>'
      ''
      ''
      ''
      ''
      ''
      ''
      '<script language="JavaScript">'
      '<!--'
      'function na_restore_img_src(name, nsdoc)'
      '{'
      
        '  var img = eval((navigator.appName.indexOf('#39'Netscape'#39', 0) != -1' +
        ') ? nsdoc+'#39'.'#39'+name : '#39'document.all.'#39'+name);'
      '  if (name == '#39#39')'
      '    return;'
      '  if (img && img.altsrc) {'
      '    img.src    = img.altsrc;'
      '    img.altsrc = null;'
      '  } '
      '}'
      ''
      'function na_preload_img()'
      '{ '
      '  var img_list = na_preload_img.arguments;'
      '  if (document.preloadlist == null) '
      '    document.preloadlist = new Array();'
      '  var top = document.preloadlist.length;'
      '  for (var i=0; i < img_list.length-1; i++) {'
      '    document.preloadlist[top+i] = new Image;'
      '    document.preloadlist[top+i].src = img_list[i+1];'
      '  } '
      '}'
      ''
      'function na_change_img_src(name, nsdoc, rpath, preload)'
      '{'
      
        '  var img = eval((navigator.appName.indexOf('#39'Netscape'#39', 0) != -1' +
        ') ? nsdoc+'#39'.'#39'+name : '#39'document.all.'#39'+name);'
      '  if (name == '#39#39')'
      '    return;'
      '  if (img) {'
      '    img.altsrc = img.src;'
      '    img.src    = rpath;'
      '  } '
      '}'
      ''
      '// -->'
      '</script>'
      ''
      
        '</head><body background="images/nth_theme_abstract_restaurant_bg' +
        '.gif" OnLoad="na_preload_img(false, '#39'../nav/nav_6_index_btn_home' +
        'r.gif'#39', '#39'../nav/nav_6_location_tvr.gif'#39');">'
      ''
      '<table cellpadding="0" cellspacing="0" width="750">'
      '    <tr>'
      '        <td width="63">'
      '            <p align="center">&nbsp;</p>'
      '        </td>'
      '        <td width="687">'
      '<!--NAMO_NAVBAR_START B H C       -1 0 2 4 3 5 -->'
      '<div align="center">'
      
        '<img src="../nav/nav_1_reservation_bhb.gif" name="nav_reservatio' +
        'n_BH0" '
      
        'border="0" class="namo-banner" alt="'#50696#50557' '#51221#48372'" align="texttop"></div' +
        '>'
      '            <p><!--NAMO_NAVBAR_END-->'
      '</p>'
      '            <p>&nbsp;</p>'
      
        '            <p align="center"><a href="http://localhost/bar/Debu' +
        'g/Win32/Pweb.exe"'
      
        'onmouseover="na_change_img_src('#39'nav_rooms_TV0'#39', '#39'document'#39', '#39'../' +
        'nav/nav_6_index_btn_homer.gif'#39', true);"'
      
        'onmouseout="na_restore_img_src('#39'nav_rooms_TV0'#39', '#39'document'#39')"><im' +
        'g src="../nav/nav_6_index_btn_home.gif" name="nav_rooms_TV0" '
      'border="0" class="namo-button1" alt="'#49884#51089'" align="texttop"></a>'
      '<a href="http://localhost/bar/Debug/Win32/Pweb.exe/menu">'
      '<img src="../nav/nav_6_menu_thr.gif" name="nav_rooms_TV1" '
      
        'border="0" class="namo-hibutton1" alt="'#47700#45684' '#49548#44060'" align="texttop"></' +
        'a>'
      '<a href="http://localhost/bar/Debug/Win32/Pweb.exe/location"  '
      
        'onmouseover="na_change_img_src('#39'nav_rooms_TV3'#39', '#39'document'#39', '#39'../' +
        'nav/nav_6_location_tvr.gif'#39', true);"'
      
        'onmouseout="na_restore_img_src('#39'nav_rooms_TV3'#39', '#39'document'#39')"><im' +
        'g src="../nav/nav_6_location_tv.gif" name="nav_rooms_TV3" border' +
        '="0" class="namo-button1" alt="'#50948#52824'" align="texttop"></a><img src=' +
        '"../nav/nav_6_reservation_tvh.gif" name="nav_reservation_TV4" '
      
        'border="0" class="namo-hibutton1" alt="'#50696#50557' '#51221#48372'" align="texttop"></' +
        'p>'
      '        </td>'
      '    </tr>'
      '    <tr>'
      '        <td width="63" rowspan="2" valign="top">'
      ''
      '            <p>&nbsp;</p>'
      '        </td>'
      '        <td width="687">'
      '<font size="2">'
      '<!--NAMO_NAVBAR_START I h         -1 0 2 4 3 5 -->'
      '<div>'
      
        '[<a href="http://localhost/bar/Debug/Win32/Pweb.exe"  onmouseove' +
        'r="" onmouseout="">'#49884#51089'</a>]['#50696#50557' '#51221#48372']</div>'
      '<!--NAMO_NAVBAR_END-->'
      '</font>        </td>'
      '    </tr>'
      '    <tr>'
      '        <td width="687">'
      '<p>&nbsp;</p>'
      '<form name="form1" method="post" action="./reg">'
      '    <br><br>'
      
        '    <table width="80%" align="center" bordercolordark="#707070" ' +
        'bordercolorlight="silver" class="namo-table">'
      '    <tr><td>'#50696#50557#51060' '#49892#54056#46104#50632#49845#45768#45796'.</td></tr>'
      '   <tr><td>'#45796#49884' '#50696#50557#54644' '#51452#49884#44592' '#48148#46989#45768#45796'.</td></tr>'
      '    </table>'
      '</form>'
      '<p>&nbsp;</p>'
      '</td>'
      '    </tr>'
      '</table>'
      '</body>'
      '</html>')
    Left = 344
    Top = 264
  end
  object ReservationDataSet: TSimpleDataSet
    Active = True
    Aggregates = <>
    Connection = SQLConnection1
    DataSet.CommandText = 'RESV_INFO'
    DataSet.CommandType = ctTable
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 216
    Top = 176
  end
  object ReservationTable: TSQLTable
    MaxBlobSize = -1
    SQLConnection = SQLConnection1
    TableName = 'RESV_INFO'
    Left = 328
    Top = 176
  end
  object foodTable: TSQLTable
    Active = True
    MaxBlobSize = -1
    SQLConnection = SQLConnection1
    TableName = 'FOOD_INFO'
    Left = 208
    Top = 64
  end
end
