object A09_DiffsListFrm: TA09_DiffsListFrm
  Left = 167
  Top = 204
  Width = 702
  Height = 490
  Caption = 'Детализация расхождений в данных'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 415
    Width = 694
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    object Button1: TButton
      Left = 604
      Top = 9
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Закрыть'
      ModalResult = 1
      TabOrder = 0
    end
  end
  inline List: TA09_DiffsList
    Width = 694
    Height = 415
    Align = alClient
    TabOrder = 1
    inherited xxxDBGrid: TxxxDBGrid
      Width = 694
      Height = 390
      Columns = <
        item
          Expanded = False
          FieldName = 'DPB_ROW_NUM'
          PickList.Strings = ()
          Title.Caption = '№ строки ДПБ'
          Width = 56
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T037_CODE'
          PickList.Strings = ()
          Title.Caption = 'Показатель'
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'T036_CODE'
          PickList.Strings = ()
          Title.Caption = 'Сектор'
          Width = 60
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'T021_COUNTRY'
          PickList.Strings = ()
          Title.Caption = 'Страна'
          Width = 60
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'T021_CURRENCY'
          PickList.Strings = ()
          Title.Caption = 'Валюта'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DPB_SUM'
          PickList.Strings = ()
          Title.Caption = 'Сумма ДПБ'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'GCI_SUM'
          PickList.Strings = ()
          Title.Caption = 'Сумма ГЦИ'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'GCI_ROW_NUM'
          PickList.Strings = ()
          Title.Caption = '№ строки ГЦИ'
          Width = 56
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DIFF'
          PickList.Strings = ()
          Title.Caption = 'Расхождение'
          Width = 74
          Visible = True
        end>
    end
    inherited paToolButton: TPanel
      Width = 694
    end
  end
end
