object dept: Tdept
  Left = 0
  Top = 0
  Caption = #48512#49436' '#44288#47532
  ClientHeight = 284
  ClientWidth = 413
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
    Height = 273
    ActivePage = TabSheet2
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = #51312#54924
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 394
        Height = 245
        Align = alClient
        DataSource = DM.DataSource3
        Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'DNAME'
            Title.Caption = #48512#49436' '#47749
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DTEAM'
            Title.Caption = #49548#49549' '#54016' '#47749
            Width = 150
            Visible = True
          end>
      end
    end
    object TabSheet2: TTabSheet
      Caption = #54200#51665
      ImageIndex = 1
      object lb_dteam: TLabel
        Left = 209
        Top = 27
        Width = 54
        Height = 13
        Caption = #49548#49549' '#54016' '#47749
      end
      object lb_dname: TLabel
        Left = 11
        Top = 27
        Width = 39
        Height = 13
        Caption = #48512#49436' '#47749
      end
      object btn_dept_cancel: TButton
        Left = 218
        Top = 204
        Width = 75
        Height = 25
        Caption = 'cancel'
        TabOrder = 0
        OnClick = btn_dept_cancelClick
      end
      object btn_dept_insert: TButton
        Left = 218
        Top = 164
        Width = 75
        Height = 25
        Caption = 'insert'
        TabOrder = 1
        OnClick = btn_dept_insertClick
      end
      object edit_dname: TDBEdit
        Left = 82
        Top = 24
        Width = 95
        Height = 21
        DataField = 'DNAME'
        DataSource = DM.DataSource3
        TabOrder = 2
      end
      object btn_dept_post: TButton
        Left = 316
        Top = 204
        Width = 75
        Height = 25
        Caption = 'post'
        TabOrder = 3
        OnClick = btn_dept_postClick
      end
      object btn_dept_delete: TButton
        Left = 316
        Top = 164
        Width = 75
        Height = 25
        Caption = 'delete'
        TabOrder = 4
        OnClick = btn_dept_deleteClick
      end
      object combo_dteam: TDBComboBox
        Left = 288
        Top = 24
        Width = 89
        Height = 21
        DataField = 'DTEAM'
        DataSource = DM.DataSource3
        Items.Strings = (
          '1'#54016
          '2'#54016
          '3'#54016
          '4'#54016' ')
        TabOrder = 5
      end
    end
    object TabSheet4: TTabSheet
      Caption = #51312#51649#46020
      ImageIndex = 3
      inline Frame11: TFrame1
        Left = -151
        Top = -53
        Width = 545
        Height = 298
        TabOrder = 0
        ExplicitLeft = -151
        ExplicitTop = -53
        inherited TreeView1: TTreeView
          Left = 151
          Top = 53
          Width = 194
          Height = 242
          ExplicitLeft = 151
          ExplicitTop = 53
          ExplicitWidth = 194
          ExplicitHeight = 242
        end
        inherited ListView1: TListView
          Left = 351
          Top = 53
          Width = 191
          Height = 242
          ExplicitLeft = 351
          ExplicitTop = 53
          ExplicitWidth = 191
          ExplicitHeight = 242
        end
        inherited dept_query: TSQLQuery
          Left = 184
        end
        inherited emp_query: TSQLQuery
          Active = False
          SQL.Strings = (
            'select name,phone'
            'from emp '
            'where eteam, eteam')
        end
      end
    end
  end
end
