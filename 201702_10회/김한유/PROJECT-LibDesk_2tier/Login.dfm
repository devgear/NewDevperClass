object LoginForm: TLoginForm
  Left = 0
  Top = 0
  Caption = 'LoginForm'
  ClientHeight = 619
  ClientWidth = 809
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 120
  TextHeight = 16
  object LoginBack: TPanel
    Left = 0
    Top = 0
    Width = 809
    Height = 619
    Align = alClient
    Color = clHighlight
    ParentBackground = False
    TabOrder = 0
    object LoginCenter: TPanel
      Left = 120
      Top = 112
      Width = 577
      Height = 425
      Color = clWhite
      ParentBackground = False
      TabOrder = 0
      DesignSize = (
        577
        425)
      object Label1: TLabel
        Left = 65
        Top = 136
        Width = 90
        Height = 41
        Anchors = [akLeft, akTop, akRight, akBottom]
        Caption = #50500#51060#46356
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -33
        Font.Name = 'Tmon'#47788#49548#47532' Black'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 65
        Top = 191
        Width = 120
        Height = 41
        Anchors = [akLeft, akTop, akRight, akBottom]
        Caption = #48708#48128#48264#54840
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -33
        Font.Name = 'Tmon'#47788#49548#47532' Black'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object hilogin: TLabel
        Left = 240
        Top = 48
        Width = 4
        Height = 16
      end
      object EditID: TEdit
        Left = 264
        Top = 140
        Width = 225
        Height = 39
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -25
        Font.Name = 'Tmon'#47788#49548#47532' Black'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object EditPW: TEdit
        Left = 264
        Top = 191
        Width = 225
        Height = 39
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -25
        Font.Name = 'Tmon'#47788#49548#47532' Black'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
      object Pnl_Login: TPanel
        Left = 166
        Top = 288
        Width = 118
        Height = 50
        Caption = #47196#44536#51064
        Color = clHighlight
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -20
        Font.Name = 'Tmon'#47788#49548#47532'OTF Black'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 2
        OnClick = btnLoginClick
      end
      object Panel1: TPanel
        Left = 328
        Top = 288
        Width = 118
        Height = 50
        Caption = #54924#50896#44032#51077
        Color = clHighlight
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -20
        Font.Name = 'Tmon'#47788#49548#47532'OTF Black'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 3
        OnClick = btnInsertClick
      end
    end
  end
  object LoginSource: TDataSource
    DataSet = DataAccess.qryUser
    Left = 725
    Top = 80
  end
end
