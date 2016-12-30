object CusForm: TCusForm
  Left = 0
  Top = 0
  Caption = #54924#50896#44288#47532
  ClientHeight = 465
  ClientWidth = 641
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = -363
    Width = 641
    Height = 828
    Align = alBottom
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 2
      Top = 627
      Width = 639
      Height = 176
      Align = alCustom
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
  end
  object panel2: TPanel
    Left = 0
    Top = 0
    Width = 641
    Height = 209
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      Left = 48
      Top = 60
      Width = 48
      Height = 13
      Caption = #46321#47197#48264#54840
    end
    object Label2: TLabel
      Left = 48
      Top = 100
      Width = 24
      Height = 13
      Caption = #51060#47492
    end
    object Label3: TLabel
      Left = 48
      Top = 143
      Width = 48
      Height = 13
      Caption = #51204#54868#48264#54840
    end
    object Label4: TLabel
      Left = 296
      Top = 60
      Width = 24
      Height = 13
      Caption = #51452#49548
    end
    object Label5: TLabel
      Left = 296
      Top = 98
      Width = 48
      Height = 13
      Caption = #47732#54728#48264#54840
    end
    object Label6: TLabel
      Left = 296
      Top = 143
      Width = 48
      Height = 13
      Caption = #51452#48124#48264#54840
    end
    object Edit1: TEdit
      Left = 120
      Top = 57
      Width = 121
      Height = 21
      ImeName = 'Microsoft IME 2003'
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 120
      Top = 95
      Width = 121
      Height = 21
      ImeName = 'Microsoft IME 2003'
      TabOrder = 1
    end
    object Edit3: TEdit
      Left = 120
      Top = 140
      Width = 121
      Height = 21
      ImeName = 'Microsoft IME 2003'
      TabOrder = 2
    end
    object Edit4: TEdit
      Left = 368
      Top = 57
      Width = 121
      Height = 21
      ImeName = 'Microsoft IME 2003'
      TabOrder = 3
    end
    object Edit5: TEdit
      Left = 368
      Top = 95
      Width = 121
      Height = 21
      ImeName = 'Microsoft IME 2003'
      TabOrder = 4
    end
    object Edit6: TEdit
      Left = 368
      Top = 140
      Width = 121
      Height = 21
      ImeName = 'Microsoft IME 2003'
      TabOrder = 5
    end
    object Button1: TButton
      Left = 513
      Top = 121
      Width = 75
      Height = 60
      Caption = #51333#47308
      TabOrder = 6
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 513
      Top = 55
      Width = 75
      Height = 60
      Caption = #46321#47197
      TabOrder = 7
      OnClick = Button2Click
    end
  end
end
