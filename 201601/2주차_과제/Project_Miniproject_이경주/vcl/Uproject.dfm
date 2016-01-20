object project: Tproject
  Left = 0
  Top = 0
  Caption = #54532#47196#51229#53944' '#44288#47532
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
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl: TPageControl
    Left = 8
    Top = 8
    Width = 402
    Height = 273
    ActivePage = TabSheet2
    TabOrder = 0
    object TabSheet3: TTabSheet
      Caption = #51312#54924
      ImageIndex = 2
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 394
        Height = 245
        Align = alClient
        DataSource = DM.DataSource1
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
      object lb_pname: TLabel
        Left = 3
        Top = 27
        Width = 63
        Height = 13
        Caption = #54532#47196#51229#53944' '#47749
      end
      object Label8: TLabel
        Left = 3
        Top = 75
        Width = 51
        Height = 13
        Caption = #49884#51089' '#45216#51676
      end
      object Label9: TLabel
        Left = 3
        Top = 123
        Width = 51
        Height = 13
        Caption = #51333#47308' '#45216#51676
      end
      object lb_pmanager: TLabel
        Left = 201
        Top = 27
        Width = 36
        Height = 13
        Caption = #44288#47532#51088
      end
      object Label11: TLabel
        Left = 201
        Top = 75
        Width = 51
        Height = 13
        Caption = #51652#54665' '#49345#53468
      end
      object Label12: TLabel
        Left = 201
        Top = 123
        Width = 51
        Height = 13
        Caption = #52280#50668' '#51064#50896
      end
      object btn_pro_delete: TButton
        Left = 316
        Top = 164
        Width = 75
        Height = 25
        Caption = 'delete'
        TabOrder = 0
        OnClick = btn_pro_deleteClick
      end
      object edit_pname: TDBEdit
        Left = 72
        Top = 24
        Width = 95
        Height = 21
        DataField = 'PNAME'
        DataSource = DM.DataSource1
        TabOrder = 1
        OnChange = edit_pnameChange
      end
      object DBEdit5: TDBEdit
        Left = 274
        Top = 72
        Width = 95
        Height = 21
        DataField = 'PDURING'
        DataSource = DM.DataSource1
        TabOrder = 2
      end
      object edit_ppersons: TDBEdit
        Left = 274
        Top = 120
        Width = 95
        Height = 21
        DataField = 'PPERSON'
        DataSource = DM.DataSource1
        TabOrder = 3
      end
      object combo_pmanager: TDBLookupComboBox
        Left = 274
        Top = 24
        Width = 95
        Height = 21
        DataField = 'PMANAGER'
        DataSource = DM.DataSource1
        KeyField = 'ENAME'
        ListField = 'ENAME'
        ListSource = DM.DataSource2
        TabOrder = 4
      end
      object btn_pro_cancel: TButton
        Left = 218
        Top = 204
        Width = 75
        Height = 25
        Caption = 'cancel'
        TabOrder = 5
        OnClick = btn_pro_cancelClick
      end
      object btn_pro_post: TButton
        Left = 316
        Top = 204
        Width = 75
        Height = 25
        Caption = 'post'
        TabOrder = 6
        OnClick = btn_pro_postClick
      end
      object edit_pstartd: TDBEdit
        Left = 74
        Top = 72
        Width = 95
        Height = 21
        DataField = 'PSTARTD'
        DataSource = DM.DataSource1
        TabOrder = 7
      end
      object edit_endd: TDBEdit
        Left = 74
        Top = 120
        Width = 95
        Height = 21
        DataField = 'PENDD'
        DataSource = DM.DataSource1
        TabOrder = 8
      end
      object btn_pro_insert: TButton
        Left = 218
        Top = 164
        Width = 75
        Height = 25
        Caption = 'insert'
        TabOrder = 9
        OnClick = Button4Click
      end
    end
  end
end
