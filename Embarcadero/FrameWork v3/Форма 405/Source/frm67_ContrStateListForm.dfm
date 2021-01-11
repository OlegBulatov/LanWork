inherited frm67_ContrStateList: Tfrm67_ContrStateList
  Left = 341
  Top = 166
  Width = 771
  Height = 627
  Caption = 'Оценка операций'
  OldCreateOrder = True
  Position = poMainFormCenter
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 763
    Height = 466
    Align = alClient
    BevelOuter = bvNone
    Caption = 'Panel1'
    TabOrder = 0
    object DBCtrlGrid1: TDBCtrlGrid
      Left = 0
      Top = 17
      Width = 763
      Height = 449
      Align = alClient
      AllowDelete = False
      AllowInsert = False
      ColCount = 1
      DataSource = dsList
      PanelBorder = gbNone
      PanelHeight = 56
      PanelWidth = 746
      TabOrder = 0
      RowCount = 8
      object DBMemo1: TDBMemo
        Left = 0
        Top = 0
        Width = 33
        Height = 56
        Align = alLeft
        DataField = 'T068_NUM'
        DataSource = dsList
        ReadOnly = True
        TabOrder = 0
      end
      object DBMemo2: TDBMemo
        Left = 33
        Top = 0
        Width = 215
        Height = 56
        Align = alLeft
        DataField = 'T068_DESC'
        DataSource = dsList
        ReadOnly = True
        TabOrder = 1
      end
      object DBMemo3: TDBMemo
        Left = 248
        Top = 0
        Width = 396
        Height = 56
        Align = alClient
        DataField = 'T070_DESC'
        DataSource = dsList
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
      end
      object DBMemo4: TDBMemo
        Left = 644
        Top = 0
        Width = 51
        Height = 56
        Align = alRight
        DataSource = dsList
        ReadOnly = True
        TabOrder = 3
      end
      object DBMemo5: TDBMemo
        Left = 695
        Top = 0
        Width = 51
        Height = 56
        Align = alRight
        Alignment = taCenter
        DataSource = dsList
        ReadOnly = True
        TabOrder = 4
      end
      object DBCheckBox1: TDBCheckBox
        Left = 666
        Top = 15
        Width = 13
        Height = 13
        Anchors = [akTop, akRight]
        Caption = 'actReadOnly'
        DataField = 'T070_YES_NO'
        DataSource = dsList
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
        ValueChecked = 'Y'
        ValueUnchecked = 'N'
      end
      object DBMemo6: TDBMemo
        Left = 706
        Top = 13
        Width = 31
        Height = 17
        Alignment = taCenter
        Anchors = [akTop, akRight]
        BorderStyle = bsNone
        DataField = 'T070_POINT'
        DataSource = dsList
        TabOrder = 6
      end
    end
    object HeaderControl1: THeaderControl
      Left = 0
      Top = 0
      Width = 763
      Height = 17
      DragReorder = False
      Sections = <
        item
          ImageIndex = -1
          Text = '№'
          Width = 34
        end
        item
          ImageIndex = -1
          Text = 'Критерий'
          Width = 215
        end
        item
          ImageIndex = -1
          Text = 'Формальное условие'
          Width = 400
        end
        item
          ImageIndex = -1
          Text = 'Да/Нет'
          Width = 51
        end
        item
          ImageIndex = -1
          Text = 'Баллы'
          Width = 49
        end>
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 466
    Width = 763
    Height = 127
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    object Label2: TLabel
      Left = 11
      Top = 38
      Width = 159
      Height = 13
      Caption = 'Рейтинг группы операций:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText2: TDBText
      Left = 174
      Top = 38
      Width = 50
      Height = 13
      AutoSize = True
      DataField = 'TOTAL_SUM'
      DataSource = dsList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 11
      Top = 55
      Width = 108
      Height = 13
      Caption = 'Сводный рейтинг:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 174
      Top = 55
      Width = 39
      Height = 13
      Caption = 'Label5'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 11
      Top = 4
      Width = 61
      Height = 13
      Caption = 'Резидент:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 11
      Top = 21
      Width = 76
      Height = 13
      Caption = 'Нерезидент:'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object Label6: TLabel
      Left = 11
      Top = 72
      Width = 151
      Height = 13
      Caption = 'Статус группы операций:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText1: TDBText
      Left = 173
      Top = 72
      Width = 50
      Height = 13
      AutoSize = True
      DataField = 'T071_CALC_DESC'
      DataSource = frm41_ContrGrpState.dsList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 174
      Top = 21
      Width = 39
      Height = 13
      Caption = 'Label7'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object Label8: TLabel
      Left = 174
      Top = 4
      Width = 39
      Height = 13
      Caption = 'Label8'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btnSetFict: TButton
      Left = 174
      Top = 93
      Width = 76
      Height = 23
      Hint = 'Признать группу операций фиктивной'
      Caption = 'Фиктивные'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = btnSetFictClick
    end
    object btnSetReal: TButton
      Left = 250
      Top = 93
      Width = 76
      Height = 23
      Hint = 'Признать группу операций реальной'
      Cancel = True
      Caption = 'Реальные'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = btnSetRealClick
    end
    object btnRecalc: TButton
      Left = 598
      Top = 93
      Width = 75
      Height = 23
      Hint = 'Сохранить изменения и Пересчитать рейтинг группы операций'
      Anchors = [akTop, akRight]
      Cancel = True
      Caption = 'Применить'
      ModalResult = 1
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = btnRecalcClick
    end
    object btnCansel: TButton
      Left = 674
      Top = 93
      Width = 75
      Height = 23
      Hint = 'Отменить изменения'
      Anchors = [akTop, akRight]
      Cancel = True
      Caption = 'Отменить'
      ModalResult = 2
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = btnCanselClick
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 0
    Width = 0
    Height = 466
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 2
  end
  object Panel6: TPanel
    Left = 763
    Top = 0
    Width = 0
    Height = 466
    Align = alRight
    BevelOuter = bvNone
    TabOrder = 3
  end
  object dsList: TDataSource
    DataSet = odsList
    Left = 256
    Top = 67
  end
  object oqUpdate: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  PK_405_CLASSIFICATION.p_change_sectype_points ('
      '    :I_T055_ID,'
      '    :I_T070_ID,'
      '    :I_T070_YES_NO_ID,'
      '    :I_T070_DESC'
      '  );'
      '  COMMIT;'
      'END;'
      ' '
      ' '
      ' '
      ' ')
    Session = dmMain.OracleSession
    Variables.Data = {
      03000000040000000A0000003A495F543035355F494404000000000000000000
      00000A0000003A495F543037305F494404000000000000000000000011000000
      3A495F543037305F5945535F4E4F5F49440500000000000000000000000C0000
      003A495F543037305F44455343050000000000000000000000}
    Left = 184
    Top = 136
  end
  object odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT     T070_ID,'
      '           T071_ID,'
      '           T068_ID,'
      '           T068_NUM,'
      '           T068_DESC,'
      '           T070_DESC,'
      '           T070_POINT,'
      '           T070_YES_NO,'
      '           TOTAL_SUM'
      'FROM       V_405_CLASS_CONTR_STATE'
      'WHERE      T071_ID = :T071_ID'
      'ORDER BY   T068_NUM')
    Variables.Data = {
      0300000001000000080000003A543037315F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000000900000007000000543037305F494401000000000007000000543036
      385F494401000000000009000000543036385F44455343010000000000090000
      00543037305F444553430100000000000A000000543037305F504F494E540100
      000000000B000000543037305F5945535F4E4F01000000000009000000544F54
      414C5F53554D01000000000007000000543037315F4944010000000000080000
      00543036385F4E554D010000000000}
    OnApplyRecord = odsListApplyRecord
    Session = dmMain.OracleSession
    Left = 184
    Top = 63
    object odsListT070_ID: TFloatField
      FieldName = 'T070_ID'
      Required = True
    end
    object odsListT068_DESC: TStringField
      FieldName = 'T068_DESC'
      ReadOnly = True
      Required = True
      Size = 255
    end
    object odsListT070_DESC: TStringField
      FieldName = 'T070_DESC'
      Required = True
      Size = 255
    end
    object odsListT070_POINT: TFloatField
      FieldName = 'T070_POINT'
      ReadOnly = True
      Required = True
    end
    object odsListT070_YES_NO: TStringField
      FieldName = 'T070_YES_NO'
      Size = 3
    end
    object odsListTOTAL_SUM: TFloatField
      FieldName = 'TOTAL_SUM'
      ReadOnly = True
    end
    object odsListT068_ID: TFloatField
      FieldName = 'T068_ID'
      ReadOnly = True
      Required = True
    end
    object odsListT071_ID: TFloatField
      FieldName = 'T071_ID'
      Required = True
    end
    object odsListT068_NUM: TIntegerField
      FieldName = 'T068_NUM'
    end
  end
end
