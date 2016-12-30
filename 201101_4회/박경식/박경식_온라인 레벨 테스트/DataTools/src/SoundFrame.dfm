object frmSound: TfrmSound
  Left = 0
  Top = 0
  Width = 624
  Height = 86
  Margins.Left = 0
  Margins.Top = 0
  Margins.Right = 0
  Margins.Bottom = 0
  TabOrder = 0
  object Panelplayer: TPanel
    Left = 0
    Top = 0
    Width = 624
    Height = 86
    Align = alTop
    BevelKind = bkTile
    BevelOuter = bvNone
    Ctl3D = True
    ParentCtl3D = False
    TabOrder = 0
    DesignSize = (
      620
      82)
    object sbtStop: TSpeedButton
      Left = 53
      Top = 41
      Width = 23
      Height = 22
      Caption = #9632
      Flat = True
    end
    object lblTime: TLabel
      AlignWithMargins = True
      Left = 86
      Top = 46
      Width = 28
      Height = 13
      Margins.Left = 5
      Margins.Top = 5
      Caption = '00:00'
    end
    object sbtPlay: TSpeedButton
      Left = 19
      Top = 41
      Width = 23
      Height = 22
      Caption = #9654
      Flat = True
    end
    object sbtPause: TSpeedButton
      Left = 36
      Top = 41
      Width = 23
      Height = 22
      Caption = #8741
      Flat = True
    end
    object TrackBar: TDSTrackBar
      AlignWithMargins = True
      Left = 121
      Top = 44
      Width = 103
      Height = 21
      Margins.Left = 0
      Margins.Top = 2
      Margins.Right = 0
      Margins.Bottom = 0
      TabOrder = 2
      TabStop = False
      ThumbLength = 15
      TickMarks = tmBoth
      TickStyle = tsNone
      TimerInterval = 10
    end
    object MemoSoundUrl: TMemo
      Left = 227
      Top = 44
      Width = 241
      Height = 20
      Anchors = [akLeft, akTop, akRight]
      ImeName = 'Microsoft Office IME 2007'
      TabOrder = 0
    end
    object PanelSountInOut: TPanel
      Left = 485
      Top = 35
      Width = 135
      Height = 47
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 1
      ExplicitTop = 0
      ExplicitHeight = 82
      object btSoundUpload: TButton
        Left = 74
        Top = 6
        Width = 57
        Height = 25
        Caption = #50629#47196#46300
        TabOrder = 1
        OnClick = btSoundUploadClick
      end
      object btSoundDown: TButton
        Left = 11
        Top = 6
        Width = 57
        Height = 25
        Caption = #45796#50868#47196#46300
        TabOrder = 0
        OnClick = btSoundDownClick
      end
    end
    object Panel1: TPanel
      Left = 0
      Top = 0
      Width = 620
      Height = 35
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 3
      object lbSound: TLabel
        Left = 17
        Top = 18
        Width = 52
        Height = 14
        Caption = #51020#50896#51077#47141
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowFrame
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object pnDirSelect: TPanel
        Left = 152
        Top = 0
        Width = 468
        Height = 35
        Align = alRight
        Alignment = taLeftJustify
        BevelKind = bkTile
        BevelOuter = bvNone
        TabOrder = 0
        object Label1: TLabel
          Left = 3
          Top = 8
          Width = 79
          Height = 14
          Caption = #45796#50868#47196#46300' DIR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowFrame
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object edDir: TEdit
          Left = 88
          Top = 6
          Width = 313
          Height = 21
          ImeName = 'Microsoft Office IME 2007'
          TabOrder = 0
        end
        object btDir: TButton
          Left = 407
          Top = 4
          Width = 51
          Height = 25
          Caption = 'Select'
          TabOrder = 1
          OnClick = btDirClick
        end
      end
    end
  end
  object FolderDialog1: TFolderDialog
    DialogX = 0
    DialogY = 0
    Version = '1.1.0.1'
    Left = 384
    Top = 8
  end
  object OpenDialog1: TOpenDialog
    Left = 272
    Top = 8
  end
end
