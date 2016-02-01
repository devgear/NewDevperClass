object S_Form: TS_Form
  Left = 0
  Top = 0
  Caption = #44288#44305#51648' '#47785#47197
  ClientHeight = 303
  ClientWidth = 491
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
  object Sights_Grid: TDBGrid
    Left = 0
    Top = 41
    Width = 491
    Height = 262
    Align = alClient
    DataSource = DM.Sights_Source
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
        FieldName = 'S_NO'
        Title.Caption = #44288#44305#51648' '#48264#54840
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'S_NAME'
        Title.Caption = #44288#44305#51648' '#47749
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'S_ADDRESS'
        Title.Caption = #44288#44305#51648' '#51452#49548
        Width = 195
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 491
    Height = 41
    Align = alTop
    Caption = #44288' '#44305' '#51648'   '#47785' '#47197
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object Btn_Sclose: TButton
      Left = 415
      Top = 1
      Width = 75
      Height = 39
      Align = alRight
      Caption = #51333#47308
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = Btn_ScloseClick
    end
  end
end
