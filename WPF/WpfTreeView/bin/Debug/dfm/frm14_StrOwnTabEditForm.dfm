inherited frm14_StrOwnTabEdit: Tfrm14_StrOwnTabEdit
  Caption = 'Редактирование даты'
  ClientHeight = 75
  ClientWidth = 192
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 8
    Top = 8
    Width = 67
    Height = 26
    Caption = 'Дата начала '#13#10'   действия'
  end
  inherited Panel2: TPanel
    Top = 42
    Width = 192
    inherited Panel3: TPanel
      Left = 27
      inherited OKBtn: TButton
        Left = 6
      end
      inherited CancelBtn: TButton
        Left = 86
      end
    end
    inherited PrevBtn: TBitBtn
      Left = 9
      Width = 7
      Visible = False
    end
    inherited NextBtn: TBitBtn
      Left = 16
      Width = 9
      Visible = False
    end
  end
  object dt01: TDBDateTimePicker [2]
    Left = 104
    Top = 12
    Width = 81
    Height = 21
    CalAlignment = dtaLeft
    Date = 39371.4577032407
    Time = 39371.4577032407
    DateFormat = dfShort
    DateMode = dmComboBox
    Kind = dtkDate
    ParseInput = False
    TabOrder = 1
    DataField = 'M010_INT_DATE'
    DataSource = frm14_StrOwnTabList.dsList
  end
  inherited ActionList: TActionList
    Left = 16
    Top = 24
  end
end
