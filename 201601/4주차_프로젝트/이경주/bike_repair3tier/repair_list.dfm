object Repairlist: TRepairlist
  Left = 0
  Top = 0
  Caption = #49688#47532' '#45236#50669
  ClientHeight = 440
  ClientWidth = 599
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
    Width = 583
    Height = 424
    ActivePage = TabSheet2
    TabOrder = 0
    object TabSheet2: TTabSheet
      Caption = #51312#54924' & '#52636#51109' '
      ImageIndex = 1
      object Label1: TLabel
        Left = 24
        Top = 16
        Width = 87
        Height = 13
        Caption = #49688' '#47532' '#44277'      '#48264' '#54840
      end
      object Label2: TLabel
        Left = 24
        Top = 51
        Width = 87
        Height = 13
        Caption = #51060'                     '#47492
      end
      object Label3: TLabel
        Left = 294
        Top = 51
        Width = 87
        Height = 13
        Caption = #49688#47532#44277' '#51204#54868#48264#54840
      end
      object Label4: TLabel
        Left = 24
        Top = 85
        Width = 87
        Height = 13
        Caption = #44540'     '#49549'     '#50672'   '#49688
      end
      object Label5: TLabel
        Left = 24
        Top = 119
        Width = 87
        Height = 13
        Caption = #46321'   '#47197'       '#51068'   '#51088
      end
      object Label6: TLabel
        Left = 300
        Top = 16
        Width = 81
        Height = 13
        Caption = #49345'                   '#53468
      end
      object DBEdit1: TDBEdit
        Left = 128
        Top = 8
        Width = 121
        Height = 21
        DataField = 'RKEY'
        DataSource = dm1.repairmanDS
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 128
        Top = 43
        Width = 121
        Height = 21
        DataField = 'RNAME'
        DataSource = dm1.repairmanDS
        TabOrder = 1
      end
      object DBEdit3: TDBEdit
        Left = 408
        Top = 43
        Width = 121
        Height = 21
        DataField = 'RPHONE'
        DataSource = dm1.repairmanDS
        TabOrder = 2
      end
      object DBEdit4: TDBEdit
        Left = 128
        Top = 77
        Width = 121
        Height = 21
        DataField = 'RCAREER'
        DataSource = dm1.repairmanDS
        TabOrder = 3
      end
      object DBEdit5: TDBEdit
        Left = 128
        Top = 111
        Width = 121
        Height = 21
        DataField = 'RJOIN'
        DataSource = dm1.repairmanDS
        TabOrder = 4
      end
      object Button1: TButton
        Left = 316
        Top = 70
        Width = 65
        Height = 61
        Caption = #52636#51109
        TabOrder = 5
      end
      object Button2: TButton
        Left = 432
        Top = 70
        Width = 65
        Height = 61
        Caption = #52712#49548
        TabOrder = 6
      end
      object DBComboBox1: TDBComboBox
        Left = 408
        Top = 8
        Width = 121
        Height = 21
        DataField = 'RSTATE'
        DataSource = dm1.repairmanDS
        TabOrder = 7
      end
      object DBGrid1: TDBGrid
        Left = 24
        Top = 138
        Width = 505
        Height = 231
        DataSource = dm1.repairlistDS
        Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 8
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
    end
    object TabSheet3: TTabSheet
      Caption = #44536#47000#54532
      ImageIndex = 2
    end
  end
end
