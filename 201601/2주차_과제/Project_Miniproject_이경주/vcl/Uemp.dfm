object emp: Temp
  Left = 0
  Top = 0
  Caption = #49324#50896' '#44288#47532
  ClientHeight = 290
  ClientWidth = 420
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 8
    Top = 8
    Width = 402
    Height = 266
    ActivePage = TabSheet1
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = #51312#54924
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 394
        Height = 238
        Align = alClient
        DataSource = DM.DataSource2
        Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
    end
    object TabSheet2: TTabSheet
      Caption = #54200#51665
      ImageIndex = 1
      object lb_enumber: TLabel
        Left = 11
        Top = 27
        Width = 51
        Height = 13
        Caption = #49324#50896' '#48264#54840
      end
      object lb_ename: TLabel
        Left = 209
        Top = 27
        Width = 24
        Height = 13
        Caption = #51060#47492
      end
      object lb_ephone: TLabel
        Left = 11
        Top = 59
        Width = 36
        Height = 13
        Caption = #50672#46973#52376
      end
      object lb_eteam: TLabel
        Left = 195
        Top = 59
        Width = 39
        Height = 13
        Caption = #49548#49549' '#54016
      end
      object Label1: TLabel
        Left = 11
        Top = 88
        Width = 39
        Height = 13
        Caption = #52280#50668#51473' '
      end
      object btn_emp_cancel: TButton
        Left = 218
        Top = 204
        Width = 75
        Height = 25
        Caption = 'cancel'
        TabOrder = 0
        OnClick = btn_emp_cancelClick
      end
      object btn_emp_post: TButton
        Left = 316
        Top = 204
        Width = 75
        Height = 25
        Caption = 'post'
        TabOrder = 1
        OnClick = btn_emp_postClick
      end
      object btn_emp_insert: TButton
        Left = 218
        Top = 164
        Width = 75
        Height = 25
        Caption = 'insert'
        TabOrder = 2
        OnClick = btn_emp_insertClick
      end
      object edit_enumber: TDBEdit
        Left = 82
        Top = 24
        Width = 95
        Height = 21
        DataField = 'ENUMBER'
        DataSource = DM.DataSource2
        TabOrder = 3
        OnKeyDown = edit_enumberKeyDown
      end
      object edit_ephone: TDBEdit
        Left = 82
        Top = 51
        Width = 95
        Height = 21
        DataField = 'EPHONE'
        DataSource = DM.DataSource2
        TabOrder = 4
      end
      object edit_ename: TDBEdit
        Left = 282
        Top = 24
        Width = 95
        Height = 21
        DataField = 'ENAME'
        DataSource = DM.DataSource2
        TabOrder = 5
      end
      object btn_emp_delete: TButton
        Left = 316
        Top = 164
        Width = 75
        Height = 25
        Caption = 'delete'
        TabOrder = 6
        OnClick = btn_emp_deleteClick
      end
      object combo_eteam: TDBComboBox
        Left = 282
        Top = 51
        Width = 95
        Height = 21
        DataField = 'DTEAM'
        DataSource = DM.DataSource3
        Items.Strings = (
          '1'#54016
          '2'#54016
          '3'#54016
          '4'#54016' ')
        TabOrder = 7
      end
      object DBComboBox1: TDBComboBox
        Left = 82
        Top = 85
        Width = 95
        Height = 21
        DataField = 'PNAME'
        DataSource = DM.DataSource1
        TabOrder = 8
      end
    end
  end
end
