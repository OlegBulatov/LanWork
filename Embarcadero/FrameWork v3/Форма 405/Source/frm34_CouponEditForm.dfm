inherited frm34_CouponEdit: Tfrm34_CouponEdit
  Left = 298
  Top = 185
  Action = actDoOnChange
  ClientHeight = 219
  ClientWidth = 340
  OnClick = actDoOnChangeExecute
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    Top = 186
    Width = 340
    inherited Panel3: TPanel
      Left = 175
    end
  end
  object paBottom: TPanel [1]
    Left = 0
    Top = 0
    Width = 340
    Height = 186
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object gb3: TGroupBox
      Left = 4
      Top = 5
      Width = 335
      Height = 172
      Anchors = [akLeft, akTop, akRight]
      Caption = ' График начисления '
      TabOrder = 0
      object Label1: TLabel
        Left = 12
        Top = 121
        Width = 79
        Height = 13
        Caption = 'Ставка, % в год'
      end
      object Label3: TLabel
        Left = 12
        Top = 20
        Width = 144
        Height = 13
        Caption = 'Дата окончания начисления'
      end
      object ed01: TDBEdit
        Left = 167
        Top = 116
        Width = 148
        Height = 21
        Hint = 'в %'
        DataField = 'T032_RATE'
        DataSource = frm34_CouponList.dsList
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
      end
      object dtExdDate: TDBDateTimePicker
        Left = 167
        Top = 140
        Width = 148
        Height = 21
        Hint = 'Дата фиксации номинала'
        CalAlignment = dtaLeft
        Date = 40590.4431579051
        Time = 40590.4431579051
        Checked = False
        DateFormat = dfShort
        DateMode = dmComboBox
        Kind = dtkDate
        ParseInput = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        DataField = 'T032_EXD_DATE'
        DataSource = frm34_CouponList.dsList
      end
      object chbExdDate: TCheckBox
        Left = 12
        Top = 143
        Width = 145
        Height = 17
        Hint = 'Дата фиксации номинала'
        Caption = 'Экс. див. дата'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnClick = chbExdDateClick
      end
      object dtEndDate: TDBDateTimePicker
        Left = 167
        Top = 17
        Width = 148
        Height = 21
        Hint = 'Дата окончания начисления процентов'
        CalAlignment = dtaLeft
        Date = 40590.4431579051
        Time = 40590.4431579051
        Checked = False
        DateFormat = dfShort
        DateMode = dmComboBox
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Kind = dtkDate
        ParseInput = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        DataField = 'T032_DATE_END'
        DataSource = frm34_CouponList.dsList
      end
      object gb1: TGroupBox
        Left = 8
        Top = 43
        Width = 317
        Height = 69
        Anchors = [akLeft, akTop, akRight, akBottom]
        Caption = ' Для 1-го купона '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        object rb2: TRadioButton
          Left = 9
          Top = 45
          Width = 145
          Height = 17
          Caption = 'Период купона, дней'
          TabOrder = 0
        end
        object rb1: TRadioButton
          Left = 9
          Top = 23
          Width = 145
          Height = 17
          Caption = 'Дата начала начисления'
          Checked = True
          Enabled = False
          TabOrder = 1
          TabStop = True
        end
        object dt02: TDBDateTimePicker
          Left = 158
          Top = 19
          Width = 148
          Height = 21
          CalAlignment = dtaLeft
          Date = 40590.4431579051
          Time = 40590.4431579051
          DateFormat = dfShort
          DateMode = dmComboBox
          Kind = dtkDate
          ParseInput = False
          TabOrder = 2
          OnChange = dt02Change
          DataField = 'T032_DATE_START'
          DataSource = frm34_CouponList.dsList
        end
        object ed03: TDBEdit
          Left = 158
          Top = 43
          Width = 148
          Height = 21
          DataField = 'COUPON_DAYS'
          DataSource = frm34_CouponList.dsList
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
      end
    end
  end
  inherited ActionList1: TActionList
    Left = 16
    Top = 166
    object actDoOnChange: TAction
      Caption = 'Редактирование'
      Visible = False
      OnExecute = actDoOnChangeExecute
      OnUpdate = actDoOnChangeUpdate
    end
  end
end
