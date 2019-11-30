inherited frm200_GKORatesList: Tfrm200_GKORatesList
  Left = 360
  Top = 272
  Width = 1026
  Caption = 'frm200_GKORatesList'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Splitter1: TSplitter
    Top = 265
    Width = 1018
  end
  inherited spRight: TSplitter
    Left = 1015
    Height = 265
  end
  inherited paRight: TPanel
    Left = 1018
    Height = 265
  end
  inherited paMain: TPanel
    Width = 1015
    Height = 265
    inherited ToolBar2: TToolBar
      Width = 1015
    end
    inherited xxxDBGrid: TxxxDBGrid
      Width = 1015
      Height = 200
      AdvSettings.Indexes = <
        item
          FieldName = 'T026_SEC_REGN'
          SortType = stAsc
        end>
      Columns = <
        item
          Expanded = False
          FieldName = 'T026_SEC_REGN'
          PickList.Strings = ()
          Title.Caption = 'Рег. номер ц.б.'
          Width = 250
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T010_ISIN_TRANSL'
          PickList.Strings = ()
          Title.Caption = 'Код ц.б. (ISIN)'
          Width = 250
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T081_SECURITYID'
          PickList.Strings = ()
          Title.Caption = 'RIC ММВБ'
          Width = 250
          Visible = True
        end>
    end
    inherited fmSeach: TfmSeachFrame
      Width = 1015
      inherited Panel1: TPanel
        Left = 988
      end
    end
    inherited fm31_Filter: Tfm31_Filter
      Width = 1015
      inherited Panel1: TPanel
        Left = 988
      end
    end
  end
  inherited Panel1: TPanel
    Top = 268
    Width = 1018
    Height = 216
    inherited pc01: TPageControl
      Width = 1016
      Height = 214
      inherited ts01: TTabSheet
        Caption = 'Котировки ГКО (ММВБ)'
      end
    end
  end
  inherited StatusBar: TStatusBar
    Width = 1018
  end
  inherited pnlButtons: TPanel
    Width = 1018
    TabOrder = 2
    inherited OKBtn: TButton
      Left = 860
    end
    inherited CancelBtn: TButton
      Left = 940
    end
  end
  inherited ActionList: TActionList
    inherited actAddAttributes: TAction
      Enabled = False
      Visible = False
    end
    inherited actDeleteAttributes: TAction
      Enabled = False
      Visible = False
    end
    inherited actEditAttributes: TAction
      Enabled = False
      Visible = False
    end
    inherited actShowDetail: TAction
      Caption = 'Котировки'
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT T081_SECURITYID, T010_ISIN_TRANSL, T026_SEC_REGN, T081_ID'
      'FROM V_405_GKO_SECURITIES_RATES')
    QBEDefinition.QBEFieldDefs = {
      04000000040000000F000000543038315F534543555249545949440100000000
      000D000000543032365F5345435F5245474E0100000000000700000054303831
      5F494401000000000010000000543031305F4953494E5F5452414E534C010000
      000000}
    object odsListT081_SECURITYID: TStringField
      FieldName = 'T081_SECURITYID'
      Required = True
      Size = 255
    end
    object odsListT026_SEC_REGN: TStringField
      FieldName = 'T026_SEC_REGN'
      Required = True
      Size = 265
    end
    object odsListT081_ID: TFloatField
      FieldName = 'T081_ID'
      Required = True
    end
    object odsListT010_ISIN_TRANSL: TStringField
      FieldName = 'T010_ISIN_TRANSL'
      Size = 255
    end
  end
end
