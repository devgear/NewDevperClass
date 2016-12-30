object RB_Form: TRB_Form
  Left = 0
  Top = 0
  Caption = #51020#49885#51216' '#44172#49884#54032
  ClientHeight = 202
  ClientWidth = 447
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
    Width = 447
    Height = 161
    Align = alClient
    DataSource = DM.RBoard_Source
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
        FieldName = 'RB_NO'
        Title.Caption = #48264#54840
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RB_TITLE'
        Title.Caption = #51228#47785
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RB_MNO'
        Title.Caption = #44256#44061' '#48264#54840
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RB_GRADE'
        Title.Caption = #54217#51216
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RB_RNO'
        Title.Caption = #51020#49885#51216' '#48264#54840
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RB_MEMO'
        Title.Caption = #45236#50857
        Width = 300
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 447
    Height = 41
    Align = alTop
    Caption = #51020' '#49885' '#51216' '#44172' '#49884' '#54032'  '#47785' '#47197
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object Btn_RBclose: TButton
      Left = 371
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
      OnClick = Btn_RBcloseClick
    end
  end
end
