object frmPrepEA: TfrmPrepEA
  Left = 0
  Top = 0
  Caption = 'Batch2EA'
  ClientHeight = 567
  ClientWidth = 809
  Color = clWindow
  Ctl3D = False
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar: TStatusBar
    Left = 0
    Top = 548
    Width = 809
    Height = 19
    Panels = <
      item
        Width = 150
      end
      item
        Width = 200
      end
      item
        Width = 200
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 249
    Height = 548
    Align = alLeft
    TabOrder = 1
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 247
      Height = 41
      Align = alTop
      BevelEdges = []
      BevelOuter = bvNone
      Caption = 'Available Batches'
      Color = clActiveCaption
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
    end
    object DBgrdBatch: TDBGrid
      Left = 1
      Top = 42
      Width = 273
      Height = 464
      Hint = 'list of batches (not yet graphitized)'
      Align = alLeft
      DataSource = DataSource1
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnCellClick = DBgrdBatchCellClick
    end
    object Panel9: TPanel
      Left = 1
      Top = 506
      Width = 247
      Height = 41
      Align = alBottom
      Caption = 'Panel9'
      TabOrder = 2
      object btn_Refresh: TButton
        Left = 1
        Top = 1
        Width = 245
        Height = 39
        Align = alClient
        Caption = 'Refresh'
        TabOrder = 0
        OnClick = btn_RefreshClick
      end
    end
  end
  object Panel2: TPanel
    Left = 457
    Top = 0
    Width = 352
    Height = 548
    Align = alClient
    TabOrder = 2
    object Panel6: TPanel
      Left = 1
      Top = 1
      Width = 350
      Height = 41
      Align = alTop
      BevelOuter = bvNone
      Caption = 'EA Template'
      Color = clActiveCaption
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
    end
    object StrGrdEAData: TJvStringGrid
      Left = 1
      Top = 42
      Width = 350
      Height = 464
      Hint = 'template for EA'
      Align = alClient
      BevelEdges = []
      BevelInner = bvNone
      BevelOuter = bvNone
      DefaultRowHeight = 18
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnSelectCell = StrGrdEADataSelectCell
      Alignment = taLeftJustify
      FixedFont.Charset = DEFAULT_CHARSET
      FixedFont.Color = clWindowText
      FixedFont.Height = -11
      FixedFont.Name = 'Tahoma'
      FixedFont.Style = []
    end
    object Panel7: TPanel
      Left = 1
      Top = 506
      Width = 350
      Height = 41
      Align = alBottom
      TabOrder = 2
      object btnSetEAData: TButton
        Left = 240
        Top = 1
        Width = 109
        Height = 39
        Hint = 'send template to EA software'
        Align = alRight
        Caption = 'Send to EA'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnClick = btnSetEADataClick
      end
      object btn_remove_entry: TButton
        Left = 1
        Top = 1
        Width = 51
        Height = 39
        Hint = 'remove line from template'
        Align = alLeft
        Caption = '-'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnClick = btn_remove_entryClick
      end
      object btn_up: TButton
        Left = 112
        Top = 1
        Width = 49
        Height = 39
        Align = alCustom
        Caption = 'Up'
        TabOrder = 2
        OnClick = btn_upClick
      end
      object btn_down: TButton
        Left = 160
        Top = 1
        Width = 50
        Height = 39
        Align = alCustom
        Caption = 'Down'
        TabOrder = 3
        OnClick = btn_downClick
      end
      object btn_add_entry: TButton
        Left = 52
        Top = 1
        Width = 54
        Height = 39
        Align = alCustom
        Caption = '+'
        TabOrder = 4
        OnClick = btn_add_entryClick
      end
    end
  end
  object cbEAMethods: TComboBox
    Left = 555
    Top = 205
    Width = 145
    Height = 21
    DropDownCount = 30
    TabOrder = 3
    Visible = False
    OnExit = cbEAMethodsExit
  end
  object Panel3: TPanel
    Left = 249
    Top = 0
    Width = 208
    Height = 548
    Align = alLeft
    TabOrder = 4
    object Panel5: TPanel
      Left = 1
      Top = 1
      Width = 206
      Height = 41
      Align = alTop
      BevelOuter = bvNone
      Caption = 'Samples in Batch'
      Color = clActiveCaption
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
    end
    object grdsample: TJvStringGrid
      Left = 1
      Top = 42
      Width = 206
      Height = 464
      Hint = 'list of samples of the selected batch'
      Align = alClient
      BevelEdges = []
      BevelInner = bvNone
      BevelOuter = bvNone
      ColCount = 4
      DefaultColWidth = 50
      DefaultRowHeight = 18
      RowCount = 8
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      Alignment = taLeftJustify
      FixedFont.Charset = DEFAULT_CHARSET
      FixedFont.Color = clWindowText
      FixedFont.Height = -11
      FixedFont.Name = 'Tahoma'
      FixedFont.Style = []
    end
    object Panel8: TPanel
      Left = 1
      Top = 506
      Width = 206
      Height = 41
      Align = alBottom
      Caption = 'Panel8'
      TabOrder = 2
      object btnSendSamplesToEAgrid: TButton
        Left = 1
        Top = 1
        Width = 204
        Height = 39
        Hint = 'moves the samples to the EA template pane'
        Align = alClient
        Caption = 'move to template ->'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        WordWrap = True
        OnClick = btnSendSamplesToEAgridClick
      end
    end
  end
  object TCPClient1: TIdTCPClient
    ConnectTimeout = 0
    Host = '127.0.0.1'
    IPVersion = Id_IPv4
    Port = 1984
    ReadTimeout = 20
    Left = 112
    Top = 112
  end
  object dsCheckTargetNr: TDataSource
    DataSet = FDQueryCheckTargetNr
    Left = 424
    Top = 392
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'DriverID=MySQL')
    Left = 296
    Top = 88
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    Left = 296
    Top = 152
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 432
    Top = 152
  end
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    VendorLib = '\\psf\Home\my data\KTL\Software\GitHub\Batch2EA\libmySQL.dll'
    Left = 281
    Top = 392
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 281
    Top = 448
  end
  object FDQuery2: TFDQuery
    Connection = FDConnection1
    Left = 297
    Top = 216
  end
  object DataSource2: TDataSource
    DataSet = FDQuery2
    Left = 433
    Top = 216
  end
  object FDQuerySamplesOfBatch: TFDQuery
    Connection = FDConnection1
    Left = 297
    Top = 280
  end
  object DataSourceSamplesOfBatch: TDataSource
    DataSet = FDQuerySamplesOfBatch
    Left = 433
    Top = 280
  end
  object FDQueryCheckTargetNr: TFDQuery
    Connection = FDConnection1
    Left = 297
    Top = 336
  end
  object FDGUIxErrorDialog1: TFDGUIxErrorDialog
    Provider = 'Forms'
    Left = 417
    Top = 456
  end
  object FDGUIxLoginDialog1: TFDGUIxLoginDialog
    Provider = 'Forms'
    Left = 537
    Top = 456
  end
end
