object proForm: TproForm
  Left = 0
  Top = 0
  Caption = 'proForm'
  ClientHeight = 533
  ClientWidth = 785
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 785
    Height = 533
    ActivePage = TabSheet2
    Align = alClient
    TabOrder = 0
    object d: TTabSheet
      Caption = #51312#54924
      object Label1: TLabel
        Left = 592
        Top = 65
        Width = 177
        Height = 17
        AutoSize = False
        Caption = 'ProJect Information'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 0
        Top = 19
        Width = 24
        Height = 13
        Caption = #44160#49353
      end
      object DBGrid1: TDBGrid
        Left = 0
        Top = 88
        Width = 774
        Height = 414
        DataSource = Dm.FDproSouerce
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
            FieldName = 'P_ID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'P_NAME'
            Width = 145
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'P_STARTDATE'
            Width = 171
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'P_ENDDATE'
            Width = 159
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'P_MANAGER_ID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'P_MEMBERCOUNT'
            Width = 65
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'P_STATUS'
            Width = 63
            Visible = True
          end>
      end
      object Edit1: TEdit
        Left = 0
        Top = 38
        Width = 121
        Height = 21
        TabOrder = 1
      end
      object DBNavigator1: TDBNavigator
        Left = 133
        Top = 50
        Width = 400
        Height = 32
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
        TabOrder = 2
      end
    end
    object TabSheet2: TTabSheet
      Caption = #54200#51665
      ImageIndex = 1
      object Label2: TLabel
        Left = 48
        Top = 112
        Width = 113
        Height = 25
        AutoSize = False
        Caption = #54532#47196#51229#53944' '#51060#47492
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 48
        Top = 160
        Width = 97
        Height = 17
        AutoSize = False
        Caption = #54532#47196#51229#53944' '#49884#51089
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 48
        Top = 253
        Width = 97
        Height = 17
        AutoSize = False
        Caption = #44288'  '#47532'  '#51088'  '#47749
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 48
        Top = 309
        Width = 97
        Height = 20
        AutoSize = False
        Caption = #52280'  '#50668'  '#51064'  '#50896
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 48
        Top = 364
        Width = 81
        Height = 21
        AutoSize = False
        Caption = #54788'         '#54889
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label9: TLabel
        Left = 48
        Top = 205
        Width = 97
        Height = 17
        AutoSize = False
        Caption = #54532#47196#51229#53944' '#51333#47308
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object ProForm: TButton
        Left = 464
        Top = 103
        Width = 81
        Height = 41
        Caption = #52628#44032
        TabOrder = 0
        OnClick = ProFormClick
      end
      object Button2: TButton
        Left = 464
        Top = 186
        Width = 81
        Height = 41
        Caption = #51200#51109
        TabOrder = 1
        OnClick = Button2Click
      end
      object Button3: TButton
        Left = 464
        Top = 344
        Width = 81
        Height = 41
        Caption = #52712#49548
        TabOrder = 2
        OnClick = Button3Click
      end
      object DBEdit3: TDBEdit
        Left = 200
        Top = 161
        Width = 129
        Height = 21
        DataField = 'P_STARTDATE'
        DataSource = Dm.FDproSouerce
        MaxLength = 10
        TabOrder = 3
      end
      object DBEdit4: TDBEdit
        Left = 200
        Top = 206
        Width = 129
        Height = 21
        DataField = 'P_ENDDATE'
        DataSource = Dm.FDproSouerce
        MaxLength = 10
        TabOrder = 4
      end
      object DBEdit2: TDBEdit
        Left = 200
        Top = 113
        Width = 129
        Height = 21
        DataField = 'P_NAME'
        DataSource = Dm.FDproSouerce
        TabOrder = 5
      end
      object DBEdit6: TDBEdit
        Left = 200
        Top = 310
        Width = 129
        Height = 21
        HelpType = htKeyword
        DataField = 'P_MEMBERCOUNT'
        DataSource = Dm.FDproSouerce
        TabOrder = 6
      end
      object DBEdit7: TDBEdit
        Left = 200
        Top = 365
        Width = 129
        Height = 21
        DataField = 'P_STATUS'
        DataSource = Dm.FDproSouerce
        TabOrder = 7
      end
      object Button1: TButton
        Left = 464
        Top = 266
        Width = 81
        Height = 41
        Caption = #49325#51228
        TabOrder = 8
        OnClick = Button1Click
      end
      object DBComboBox1: TDBComboBox
        Left = 200
        Top = 254
        Width = 129
        Height = 21
        DataField = 'M_NAME'
        DataSource = Dm.FDMemSource
        TabOrder = 9
      end
    end
  end
end
