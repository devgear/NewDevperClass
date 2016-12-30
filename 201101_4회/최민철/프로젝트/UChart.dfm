object Chart: TChart
  Left = 0
  Top = 0
  Width = 451
  Height = 304
  Align = alClient
  TabOrder = 0
  object DBChart1: TDBChart
    Left = 0
    Top = 0
    Width = 451
    Height = 304
    Title.Font.Height = -25
    Title.Text.Strings = (
      #46076#51648#44256#44592#54032#47588#50984)
    DepthAxis.Automatic = False
    DepthAxis.AutomaticMaximum = False
    DepthAxis.AutomaticMinimum = False
    DepthAxis.Maximum = -0.500000000000000000
    DepthAxis.Minimum = -0.500000000000000000
    DepthTopAxis.Automatic = False
    DepthTopAxis.AutomaticMaximum = False
    DepthTopAxis.AutomaticMinimum = False
    DepthTopAxis.Maximum = -0.500000000000000000
    DepthTopAxis.Minimum = -0.500000000000000000
    LeftAxis.Automatic = False
    LeftAxis.AutomaticMaximum = False
    LeftAxis.AutomaticMinimum = False
    Legend.LegendStyle = lsSeriesGroups
    Legend.TextStyle = ltsPlain
    RightAxis.Automatic = False
    RightAxis.AutomaticMaximum = False
    RightAxis.AutomaticMinimum = False
    View3DOptions.Elevation = 315
    View3DOptions.Orthogonal = False
    View3DOptions.Perspective = 0
    View3DOptions.Rotation = 360
    Align = alClient
    TabOrder = 0
    PrintMargins = (
      15
      22
      15
      22)
    ColorPaletteIndex = 13
    object ComboBox1: TComboBox
      Left = 4
      Top = 21
      Width = 116
      Height = 21
      ImeName = 'Microsoft Office IME 2007'
      TabOrder = 0
      Text = 'ComboBox1'
      OnChange = ComboBox1Change
      OnEnter = ComboBox1Enter
    end
    object Series1: TPieSeries
      Cursor = crCross
      Marks.Arrow.Visible = True
      Marks.Callout.Brush.Color = clBlack
      Marks.Callout.Arrow.Visible = True
      Marks.Emboss.Color = 8553090
      Marks.MultiLine = True
      Marks.Shadow.Color = 8816262
      Marks.Style = smsLabelValue
      Marks.Visible = True
      DataSource = dm.SalseChartQuery
      XLabelsSource = 'C_NAME'
      XValues.Order = loAscending
      YValues.Name = 'Pie'
      YValues.Order = loNone
      YValues.ValueSource = 'SUM'
      Gradient.Direction = gdRadial
      OtherSlice.Legend.Visible = False
      OtherSlice.Style = poBelowPercent
      PieValues.Name = 'Pie'
      PieValues.Order = loNone
      PieValues.ValueSource = 'SUM'
      Frame.InnerBrush.BackColor = clRed
      Frame.InnerBrush.Gradient.EndColor = clGray
      Frame.InnerBrush.Gradient.MidColor = clWhite
      Frame.InnerBrush.Gradient.StartColor = 4210752
      Frame.InnerBrush.Gradient.Visible = True
      Frame.MiddleBrush.BackColor = clYellow
      Frame.MiddleBrush.Gradient.EndColor = 8553090
      Frame.MiddleBrush.Gradient.MidColor = clWhite
      Frame.MiddleBrush.Gradient.StartColor = clGray
      Frame.MiddleBrush.Gradient.Visible = True
      Frame.OuterBrush.BackColor = clGreen
      Frame.OuterBrush.Gradient.EndColor = 4210752
      Frame.OuterBrush.Gradient.MidColor = clWhite
      Frame.OuterBrush.Gradient.StartColor = clSilver
      Frame.OuterBrush.Gradient.Visible = True
      Frame.ParentSeries = Series1
      Frame.Visible = False
      Frame.Width = 4
    end
  end
end
