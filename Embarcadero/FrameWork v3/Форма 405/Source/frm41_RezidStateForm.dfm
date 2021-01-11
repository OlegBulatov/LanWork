inherited frm41_RezidState: Tfrm41_RezidState
  Left = 283
  Top = 105
  Width = 766
  Height = 745
  Caption = 'Оценка резидента'
  OldCreateOrder = True
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 458
    Top = 4
    Width = 150
    Height = 16
    Anchors = [akTop, akRight]
    Caption = 'Рейтинг резидента:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 618
    Width = 758
    Height = 93
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    object DBText1: TDBText
      Left = 217
      Top = 29
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
    object Label1: TLabel
      Left = 11
      Top = 29
      Width = 119
      Height = 13
      Caption = 'Рейтинг резидента:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 11
      Top = 12
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
    object Label2: TLabel
      Left = 217
      Top = 12
      Width = 39
      Height = 13
      Caption = 'Label2'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btnCansel: TButton
      Left = 671
      Top = 60
      Width = 75
      Height = 23
      Hint = 'Отменить изменения'
      Anchors = [akTop, akRight]
      Cancel = True
      Caption = 'Отменить'
      ModalResult = 2
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = btnCanselClick
    end
    object btnRecalc: TButton
      Left = 595
      Top = 60
      Width = 75
      Height = 23
      Hint = 'Сохранить изменения и Пересчитать рейтинг группы операций'
      Anchors = [akTop, akRight]
      Cancel = True
      Caption = 'Применить'
      ModalResult = 1
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = btnRecalcClick
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 0
    Width = 758
    Height = 618
    Align = alClient
    BevelOuter = bvNone
    Caption = 'Panel4'
    TabOrder = 1
    object Panel5: TPanel
      Left = 0
      Top = 0
      Width = 0
      Height = 618
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 0
    end
    object Panel3: TPanel
      Left = 0
      Top = 0
      Width = 758
      Height = 618
      Align = alClient
      BevelOuter = bvNone
      Caption = 'Panel3'
      TabOrder = 1
      OnResize = Panel3Resize
      object Label5: TLabel
        Left = 208
        Top = 320
        Width = 32
        Height = 13
        Caption = 'Label5'
      end
      object DBCtrlGrid1: TDBCtrlGrid
        Left = 0
        Top = 17
        Width = 758
        Height = 601
        Align = alClient
        AllowDelete = False
        AllowInsert = False
        ColCount = 1
        DataSource = dsList
        PanelBorder = gbNone
        PanelHeight = 50
        PanelWidth = 741
        TabOrder = 0
        RowCount = 12
        object DBMemo4: TDBMemo
          Left = 690
          Top = 0
          Width = 51
          Height = 50
          Align = alRight
          Alignment = taCenter
          DataSource = dsList
          TabOrder = 3
        end
        object DBMemo5: TDBMemo
          Left = 639
          Top = 0
          Width = 51
          Height = 50
          Align = alRight
          DataSource = dsList
          TabOrder = 4
        end
        object DBMemo1: TDBMemo
          Left = 0
          Top = 0
          Width = 33
          Height = 50
          Align = alLeft
          DataField = 'T101_NUMBER'
          DataSource = dsList
          ReadOnly = True
          TabOrder = 0
        end
        object DBMemo2: TDBMemo
          Left = 33
          Top = 0
          Width = 180
          Height = 50
          Align = alLeft
          DataField = 'T101_DESC'
          DataSource = dsList
          ReadOnly = True
          TabOrder = 1
        end
        object DBMemo3: TDBMemo
          Left = 213
          Top = 0
          Width = 426
          Height = 50
          Align = alClient
          DataField = 'T102_DESC'
          DataSource = dsList
          TabOrder = 2
        end
        object DBCheckBox1: TDBCheckBox
          Left = 661
          Top = 23
          Width = 13
          Height = 13
          Anchors = [akTop, akRight]
          Caption = 'DBCheckBox1'
          Color = clBtnFace
          DataField = 'T102_YES_NO'
          DataSource = dsList
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindow
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 5
          ValueChecked = 'Y'
          ValueUnchecked = 'N'
        end
        object DBMemo6: TDBMemo
          Left = 706
          Top = 21
          Width = 21
          Height = 16
          Alignment = taCenter
          Anchors = [akTop, akRight]
          BorderStyle = bsNone
          DataField = 'T102_POINT'
          DataSource = dsList
          ReadOnly = True
          TabOrder = 6
        end
      end
      object HeaderControl1: THeaderControl
        Left = 0
        Top = 0
        Width = 758
        Height = 17
        DragReorder = False
        Sections = <
          item
            Alignment = taCenter
            ImageIndex = -1
            Text = '№'
            Width = 34
          end
          item
            Alignment = taCenter
            ImageIndex = -1
            Text = 'Критерий'
            Width = 180
          end
          item
            Alignment = taCenter
            ImageIndex = -1
            Text = 'Формальное условие'
            Width = 430
          end
          item
            Alignment = taCenter
            ImageIndex = -1
            Text = 'Да/Нет'
            Width = 51
          end
          item
            Alignment = taCenter
            ImageIndex = -1
            Text = 'Баллы'
            Width = 49
          end>
      end
    end
    object Panel6: TPanel
      Left = 758
      Top = 0
      Width = 0
      Height = 618
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 2
    end
  end
  object odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT     T102_ID,'
      '           T103_ID,'
      '           T101_ID,'
      '           T101_NUMBER,'
      '           T101_DESC,'
      '           T102_DESC,'
      '           T102_POINT,'
      '           T102_YES_NO,'
      '           TOTAL_SUM'
      'FROM       V_405_CLASS_REZID_STATE'
      'WHERE      T103_ID = :T103_ID'
      'ORDER BY   T101_ID')
    Variables.Data = {
      0300000001000000080000003A543130335F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000000900000007000000543130325F494401000000000007000000543130
      315F494401000000000009000000543130315F44455343010000000000090000
      00543130325F444553430100000000000A000000543130325F504F494E540100
      000000000B000000543130325F5945535F4E4F01000000000009000000544F54
      414C5F53554D01000000000007000000543130335F49440100000000000B0000
      00543130315F4E554D424552010000000000}
    OnApplyRecord = odsListApplyRecord
    Session = dmMain.OracleSession
    Left = 184
    Top = 63
    object odsListT102_ID: TFloatField
      FieldName = 'T102_ID'
      Required = True
    end
    object odsListT101_ID: TFloatField
      FieldName = 'T101_ID'
      Required = True
    end
    object odsListT101_DESC: TStringField
      FieldName = 'T101_DESC'
      Required = True
      Size = 255
    end
    object odsListT102_DESC: TStringField
      FieldName = 'T102_DESC'
      Required = True
      Size = 4000
    end
    object odsListT102_POINT: TFloatField
      FieldName = 'T102_POINT'
      Required = True
    end
    object odsListT102_YES_NO: TStringField
      FieldName = 'T102_YES_NO'
      Size = 3
    end
    object odsListTOTAL_SUM: TFloatField
      FieldName = 'TOTAL_SUM'
    end
    object odsListT103_ID: TFloatField
      FieldName = 'T103_ID'
    end
    object odsListT101_NUMBER: TIntegerField
      FieldName = 'T101_NUMBER'
      Required = True
    end
  end
  object dsList: TDataSource
    DataSet = odsList
    Left = 256
    Top = 67
  end
  object oqUpdate: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  PK_405_CLASSIFICATION.p_change_res_points ('
      '    :I_T055_ID,'
      '    :I_T102_ID,'
      '    :I_T102_YES_NO_ID,'
      '    :I_T102_DESC'
      '  );'
      'END;'
      ' '
      ' '
      ' ')
    Session = dmMain.OracleSession
    Variables.Data = {
      03000000040000000A0000003A495F543130325F494404000000000000000000
      0000110000003A495F543130325F5945535F4E4F5F4944050000000000000000
      0000000C0000003A495F543130325F444553430500000000000000000000000A
      0000003A495F543035355F4944040000000000000000000000}
    Left = 184
    Top = 144
  end
end
