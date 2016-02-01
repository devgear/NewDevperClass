object R_Form: TR_Form
  Left = 0
  Top = 0
  Caption = #51020#49885#51216' '#47785#47197
  ClientHeight = 365
  ClientWidth = 533
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
  object DBGrid1: TDBGrid
    Left = 0
    Top = 41
    Width = 533
    Height = 324
    Align = alClient
    DataSource = DM.Rest_Source
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
        FieldName = 'R_NO'
        Title.Caption = #48264#54840
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'R_NAME'
        Title.Caption = #51020#49885#51216' '#51060#47492
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'R_ADDRESS'
        Title.Caption = #51452#49548
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'R_PHONE'
        Title.Caption = #51204#54868#48264#54840
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'R_SNO'
        Title.Caption = #44288#44305#51648' '#48264#54840
        Width = 70
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 533
    Height = 41
    Align = alTop
    Caption = #51020' '#49885' '#51216'   '#47785' '#47197
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object Btn_Rclose: TButton
      Left = 457
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
      OnClick = Btn_RcloseClick
    end
  end
end
