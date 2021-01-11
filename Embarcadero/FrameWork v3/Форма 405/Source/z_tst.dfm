object z_tst_frm: Tz_tst_frm
  Left = 49
  Top = 170
  Width = 746
  Height = 386
  Caption = 'z_tst_frm'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  inline fmGrid1: TfmGrid
    Left = -157
    Top = -60
    Width = 1033
    Height = 399
    Anchors = []
    inherited xxxDBGrid: TxxxDBGrid
      Top = 62
      Width = 1009
      Align = alNone
      Columns = <
        item
          Expanded = False
          FieldName = 'T001_ROW_PRFX'
          PickList.Strings = ()
          Width = 471
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Z_STRING'
          PickList.Strings = ()
          Width = 405
          Visible = True
        end>
    end
    inherited paToolButton: TPanel
      Width = 1016
      inherited tlbList: TToolBar
        Width = 245
      end
      inherited tlbExcel: TToolBar
        Left = 322
      end
      inherited tlbSeach: TToolBar
        Left = 382
        Width = 104
      end
      inherited tlbFilter: TToolBar
        Left = 486
      end
      inherited tlbSelect: TToolBar
        Left = 567
        Width = 35
      end
    end
    inherited fm031_Filter1: Tfm031_Filter
      Width = 1016
      inherited Panel1: TPanel
        Left = 989
      end
    end
    inherited odsList: TOracleDataSet
      SQL.Strings = (
        'select * from z_vartest')
      QBEDefinition.QBEFieldDefs = {
        0400000005000000090000005A5F4E554D4E424552010000000000080000005A
        5F535452494E47010000000000060000005A5F44415445010000000000070000
        005A5F53554253540100000000000D000000543030315F524F575F5052465801
        0000000000}
    end
  end
end
