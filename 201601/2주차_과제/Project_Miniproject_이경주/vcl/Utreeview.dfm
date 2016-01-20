object Frame1: TFrame1
  Left = 0
  Top = 0
  Width = 545
  Height = 298
  TabOrder = 0
  OnExit = FrameExit
  OnResize = FrameResize
  object TreeView1: TTreeView
    Left = 19
    Top = 11
    Width = 254
    Height = 270
    Indent = 19
    TabOrder = 0
    OnClick = TreeView1Click
  end
  object ListView1: TListView
    Left = 279
    Top = 11
    Width = 242
    Height = 270
    Columns = <
      item
        Caption = #51060#47492
      end
      item
        Caption = #50672#46973#52376
      end>
    TabOrder = 1
    ViewStyle = vsReport
  end
  object dept_query: TSQLQuery
    DataSource = DM.DataSource3
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from dept '
      'order by dname, dteam')
    SQLConnection = DM.SQLConnection1
    Left = 176
    Top = 80
  end
  object emp_query: TSQLQuery
    DataSource = DM.DataSource2
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftWideString
        Name = 'ETEAM'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select ename,ephone'
      'from emp '
      'where eteam=:eteam')
    SQLConnection = DM.SQLConnection1
    Left = 256
    Top = 136
  end
end
