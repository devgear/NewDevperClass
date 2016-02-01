object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 548
  ClientWidth = 969
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Pagecontrol: TPageControl
    Left = 0
    Top = 0
    Width = 969
    Height = 548
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = #49884#45824
      ImageIndex = 2
      object Label11: TLabel
        Left = 11
        Top = 19
        Width = 38
        Height = 31
        Caption = #49884#45824
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'KBIZ'#54620#47560#51020#44256#46357' M'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label12: TLabel
        Left = 377
        Top = 56
        Width = 63
        Height = 13
        Caption = #45936#51060#53552' '#49688#51221
      end
      object Label14: TLabel
        Left = 424
        Top = 99
        Width = 24
        Height = 13
        Caption = #49884#45824
      end
      object DBGrid5: TDBGrid
        Left = 3
        Top = 56
        Width = 320
        Height = 354
        DataSource = DM.TimesDS
        Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object DBNavigator5: TDBNavigator
        Left = 163
        Top = 19
        Width = 160
        Height = 31
        DataSource = DM.TimesDS
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
        TabOrder = 1
      end
      object DBEdit3: TDBEdit
        Left = 504
        Top = 96
        Width = 121
        Height = 21
        DataField = 'H_Times'
        DataSource = DM.TimesDS
        TabOrder = 2
      end
      object Button1: TButton
        Left = 424
        Top = 160
        Width = 89
        Height = 33
        Caption = #49688#51221
        TabOrder = 3
        OnClick = Button1Click
      end
      object Button2: TButton
        Left = 552
        Top = 160
        Width = 89
        Height = 33
        Caption = #51200#51109
        TabOrder = 4
        OnClick = Button2Click
      end
      object Button4: TButton
        Left = 552
        Top = 216
        Width = 89
        Height = 33
        Caption = #52712#49548
        TabOrder = 5
        OnClick = Button4Click
      end
      object Button3: TButton
        Left = 424
        Top = 216
        Width = 89
        Height = 33
        Caption = #49325#51228
        TabOrder = 6
        OnClick = Button3Click
      end
    end
    object TabSheet7: TTabSheet
      Caption = #51064#47932
      ImageIndex = 3
      object Label3: TLabel
        Left = 3
        Top = 11
        Width = 38
        Height = 31
        Caption = #51064#47932
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'KBIZ'#54620#47560#51020#44256#46357' M'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 881
        Top = 3
        Width = 63
        Height = 13
        Caption = #45936#51060#53552' '#49688#51221
      end
      object Label7: TLabel
        Left = 712
        Top = 208
        Width = 24
        Height = 13
        Caption = #51060#47492
      end
      object Label8: TLabel
        Left = 712
        Top = 259
        Width = 24
        Height = 13
        Caption = #49884#45824
      end
      object Label1: TLabel
        Left = 712
        Top = 296
        Width = 24
        Height = 13
        Caption = #50629#51201
      end
      object Label2: TLabel
        Left = 712
        Top = 24
        Width = 36
        Height = 13
        Caption = #51060#48120#51648
      end
      object DBNavigator2: TDBNavigator
        Left = 168
        Top = 27
        Width = 160
        Height = 31
        DataSource = DM.PersonDS
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
        TabOrder = 0
      end
      object DBGrid2: TDBGrid
        Left = 19
        Top = 64
        Width = 654
        Height = 354
        DataSource = DM.PersonDS
        Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object DBEdit2: TDBEdit
        Left = 784
        Top = 205
        Width = 121
        Height = 21
        DataField = 'P_NAME'
        DataSource = DM.PersonDS
        TabOrder = 2
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 784
        Top = 251
        Width = 121
        Height = 21
        DataField = 'P_H_ID'
        DataSource = DM.PersonDS
        KeyField = 'H_ID'
        ListField = 'H_TIMES'
        ListSource = DM.TimesDS
        TabOrder = 3
      end
      object Button5: TButton
        Left = 712
        Top = 360
        Width = 81
        Height = 33
        Caption = #52628#44032
        TabOrder = 4
        OnClick = Button5Click
      end
      object Button6: TButton
        Left = 824
        Top = 360
        Width = 81
        Height = 33
        Caption = #51200#51109
        TabOrder = 5
        OnClick = Button6Click
      end
      object Button7: TButton
        Left = 712
        Top = 416
        Width = 81
        Height = 33
        Caption = #49325#51228
        TabOrder = 6
        OnClick = Button7Click
      end
      object Button8: TButton
        Left = 824
        Top = 416
        Width = 81
        Height = 33
        Caption = #52712#49548
        TabOrder = 7
        OnClick = Button8Click
      end
      object DBImage1: TDBImage
        Left = 776
        Top = 43
        Width = 129
        Height = 156
        DataField = 'P_PHOTO'
        DataSource = DM.PersonDS
        Stretch = True
        TabOrder = 8
        OnClick = DBImage1Click
      end
      object DBEdit1: TDBEdit
        Left = 784
        Top = 293
        Width = 174
        Height = 21
        DataField = 'P_ACHIEVEMENT'
        DataSource = DM.PersonDS
        TabOrder = 9
      end
    end
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Left = 480
    Top = 280
  end
end
