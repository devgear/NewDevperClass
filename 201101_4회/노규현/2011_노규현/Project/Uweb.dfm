object WebModule7: TWebModule7
  OldCreateOrder = False
  Actions = <
    item
      Name = 'DefaultHandler'
      PathInfo = '/'
      OnAction = WebModule7DefaultHandlerAction
    end
    item
      Default = True
      Name = 'Main'
      PathInfo = '/MainProducer'
      Producer = MainProducer
    end>
  Height = 230
  Width = 415
  object MainProducer: TPageProducer
    HTMLDoc.Strings = (
      '<html>'
      '<head>'
      '<title> '#45936#48652#44592#50612' </title>'
      
        '<meta http-equiv="Content-Type" content= "text/html; chaset=edr-' +
        'kr">'
      '</head>'
      '<body>'
      '<center><img src ="./pic/logo.gif" height=53 width=397>'
      '<p>'
      '<p>'
      '<h3>'
      '<ul>'
      
        '   <li><a herf="http://localhost:8080/Wproject.exe/rec"> '#50696#50557' '#54616#44592'<p' +
        '></a>'
      
        '   <li><a herf="http://localhost:8080/Wproject.exe/rec"> '#52264#47049' '#51312#54924'<p' +
        '></a>'
      ''
      ''
      ''
      '</ul>'
      '<h3>'
      '</center>'
      '</body>'
      '</html>')
    Left = 64
    Top = 40
  end
end
