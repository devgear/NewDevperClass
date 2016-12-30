object RepairMan: TRepairMan
  Left = 0
  Top = 0
  Caption = #49688#47532#44592#49324
  ClientHeight = 361
  ClientWidth = 578
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 8
    Top = 8
    Width = 562
    Height = 287
    ActivePage = TabSheet2
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = #51312#54924
      object DBGrid1: TDBGrid
        Left = 3
        Top = 3
        Width = 548
        Height = 246
        DataSource = dm1.repairmanDS
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
      object Label1: TLabel
        Left = 16
        Top = 16
        Width = 75
        Height = 13
        Caption = #49688#47532#44592#49324' '#48264#54840
      end
      object Label2: TLabel
        Left = 16
        Top = 54
        Width = 24
        Height = 13
        Caption = #51060#47492
      end
      object Label3: TLabel
        Left = 16
        Top = 88
        Width = 36
        Height = 13
        Caption = #54256#48264#54840
      end
      object Label4: TLabel
        Left = 16
        Top = 128
        Width = 51
        Height = 13
        Caption = #44221#47141' '#50672#49688
      end
      object Label5: TLabel
        Left = 16
        Top = 168
        Width = 51
        Height = 13
        Caption = #46321#47197' '#45216#51676
      end
      object DBEdit1: TDBEdit
        Left = 120
        Top = 13
        Width = 121
        Height = 21
        DataField = 'RKEY'
        DataSource = dm1.repairmanDS
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 120
        Top = 50
        Width = 121
        Height = 21
        DataField = 'RNAME'
        DataSource = dm1.repairmanDS
        TabOrder = 1
      end
      object DBEdit3: TDBEdit
        Left = 120
        Top = 88
        Width = 121
        Height = 21
        DataField = 'RPHONE'
        DataSource = dm1.repairmanDS
        TabOrder = 2
      end
      object DBEdit4: TDBEdit
        Left = 120
        Top = 125
        Width = 121
        Height = 21
        DataField = 'RCAREER'
        DataSource = dm1.repairmanDS
        TabOrder = 3
      end
      object rman_add: TButton
        Left = 353
        Top = 144
        Width = 75
        Height = 25
        Caption = #52628#44032
        TabOrder = 4
        OnClick = rman_addClick
      end
      object rman_delete: TButton
        Left = 465
        Top = 200
        Width = 75
        Height = 25
        Caption = #49325#51228
        TabOrder = 5
        OnClick = rman_deleteClick
      end
      object rman_cancle: TButton
        Left = 353
        Top = 200
        Width = 75
        Height = 25
        Caption = #52712#49548
        TabOrder = 6
        OnClick = rman_cancleClick
      end
      object rman_post: TButton
        Left = 465
        Top = 144
        Width = 75
        Height = 25
        Caption = #51201#50857
        TabOrder = 7
        OnClick = rman_postClick
      end
      object DBEdit5: TDBEdit
        Left = 120
        Top = 165
        Width = 121
        Height = 21
        DataField = 'RJOIN'
        DataSource = dm1.repairmanDS
        TabOrder = 8
      end
      object Button1: TButton
        Left = 247
        Top = 163
        Width = 41
        Height = 25
        Caption = 'Today'
        TabOrder = 9
        OnClick = Button1Click
      end
    end
  end
end
