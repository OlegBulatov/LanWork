object A03_MainEmissions: TA03_MainEmissions
  Left = 73
  Top = 31
  Width = 612
  Height = 805
  Caption = 'A03_MainEmissions'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  inline A03_SelectEnisGrid: TA03_SelectEnisGrid
    Width = 604
    Height = 729
    Align = alTop
    inherited xxxDBGrid: TxxxDBGrid [0]
      Left = 8
      Top = 97
      Width = 573
      Height = 608
      Align = alNone
      Columns = <
        item
          Expanded = False
          FieldName = 'T026_SEC_REGN'
          PickList.Strings = ()
          Title.Caption = 'Рег. номер'
          Width = 131
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T027_SEC_TYPE'
          PickList.Strings = ()
          Title.Caption = 'Тип'
          Width = 104
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T028_SHOT_NAME'
          PickList.Strings = ()
          Title.Caption = 'Название'
          Width = 205
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T028_COUNTRY_ID'
          PickList.Strings = ()
          Title.Caption = 'Страна'
          Width = 100
          Visible = True
        end>
    end
    inherited paToolButton: TPanel [1]
    end
    inherited FilterSTC: TA12_FitrerEmi
      inherited GroupBox1: TGroupBox
        Width = 561
        Align = alNone
        inherited Panel1: TPanel
          Width = 141
          inherited Button1: TButton
            Action = A03_SelectEnisGrid.actRefresh
          end
        end
      end
    end
    inherited actList: TActionList
      Left = 352
      Top = 228
    end
    inherited dsList: TDataSource
      Left = 97
      Top = 359
    end
    inherited odsList: TOracleDataSet
      Left = 145
      Top = 253
    end
    inherited PopupMenu: TPopupMenu
      Left = 432
      Top = 335
    end
    inherited oqAdd: TOracleQuery
      Left = 207
      Top = 408
    end
    inherited oqUpdate: TOracleQuery
      Left = 287
      Top = 292
    end
    inherited oqDelete: TOracleQuery
      Left = 191
      Top = 172
    end
    inherited odsFetchRecord: TOracleDataSet
      Left = 289
      Top = 386
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 730
    Width = 604
    Height = 41
    Align = alBottom
    Caption = 'Panel1'
    TabOrder = 1
    object Button1: TButton
      Left = 392
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Выбрать'
      ModalResult = 1
      TabOrder = 0
    end
    object Button2: TButton
      Left = 536
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Отменить'
      ModalResult = 2
      TabOrder = 1
    end
  end
end
