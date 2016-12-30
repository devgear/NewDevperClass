object searchform: Tsearchform
  Left = 0
  Top = 0
  Caption = #54924#50896#44160#49353
  ClientHeight = 380
  ClientWidth = 597
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 597
    Height = 380
    Align = alClient
    Caption = 'Panel1'
    TabOrder = 0
    ExplicitHeight = 385
    object Label1: TLabel
      Left = 48
      Top = 53
      Width = 39
      Height = 13
      Caption = #44160'     '#49353
    end
    object DBGrid1: TDBGrid
      Left = 23
      Top = 104
      Width = 538
      Height = 225
      DataSource = DM.CustomSource
      ImeName = 'Microsoft IME 2003'
      Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
    object Button1: TButton
      Left = 320
      Top = 40
      Width = 97
      Height = 41
      Caption = #54869#51064
      TabOrder = 1
      OnClick = Button1Click
    end
    object Edit1: TEdit
      Left = 120
      Top = 50
      Width = 121
      Height = 21
      ImeName = 'Microsoft IME 2003'
      TabOrder = 2
      OnChange = Edit1Change
    end
  end
end
