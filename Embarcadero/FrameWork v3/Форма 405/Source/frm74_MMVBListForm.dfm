inherited frm74_MMVBList: Tfrm74_MMVBList
  Left = 100
  Top = 157
  Width = 1031
  Caption = 'Эмиссии ММВБ'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Splitter1: TSplitter
    Top = 202
    Width = 1023
  end
  inherited spRight: TSplitter
    Left = 777
    Height = 202
    Align = alLeft
    Visible = True
  end
  inherited paRight: TPanel
    Left = 780
    Width = 243
    Height = 202
    Align = alClient
  end
  inherited paMain: TPanel
    Width = 777
    Height = 202
    Align = alLeft
    inherited ToolBar2: TToolBar
      Width = 777
      inherited ToolButton7: TToolButton
        Caption = 'Котировки'
      end
    end
    inherited xxxDBGrid: TxxxDBGrid
      Width = 777
      Height = 137
      AdvSettings.Indexes = <
        item
          FieldName = 'T081_SECURITYID'
          SortType = stAsc
        end>
      Columns = <
        item
          Expanded = False
          FieldName = 'T081_REGNUMBER'
          PickList.Strings = ()
          Title.Caption = 'Рег. №'
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T081_SECURITYID'
          PickList.Strings = ()
          Title.Caption = 'RIC ММВБ'
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T081_TYPE'
          PickList.Strings = ()
          Title.Caption = 'Тип ц.б.'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'IS_LINKED'
          PickList.Strings = ()
          Title.Caption = 'Связь'
          Width = 60
          Visible = True
        end>
    end
    inherited fmSeach: TfmSeachFrame
      Width = 777
      inherited Panel1: TPanel
        Left = 750
      end
    end
    inherited fm31_Filter: Tfm31_Filter
      Width = 777
      inherited Panel1: TPanel
        Left = 750
      end
    end
  end
  inherited Panel1: TPanel
    Top = 205
    Width = 1023
    Height = 279
    inherited pc01: TPageControl
      Width = 1021
      Height = 277
      inherited ts01: TTabSheet
        Caption = 'Котировки ММВБ'
      end
    end
  end
  inherited StatusBar: TStatusBar
    Width = 1023
  end
  inherited pnlButtons: TPanel
    Width = 1023
    TabOrder = 2
    inherited OKBtn: TButton
      Left = 756
    end
    inherited CancelBtn: TButton
      Left = 836
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
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT'
      '  T081_ID,'
      '  T081_SECURITYID, T081_REGNUMBER, T081_TYPE, IS_LINKED'
      'FROM V_405_MMVB_CODE')
    QBEDefinition.QBEFieldDefs = {
      040000000500000007000000543038315F49440100000000000F000000543038
      315F534543555249545949440100000000000900000049535F4C494E4B454401
      00000000000E000000543038315F5245474E554D424552010000000000090000
      00543038315F54595045010000000000}
    object odsListT081_ID: TFloatField
      FieldName = 'T081_ID'
      Required = True
    end
    object odsListT081_SECURITYID: TStringField
      FieldName = 'T081_SECURITYID'
      Required = True
      Size = 255
    end
    object odsListIS_LINKED: TStringField
      FieldName = 'IS_LINKED'
      Size = 10
    end
    object odsListT081_REGNUMBER: TStringField
      FieldName = 'T081_REGNUMBER'
      Size = 255
    end
    object odsListT081_TYPE: TStringField
      FieldName = 'T081_TYPE'
      Size = 255
    end
  end
  inherited pkList: TOraclePackage
    PackageName = 'Pk_Form_405'
  end
end
