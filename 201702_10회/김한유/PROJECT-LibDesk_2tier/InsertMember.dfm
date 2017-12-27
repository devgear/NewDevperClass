object InsertForm: TInsertForm
  Left = 0
  Top = 0
  Caption = 'InsertForm'
  ClientHeight = 559
  ClientWidth = 764
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
    Width = 764
    Height = 559
    Align = alClient
    Color = clHighlight
    ParentBackground = False
    TabOrder = 0
    object LoginCenter: TPanel
      Left = 88
      Top = 46
      Width = 593
      Height = 466
      Color = clWhite
      ParentBackground = False
      TabOrder = 0
      DesignSize = (
        593
        466)
      object Label1: TLabel
        Left = 49
        Top = 126
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
        Left = 49
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
      object Label3: TLabel
        Left = 49
        Top = 59
        Width = 60
        Height = 41
        Anchors = [akLeft, akTop, akRight, akBottom]
        Caption = #51060#47492
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -33
        Font.Name = 'Tmon'#47788#49548#47532' Black'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 49
        Top = 256
        Width = 120
        Height = 41
        Anchors = [akLeft, akTop, akRight, akBottom]
        Caption = #51204#54868#48264#54840
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -33
        Font.Name = 'Tmon'#47788#49548#47532' Black'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 49
        Top = 319
        Width = 90
        Height = 41
        Anchors = [akLeft, akTop, akRight, akBottom]
        Caption = #51060#47700#51068
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -33
        Font.Name = 'Tmon'#47788#49548#47532' Black'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object editName: TDBEdit
        Left = 248
        Top = 56
        Width = 257
        Height = 49
        DataField = 'USER_NAME'
        DataSource = InsertSource
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -33
        Font.Name = 'Tmon'#47788#49548#47532' Black'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object editId: TDBEdit
        Left = 248
        Top = 123
        Width = 257
        Height = 49
        DataField = 'USER_ID'
        DataSource = InsertSource
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -33
        Font.Name = 'Tmon'#47788#49548#47532' Black'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
      object editPw: TDBEdit
        Left = 248
        Top = 188
        Width = 257
        Height = 49
        DataField = 'USER_PW'
        DataSource = InsertSource
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -33
        Font.Name = 'Tmon'#47788#49548#47532' Black'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
      object editPhone: TDBEdit
        Left = 248
        Top = 253
        Width = 257
        Height = 49
        DataField = 'USER_PHONE'
        DataSource = InsertSource
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -33
        Font.Name = 'Tmon'#47788#49548#47532' Black'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
      end
      object editMail: TDBEdit
        Left = 248
        Top = 319
        Width = 257
        Height = 49
        DataField = 'USER_MAIL'
        DataSource = InsertSource
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -33
        Font.Name = 'Tmon'#47788#49548#47532' Black'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
      end
      object Pnl_Insert: TPanel
        Left = 248
        Top = 392
        Width = 169
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
        TabOrder = 5
        OnClick = btnInsertClick
      end
      object Pnl_DupID: TPanel
        Left = 511
        Top = 131
        Width = 73
        Height = 39
        Caption = #51473#48373#52404#53356
        Color = clHighlight
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -17
        Font.Name = 'Tmon'#47788#49548#47532'OTF Black'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 6
        OnClick = DupIDClick
      end
    end
  end
  object InsertSource: TDataSource
    DataSet = DataAccess.qryUser
    Left = 717
    Top = 16
  end
end
