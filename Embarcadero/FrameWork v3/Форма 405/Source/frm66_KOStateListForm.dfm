inherited frm66_KOStateList: Tfrm66_KOStateList
  Left = 316
  Top = 160
  Width = 767
  Height = 523
  Caption = 'Оценка КО'
  OldCreateOrder = True
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 459
    Top = 4
    Width = 250
    Height = 16
    Anchors = [akTop, akRight]
    Caption = 'Рейтинг кредитной организации:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 393
    Width = 759
    Height = 96
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    object DBText1: TDBText
      Left = 217
      Top = 21
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
      Top = 21
      Width = 199
      Height = 13
      Caption = 'Рейтинг кредитной организации:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 11
      Top = 4
      Width = 148
      Height = 13
      Caption = 'Кредитная организация:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 217
      Top = 4
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
  end
  object Panel4: TPanel
    Left = 0
    Top = 0
    Width = 759
    Height = 393
    Align = alClient
    BevelOuter = bvNone
    Caption = 'Panel4'
    TabOrder = 1
    object Panel5: TPanel
      Left = 0
      Top = 0
      Width = 0
      Height = 393
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 0
    end
    object Panel3: TPanel
      Left = 0
      Top = 0
      Width = 759
      Height = 393
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
        Width = 759
        Height = 376
        Align = alClient
        AllowDelete = False
        AllowInsert = False
        ColCount = 1
        DataSource = dsList
        PanelBorder = gbNone
        PanelHeight = 75
        PanelWidth = 742
        TabOrder = 0
        RowCount = 5
        object DBMemo4: TDBMemo
          Left = 691
          Top = 0
          Width = 51
          Height = 75
          Align = alRight
          Alignment = taCenter
          DataSource = dsList
          ReadOnly = True
          TabOrder = 3
        end
        object DBMemo5: TDBMemo
          Left = 640
          Top = 0
          Width = 51
          Height = 75
          Align = alRight
          DataSource = dsList
          TabOrder = 4
        end
        object DBMemo1: TDBMemo
          Left = 0
          Top = 0
          Width = 33
          Height = 75
          Align = alLeft
          DataField = 'T067_ID'
          DataSource = dsList
          ReadOnly = True
          TabOrder = 0
        end
        object DBMemo2: TDBMemo
          Left = 33
          Top = 0
          Width = 150
          Height = 75
          Align = alLeft
          DataField = 'T067_DESC'
          DataSource = dsList
          ReadOnly = True
          TabOrder = 1
        end
        object DBMemo3: TDBMemo
          Left = 183
          Top = 0
          Width = 457
          Height = 75
          Align = alClient
          DataField = 'T069_DESC'
          DataSource = dsList
          TabOrder = 2
        end
        object DBCheckBox1: TDBCheckBox
          Left = 662
          Top = 23
          Width = 13
          Height = 13
          Anchors = [akTop, akRight]
          Caption = 'DBCheckBox1'
          Color = clBtnFace
          DataField = 'T069_YES_NO'
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
          Left = 707
          Top = 21
          Width = 21
          Height = 16
          Alignment = taCenter
          Anchors = [akTop, akRight]
          BorderStyle = bsNone
          DataField = 'T069_POINT'
          DataSource = dsList
          TabOrder = 6
        end
      end
      object HeaderControl1: THeaderControl
        Left = 0
        Top = 0
        Width = 759
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
            Width = 150
          end
          item
            Alignment = taCenter
            ImageIndex = -1
            Text = 'Формальное условие'
            Width = 460
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
      Left = 759
      Top = 0
      Width = 0
      Height = 393
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 2
    end
  end
  object odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT'
      'T069_ID, T002_ID,'
      'T067_ID, T067_DESC, T069_DESC, T069_POINT, T069_YES_NO, '
      'TOTAL_SUM'
      'FROM V_405_CLASS_KO_STATE'
      'WHERE T002_ID = :T002_ID'
      'ORDER BY T067_ID ')
    Variables.Data = {
      0300000001000000080000003A543030325F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000000800000007000000543036395F494401000000000007000000543036
      375F494401000000000009000000543036375F44455343010000000000090000
      00543036395F444553430100000000000B000000543036395F5945535F4E4F01
      00000000000A000000543036395F504F494E5401000000000009000000544F54
      414C5F53554D01000000000007000000543030325F4944010000000000}
    OnApplyRecord = odsListApplyRecord
    Session = dmMain.OracleSession
    Left = 184
    Top = 55
    object odsListT069_ID: TFloatField
      FieldName = 'T069_ID'
      Required = True
    end
    object odsListT067_ID: TFloatField
      FieldName = 'T067_ID'
      Required = True
    end
    object odsListT067_DESC: TStringField
      FieldName = 'T067_DESC'
      Required = True
      Size = 255
    end
    object odsListT069_DESC: TStringField
      FieldName = 'T069_DESC'
      Required = True
      Size = 2000
    end
    object odsListT069_POINT: TFloatField
      FieldName = 'T069_POINT'
      Required = True
    end
    object odsListT069_YES_NO: TStringField
      FieldName = 'T069_YES_NO'
      Required = True
      Size = 5
    end
    object odsListTOTAL_SUM: TFloatField
      FieldName = 'TOTAL_SUM'
    end
    object odsListT002_ID: TFloatField
      FieldName = 'T002_ID'
      Required = True
    end
  end
  object dsList: TDataSource
    DataSet = odsList
    Left = 256
    Top = 59
  end
  object oqUpdate: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  PK_405_CLASSIFICATION.p_change_ko_points ('
      '    :I_T055_ID,'
      '    :I_T069_ID,'
      '    :I_T069_YES_NO_ID,'
      '    :I_T069_DESC'
      '    );'
      'END;'
      ' '
      ' '
      ' ')
    Session = dmMain.OracleSession
    Variables.Data = {
      03000000040000000A0000003A495F543035355F494404000000000000000000
      00000A0000003A495F543036395F494404000000000000000000000011000000
      3A495F543036395F5945535F4E4F5F49440500000000000000000000000C0000
      003A495F543036395F44455343050000000000000000000000}
    Left = 184
    Top = 144
  end
end
