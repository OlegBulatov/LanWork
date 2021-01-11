inherited I001_LoadedFile: TI001_LoadedFile
  Caption = 'I001_LoadedFile'
  PixelsPerInch = 96
  TextHeight = 13
  inherited spRight: TSplitter
    Top = 41
    Height = 352
    ExplicitTop = 41
    ExplicitHeight = 455
  end
  inherited paRight: TPanel
    Top = 41
    Height = 352
    ExplicitTop = 41
    ExplicitHeight = 455
  end
  inherited paMain: TPanel
    Top = 41
    Height = 352
    ExplicitTop = 41
    ExplicitHeight = 455
    inherited xxxDBGrid: TxxxDBGrid
      Height = 256
      OnColEnter = xxxDBGridColEnter
      Columns = <
        item
          Expanded = False
          FieldName = 'T028_NAME'
          Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077'  '#1101#1084#1080#1090#1077#1085#1090#1072
          Width = 400
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T028_INN'
          Title.Caption = #1048#1053#1053' '#1059#1050
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T028_TYPE'
          Title.Caption = #1058#1080#1087' '#1101#1084#1080#1090#1077#1085#1090#1072
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T026_SEC_REGN'
          Title.Caption = #1056#1077#1075'. '#8470' '#1094'.'#1073'.'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATA_REG'
          Title.Caption = #1044#1072#1090#1072' '#1086#1090#1082#1088'.'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATA_CLOSE'
          Title.Caption = #1044#1072#1090#1072' '#1079#1072#1082#1088'.'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T145_FOR_FILTER'
          Visible = False
        end>
    end
    object paCounts: TPanel
      Left = 0
      Top = 321
      Width = 677
      Height = 31
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 4
      ExplicitTop = 424
      ExplicitWidth = 703
      object Label1: TLabel
        Left = 12
        Top = 7
        Width = 33
        Height = 13
        Hint = #1042#1089#1077#1075#1086' '#1082#1086#1084#1087#1072#1085#1080#1081
        Caption = #1042#1089#1077#1075#1086':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
      end
      object DBText1: TDBText
        Left = 53
        Top = 7
        Width = 46
        Height = 17
        DataField = 'R_TOTAL'
        DataSource = dsTotal
        ParentShowHint = False
        ShowHint = True
      end
      object Label2: TLabel
        Left = 131
        Top = 7
        Width = 36
        Height = 13
        Caption = #1053#1086#1074#1099#1093':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
      end
      object DBText2: TDBText
        Left = 175
        Top = 7
        Width = 46
        Height = 17
        DataField = 'R_NEW'
        DataSource = dsTotal
        ParentShowHint = False
        ShowHint = True
      end
      object Label3: TLabel
        Left = 259
        Top = 7
        Width = 68
        Height = 13
        Caption = #1048#1079#1084#1077#1085#1077#1085#1085#1099#1093':'
        ParentShowHint = False
        ShowHint = True
      end
      object DBText4: TDBText
        Left = 333
        Top = 7
        Width = 46
        Height = 17
        DataField = 'R_CHANGED'
        DataSource = dsTotal
        ParentShowHint = False
        ShowHint = True
      end
      object Label5: TLabel
        Left = 501
        Top = 7
        Width = 32
        Height = 13
        Caption = 'Label5'
      end
    end
  end
  inherited StatusBar: TStatusBar
    ExplicitTop = 527
  end
  inherited pnlButtons: TPanel
    Top = 393
    Height = 31
    ExplicitTop = 496
    ExplicitHeight = 31
  end
  object paFilters: TPanel [5]
    Left = 0
    Top = 0
    Width = 680
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 4
    ExplicitWidth = 706
    object Label4: TLabel
      Left = 27
      Top = 11
      Width = 105
      Height = 13
      Caption = #1055#1086#1082#1072#1079#1099#1074#1072#1090#1100' '#1079#1072#1087#1080#1089#1080':'
    end
    object cbShow: TCheckBox
      Tag = 800
      Left = 7
      Top = 10
      Width = 14
      Height = 17
      Caption = #1055#1086#1082#1072#1079#1099#1074#1072#1090#1100' '#1079#1072#1087#1080#1089#1080':'
      Enabled = False
      State = cbGrayed
      TabOrder = 0
    end
    object cmbShow: TComboBox
      Tag = 801
      Left = 148
      Top = 8
      Width = 331
      Height = 21
      Style = csDropDownList
      TabOrder = 1
      Items.Strings = (
        #1042#1089#1077
        #1058#1086#1083#1100#1082#1086' '#1085#1086#1074#1099#1077
        #1053#1086#1074#1099#1077' '#1080' '#1080#1079#1084#1077#1085#1077#1085#1085#1085#1099#1077
        #1058#1086#1083#1100#1082#1086' '#1080#1079#1084#1077#1085#1077#1085#1085#1099#1077)
    end
    object Button1: TButton
      Left = 487
      Top = 6
      Width = 75
      Height = 25
      Action = actRefresh
      TabOrder = 2
    end
  end
  inherited ActionList: TActionList
    inherited actAddAttributes: TAction
      Visible = False
    end
    inherited actDeleteAttributes: TAction
      Visible = False
    end
    inherited actEditAttributes: TAction
      Visible = False
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'select T028_NAME,'
      '       T028_INN,'
      '       T028_TYPE,'
      '       T026_SEC_REGN,'
      '       DATA_REG,'
      '       --T030_ID,'
      '       --T145_ID,'
      '       DATA_CLOSE,'
      '       T145_FOR_FILTER'
      'from V_405_PIF_LOAD')
    QBEDefinition.QBEFieldDefs = {
      05000000070000001200000054003000320038005F004E0041004D0045000100
      000000001000000054003000320038005F0049004E004E000100000000001200
      000054003000320038005F0054005900500045000100000000001A0000005400
      3000320036005F005300450043005F005200450047004E000100000000001000
      000044004100540041005F005200450047000100000000001400000044004100
      540041005F0043004C004F00530045000100000000001E000000540031003400
      35005F0046004F0052005F00460049004C00540045005200010000000000}
    AfterScroll = odsListAfterScroll
    object odsListT028_NAME: TStringField
      FieldName = 'T028_NAME'
      Required = True
      Size = 255
    end
    object odsListT028_INN: TStringField
      FieldName = 'T028_INN'
      Required = True
      Size = 50
    end
    object odsListT028_TYPE: TStringField
      FieldName = 'T028_TYPE'
      Required = True
      Size = 10
    end
    object odsListT026_SEC_REGN: TStringField
      FieldName = 'T026_SEC_REGN'
      Required = True
      Size = 50
    end
    object odsListDATA_REG: TDateTimeField
      FieldName = 'DATA_REG'
      Required = True
    end
    object odsListDATA_CLOSE: TDateTimeField
      FieldName = 'DATA_CLOSE'
    end
    object odsListT145_FOR_FILTER: TFloatField
      FieldName = 'T145_FOR_FILTER'
    end
  end
  inherited pmFilter: TPopupMenu
    Left = 520
    Top = 72
  end
  object odsTotal: TOracleDataSet
    SQL.Strings = (
      'SELECT R_TOTAL,'
      '       R_NEW,'
      '       R_CHANGED,'
      '       R_SAME'
      'FROM   V_405_PIF_LOAD_TOTAL')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      05000000040000000E00000052005F0054004F00540041004C00010000000000
      0A00000052005F004E00450057000100000000001200000052005F0043004800
      41004E004700450044000100000000000C00000052005F00530041004D004500
      010000000000}
    Session = dmMain.OracleSession
    Left = 104
    Top = 352
    object odsTotalR_TOTAL: TFloatField
      FieldName = 'R_TOTAL'
    end
    object odsTotalR_NEW: TFloatField
      FieldName = 'R_NEW'
    end
    object odsTotalR_CHANGED: TFloatField
      FieldName = 'R_CHANGED'
    end
    object odsTotalR_SAME: TFloatField
      FieldName = 'R_SAME'
    end
  end
  object dsTotal: TDataSource
    DataSet = odsTotal
    Left = 144
    Top = 352
  end
end
