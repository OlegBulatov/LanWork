inherited frm05_SumList: Tfrm05_SumList
  Left = 193
  Top = 171
  Width = 1104
  Height = 713
  ActiveControl = nil
  Caption = '������ ������'
  PixelsPerInch = 96
  TextHeight = 13
  inherited spRight: TSplitter
    Left = 1093
    Top = 123
    Height = 507
  end
  inherited paRight: TPanel
    Left = 1096
    Top = 123
    Height = 507
  end
  inherited paMain: TPanel
    Top = 123
    Width = 1093
    Height = 507
    inherited ToolBar2: TToolBar
      Width = 1093
      ButtonWidth = 108
      inherited ToolButton18: TToolButton
        Action = nil
        Caption = '��������...'
        DropdownMenu = pmEdit
        OnClick = nil
      end
      inherited ToolButton19: TToolButton
        Left = 172
      end
      inherited ToolButton4: TToolButton
        Left = 246
      end
      inherited ToolBar1: TToolBar
        Left = 254
      end
      inherited sp02: TToolButton
        Left = 323
      end
      inherited tbSimFilter: TToolButton
        Left = 331
      end
      inherited tbSep01: TToolButton
        Left = 417
      end
      inherited tlbSearch: TToolBar
        Left = 425
      end
      inherited ToolButton13: TToolButton
        Left = 485
      end
      inherited tbExcel: TToolButton
        Left = 493
        AutoSize = True
      end
      object ToolButton5: TToolButton
        Left = 527
        Top = 0
        Width = 8
        Caption = 'ToolButton5'
        ImageIndex = 4
        Style = tbsSeparator
      end
      object ToolButton6: TToolButton
        Left = 535
        Top = 0
        Width = 8
        Caption = 'ToolButton6'
        ImageIndex = 12
        Style = tbsSeparator
      end
      object ToolButton8: TToolButton
        Left = 543
        Top = 0
        Action = actSetInvStraight
        AutoSize = True
      end
      object ToolButton9: TToolButton
        Left = 616
        Top = 0
        Action = actSetInvCase
        AutoSize = True
      end
      object ToolButton10: TToolButton
        Left = 718
        Top = 0
        Action = actSetInvNoCount
        AutoSize = True
      end
      object ToolButton11: TToolButton
        Left = 818
        Top = 0
        Width = 8
        Caption = 'ToolButton11'
        ImageIndex = 3
        Style = tbsSeparator
      end
      object tbInfo: TToolButton
        Left = 826
        Top = 0
        Action = actInfo
      end
      object ToolButton7: TToolButton
        Left = 934
        Top = 0
        Width = 8
        Caption = 'ToolButton7'
        ImageIndex = 22
        Style = tbsSeparator
      end
      object ToolButton14: TToolButton
        Left = 942
        Top = 0
        Action = actGoTo417
      end
    end
    inherited xxxDBGrid: TxxxDBGrid
      Top = 88
      Width = 1093
      Height = 332
      AdvSettings.HeadersLines = <
        item
          Headers = <
            item
              FirstCol = 5
              LastCol = 23
              Caption = '��������� �������� �� ��������� � ������� ��������'
            end
            item
              FirstCol = 24
              LastCol = 31
              Caption = '�������������� ������ ������'
            end
            item
              FirstCol = 58
              LastCol = 61
              Caption = '����������'
            end>
        end
        item
          Headers = <
            item
              FirstCol = 11
              LastCol = 14
              Caption = '����� �������'
            end
            item
              FirstCol = 15
              LastCol = 18
              Caption = '��������'
            end
            item
              FirstCol = 19
              LastCol = 23
              Caption = '����������'
            end
            item
              FirstCol = 24
              LastCol = 26
              Caption = '�������'
            end
            item
              FirstCol = 58
              LastCol = 59
              Caption = '����-�����������'
            end
            item
              FirstCol = 60
              LastCol = 61
              Caption = '����������'
            end>
        end
        item
          Headers = <>
        end>
      Columns = <
        item
          Expanded = False
          FieldName = 'T001_ROW_PRFX'
          PickList.Strings = ()
          Title.Caption = '� ���.'
          Width = 42
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T002_BANK_CODE'
          PickList.Strings = ()
          Title.Caption = '���. ����� ��'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T001_ROW_NUM'
          PickList.Strings = ()
          Title.Caption = '���.'
          Width = 38
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T002_NUMB_IN_YEA_DESC'
          PickList.Strings = ()
          Title.Caption = '�������� ������'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T001_DATE_OP'
          PickList.Strings = ()
          Title.Caption = '���� ��������'
          Width = 62
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T011_TYPE_ID'
          PickList.Strings = ()
          Title.Caption = '��� ����.'
          Width = 32
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T006_NAME'
          PickList.Strings = ()
          Title.Caption = '��� �. ��.'
          Width = 35
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_OP_COUNT'
          PickList.Strings = ()
          Title.Caption = '���-�� �����'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_DR_COUNT'
          PickList.Strings = ()
          Title.Caption = '�������. �-�� DR1'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_PERCENT'
          PickList.Strings = ()
          Title.Caption = '����'
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_OP_CR_DESC'
          PickList.Strings = ()
          Title.Caption = '��� ���. ����.'
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_OP_SUM'
          PickList.Strings = ()
          Title.Caption = '�����'
          Width = 88
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_OP_PROC'
          PickList.Strings = ()
          Title.Caption = '��������'
          Width = 71
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_OP_SUM_CROSS'
          PickList.Strings = ()
          Title.Caption = '����� ($)'
          Width = 71
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_OP_PROC_CROSS'
          PickList.Strings = ()
          Title.Caption = '�������� ($)'
          Width = 71
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_REZID_NAME'
          PickList.Strings = ()
          Title.Caption = '������������'
          Width = 123
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_REZID_CO_ID'
          PickList.Strings = ()
          Title.Caption = '���'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T033_NAME'
          PickList.Strings = ()
          Title.Caption = '���'
          Width = 57
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T012_FICT_STATE_DESC'
          PickList.Strings = ()
          Title.Caption = '���������'
          Width = 35
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_NREZID_NAME'
          PickList.Strings = ()
          Title.Caption = '������������'
          Width = 125
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_NREZID_CO_ID'
          PickList.Strings = ()
          Title.Caption = '��� ������'
          Width = 46
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_NREZID_COUNTRY'
          PickList.Strings = ()
          Title.Caption = '������'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T034_NAME'
          PickList.Strings = ()
          Title.Caption = '���'
          Width = 56
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T013_FICT_STATE_DESC'
          PickList.Strings = ()
          Title.Caption = '���������'
          Width = 36
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T028_SHOT_NAME'
          PickList.Strings = ()
          Title.Caption = '������������'
          Width = 117
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T028_CODE'
          PickList.Strings = ()
          Title.Caption = '���'
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T025_SHOT_NAME'
          PickList.Strings = ()
          Title.Caption = '���'
          Width = 53
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_REG_NUM'
          PickList.Strings = ()
          Title.Caption = '�������. �����'
          Width = 59
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_TYPE_ID'
          PickList.Strings = ()
          Title.Caption = '��� ���� �.�.'
          Width = 45
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_DATE_ON'
          PickList.Strings = ()
          Title.Caption = '���� �������.'
          Width = 62
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_DATE_OFF'
          PickList.Strings = ()
          Title.Caption = '���� ���������'
          Width = 62
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_CR_DESC'
          PickList.Strings = ()
          Title.Caption = '��� ������ �.�.'
          Width = 51
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_N8'
          PickList.Strings = ()
          Title.Caption = '����'
          Width = 20
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_N9'
          PickList.Strings = ()
          Title.Caption = '���������'
          Width = 20
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_10'
          PickList.Strings = ()
          Title.Caption = '�����'
          Width = 20
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_11'
          PickList.Strings = ()
          Title.Caption = '������'
          Width = 20
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_N99'
          PickList.Strings = ()
          Title.Caption = '���������'
          Width = 20
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OWN_EMISSION'
          PickList.Strings = ()
          Title.Caption = '������. ���.'
          Width = 20
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_COMMENT'
          PickList.Strings = ()
          Title.Caption = '�����������'
          Width = 117
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_IS_RANSOM'
          PickList.Strings = ()
          Title.Caption = '����� ���������'
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_PART_ID'
          PickList.Strings = ()
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T001_ID'
          PickList.Strings = ()
          Title.Caption = '��� ��������'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T002_NUMB_IN_YEA_DESC'
          PickList.Strings = ()
          Title.Caption = '�������� ������'
          Width = 112
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T002_BANK_CODE'
          PickList.Strings = ()
          Title.Caption = '���. ����� ��'
          Width = 63
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T002_BANK_NAME'
          PickList.Strings = ()
          Title.Caption = '������������ ��'
          Width = 250
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_ID'
          PickList.Strings = ()
          Title.Caption = '��� ��������'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T030_ID'
          PickList.Strings = ()
          Title.Caption = '��� �������'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T028_ID'
          PickList.Strings = ()
          Title.Caption = '��� ��������'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T012_ID'
          PickList.Strings = ()
          Title.Caption = '��� ���������'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T013_ID'
          PickList.Strings = ()
          Title.Caption = '��� �����������'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T055_ID'
          PickList.Strings = ()
          Title.Caption = '��� ��������� �������'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T001_YEAR_OP'
          PickList.Strings = ()
          Title.Caption = '���'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OP_MONTH'
          PickList.Strings = ()
          Title.Caption = '�����'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T035_NAME'
          PickList.Strings = ()
          Title.Caption = '������.'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_OP_MODIF'
          PickList.Strings = ()
          Title.Caption = '���� (� $)'
          Width = 85
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_OP_SUM_RUB'
          PickList.Strings = ()
          Title.Caption = '���� (� ���.)'
          Width = 85
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T006_DIRECTION_DESC'
          PickList.Strings = ()
          Title.Caption = '�����������'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_MOD_OP_SUM_CROSS'
          PickList.Strings = ()
          Title.Caption = '����� ������� (� ���. $)'
          Width = 85
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_C11'
          PickList.Strings = ()
          Title.Caption = '������������'
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_C12'
          PickList.Strings = ()
          Title.Caption = '��� ������'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_C16'
          PickList.Strings = ()
          Title.Caption = '������������'
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_C17'
          PickList.Strings = ()
          Title.Caption = '��� ������'
          Width = 72
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_C18'
          PickList.Strings = ()
          Title.Caption = 'BIC ��������������� �����'
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_C19'
          PickList.Strings = ()
          Title.Caption = 'SWIFT �����-�����������'
          Width = 160
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_C20'
          PickList.Strings = ()
          Title.Caption = '����. ��� ������ �����-�����������'
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_OP_ID'
          PickList.Strings = ()
          Title.Caption = 'ID ���� ��������'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T027_ID'
          PickList.Strings = ()
          Title.Caption = 'ID ���� ������ ������'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T027_ID_1'
          PickList.Strings = ()
          Title.Caption = '��� �.�. 1'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T001_OP_PAY_ID'
          PickList.Strings = ()
          Title.Caption = 'ID ����. �������'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T030_PARENT_ID'
          PickList.Strings = ()
          Title.Caption = '��� ������� �������'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T028_PARENT_ID'
          PickList.Strings = ()
          Title.Caption = '��� �������� ��������'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T028_INN'
          PickList.Strings = ()
          Title.Caption = '��� ��������'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T012_PARENT_ID'
          PickList.Strings = ()
          Title.Caption = '��� �������� ���������'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T013_PARENT_ID'
          PickList.Strings = ()
          Title.Caption = '��� �������� �����������'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T001_INV_TYPE_DESCR'
          PickList.Strings = ()
          Title.Caption = '��� ��������������'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_INV_TYPE'
          PickList.Strings = ()
          Title.Caption = '��� ����������_1'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T001_PROCESSED_DESC'
          PickList.Strings = ()
          Title.Caption = '� ����� (������� �����.)'
          Width = 55
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T006_ID'
          PickList.Strings = ()
          Title.Caption = '��� ����������� �������'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T001_REPO_TYPE'
          PickList.Strings = ()
          Title.Caption = '��� ����'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T001_REPO_DATE'
          PickList.Strings = ()
          Title.Caption = '���� ����'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_DPB_COMMENT'
          PickList.Strings = ()
          Title.Caption = '����������� ���'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T006_DIRECTION'
          PickList.Strings = ()
          Title.Caption = '��� �����������'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T001_REMAINS_TYPE'
          PickList.Strings = ()
          Title.Caption = '��� ���� ��������'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T035_ID'
          PickList.Strings = ()
          Title.Caption = '��� �����������'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T013_REAL_PARENT_ID'
          PickList.Strings = ()
          Title.Caption = '��� ������ �������� �����������'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T001_REZID_TYPE'
          PickList.Strings = ()
          Title.Caption = '��� ���� ���������'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T012_REAL_PARENT_ID'
          PickList.Strings = ()
          Title.Caption = '��� ������ �������� ���������'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T027_MAIN_ID'
          PickList.Strings = ()
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'C22'
          PickList.Strings = ()
          Title.Caption = '���'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'C22_NAME'
          PickList.Strings = ()
          Title.Caption = '��� �������� ��������'
          Width = 255
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_DR_COUNT_SRC'
          PickList.Strings = ()
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'DR_COUNT_DIFF'
          PickList.Strings = ()
          Visible = False
        end>
    end
    inherited fmSeach: TfmSeachFrame
      Top = 46
      Width = 1093
      inherited Panel1: TPanel
        Left = 1066
      end
    end
    inherited fm31_Filter: Tfm31_Filter
      Top = 67
      Width = 1093
      TabOrder = 4
      inherited Panel1: TPanel
        Left = 1066
      end
    end
    object Panel2: TPanel
      Left = 0
      Top = 420
      Width = 1093
      Height = 87
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 3
      object Label2: TLabel
        Left = 6
        Top = 24
        Width = 40
        Height = 13
        Caption = '�����:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 327
        Top = 23
        Width = 58
        Height = 13
        Caption = '� ������'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText1: TDBText
        Left = 56
        Top = 24
        Width = 75
        Height = 17
        DataField = 'COUNT_STR'
        DataSource = dsCount
      end
      object Label3: TLabel
        Left = 327
        Top = 46
        Width = 64
        Height = 13
        Caption = '�� ������'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 327
        Top = 69
        Width = 44
        Height = 13
        Caption = '������'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 394
        Top = 3
        Width = 55
        Height = 13
        Caption = '����� ($)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 618
        Top = 3
        Width = 67
        Height = 13
        Caption = '���-�� �.�.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label8: TLabel
        Left = 506
        Top = 3
        Width = 79
        Height = 13
        Caption = '�������� ($)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbTime: TLabel
        Left = 56
        Top = 44
        Width = 31
        Height = 13
        Caption = 'lbTime'
      end
      object Label9: TLabel
        Left = 6
        Top = 44
        Width = 43
        Height = 13
        Caption = '�����:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label10: TLabel
        Left = 730
        Top = 3
        Width = 50
        Height = 13
        Caption = '���� ($)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBEdit3: TDBEdit
        Left = 394
        Top = 20
        Width = 110
        Height = 21
        Hint = '����� �������'
        Color = clBtnFace
        DataField = 'SUM_IN'
        DataSource = dsCount
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 0
      end
      object DBEdit4: TDBEdit
        Left = 506
        Top = 20
        Width = 110
        Height = 21
        Hint = '����� �������'
        Color = clBtnFace
        DataField = 'PROC_IN'
        DataSource = dsCount
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 1
      end
      object DBEdit1: TDBEdit
        Left = 394
        Top = 43
        Width = 110
        Height = 21
        Hint = '����� �������'
        Color = clBtnFace
        DataField = 'SUM_OUT'
        DataSource = dsCount
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 2
      end
      object DBEdit2: TDBEdit
        Left = 506
        Top = 43
        Width = 110
        Height = 21
        Hint = '����� �������'
        Color = clBtnFace
        DataField = 'PROC_OUT'
        DataSource = dsCount
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 3
      end
      object DBEdit5: TDBEdit
        Left = 394
        Top = 66
        Width = 110
        Height = 21
        Hint = '����� �������'
        Color = clBtnFace
        DataField = 'SUM_SALDO'
        DataSource = dsCount
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 4
      end
      object DBEdit6: TDBEdit
        Left = 506
        Top = 66
        Width = 110
        Height = 21
        Hint = '����� �������'
        Color = clBtnFace
        DataField = 'PROC_SALDO'
        DataSource = dsCount
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 5
      end
      object DBEdit7: TDBEdit
        Left = 618
        Top = 20
        Width = 110
        Height = 21
        Hint = '���-�� ������ �����'
        Color = clBtnFace
        DataField = 'COUNT_IN'
        DataSource = dsCount
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 6
      end
      object DBEdit8: TDBEdit
        Left = 618
        Top = 43
        Width = 110
        Height = 21
        Hint = '���-�� ������ �����'
        Color = clBtnFace
        DataField = 'COUNT_OUT'
        DataSource = dsCount
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 7
      end
      object DBEdit9: TDBEdit
        Left = 618
        Top = 66
        Width = 110
        Height = 21
        Hint = '���-�� ������ �����'
        Color = clBtnFace
        DataField = 'COUNT_SALDO'
        DataSource = dsCount
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 8
      end
      object DBEdit10: TDBEdit
        Left = 730
        Top = 20
        Width = 110
        Height = 21
        Hint = '���� ������ �����'
        Color = clBtnFace
        DataField = 'PRICE_IN'
        DataSource = dsCount
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 9
      end
      object DBEdit11: TDBEdit
        Left = 730
        Top = 43
        Width = 110
        Height = 21
        Hint = '���� ������ �����'
        Color = clBtnFace
        DataField = 'PRICE_OUT'
        DataSource = dsCount
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 10
      end
      object DBEdit12: TDBEdit
        Left = 730
        Top = 66
        Width = 110
        Height = 21
        Hint = '���� ������ �����'
        Color = clBtnFace
        DataField = 'PRICE_SALDO'
        DataSource = dsCount
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 11
      end
      object cbRes: TCheckBox
        Left = 6
        Top = 4
        Width = 107
        Height = 17
        Caption = '������� �����'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 12
        OnClick = cbResClick
      end
    end
    object ToolBar3: TToolBar
      Left = 0
      Top = 23
      Width = 1093
      Height = 23
      ButtonWidth = 111
      Caption = 'ToolBar3'
      EdgeBorders = []
      Flat = True
      Images = dm02_Picters.ilCommonPictures
      List = True
      ParentShowHint = False
      ShowCaptions = True
      ShowHint = True
      TabOrder = 5
      Wrapable = False
      object ToolButton15: TToolButton
        Left = 0
        Top = 0
        Action = actCloneSumInfo
        AutoSize = True
      end
      object ToolButton16: TToolButton
        Left = 98
        Top = 0
        Width = 8
        Caption = 'ToolButton11'
        ImageIndex = 29
        Style = tbsSeparator
      end
      object ToolButton20: TToolButton
        Left = 106
        Top = 0
        Action = actMaturDate
        AutoSize = True
      end
      object ToolButton12: TToolButton
        Left = 221
        Top = 0
        Width = 8
        Caption = 'ToolButton12'
        ImageIndex = 44
        Style = tbsSeparator
      end
      object ToolButton21: TToolButton
        Left = 229
        Top = 0
        Action = actCheckIsu
        AutoSize = True
      end
    end
  end
  inherited StatusBar: TStatusBar
    Top = 663
    Width = 1096
  end
  object Panel1: TPanel [4]
    Left = 0
    Top = 0
    Width = 1096
    Height = 123
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 4
    object Label1: TLabel
      Left = 320
      Top = 7
      Width = 12
      Height = 13
      Caption = '��'
    end
    object Label11: TLabel
      Left = 529
      Top = 94
      Width = 102
      Height = 13
      Caption = '��������� �-�� DR1'
    end
    inline Tfm01_Period1: Tfm01_Period
      Left = 127
      Top = 2
      Width = 185
      inherited Label1: TLabel
        Width = 0
        Caption = '   �������� ������ c'
        Visible = False
      end
      inherited lcbPeriod: TDBLookupComboBox
        Left = 4
        Width = 181
        KeyField = 'T055_ID'
      end
      inherited dsPeriod: TDataSource
        Left = 88
        Top = 65530
      end
      inherited odsPeriod: TOracleDataSet
        Left = 56
        Top = 65530
      end
    end
    inline Frame11: Tfm04_PrmKO
      Left = 127
      Top = 26
      Width = 394
      Height = 22
      TabOrder = 1
      inherited Label1: TLabel
        Width = 0
        Height = 22
        Caption = '   ����. �����������'
        Visible = False
      end
      inherited lcbPeriod: TDBLookupComboBox
        Left = 4
        Width = 390
      end
      inherited odsPeriod: TOracleDataSet
        SQL.Strings = (
          'SELECT  DISTINCT REGN, NAME--, T002_NUMB_IN_YEA'
          'FROM     V_405_BANC_BY_NUMB'
          '--WHERE    T002_NUMB_IN_YEA = :T002_NUMB_IN_YEA '
          'ORDER BY REGN')
        Variables.Data = {0300000000000000}
        Left = 72
      end
      inherited dsPeriod: TDataSource
        Left = 104
      end
    end
    object chbPeriod: TCheckBox
      Left = 5
      Top = 6
      Width = 123
      Height = 17
      Caption = '�������� ������ c'
      Checked = True
      State = cbChecked
      TabOrder = 2
    end
    object chbKO: TCheckBox
      Left = 5
      Top = 29
      Width = 121
      Height = 17
      Caption = '����. �����������'
      Checked = True
      State = cbChecked
      TabOrder = 3
    end
    inline Tfm01_Period2: Tfm01_Period
      Left = 336
      Top = 2
      Width = 187
      TabOrder = 4
      inherited Label1: TLabel
        Width = 0
        Caption = '   �������� ������ c'
        Visible = False
      end
      inherited lcbPeriod: TDBLookupComboBox
        Left = 4
        Width = 181
        KeyField = 'T055_ID'
      end
      inherited dsPeriod: TDataSource
        Left = 88
        Top = 65530
      end
      inherited odsPeriod: TOracleDataSet
        Left = 56
        Top = 65530
      end
    end
    object Button1: TButton
      Left = 527
      Top = 2
      Width = 75
      Height = 25
      Action = actApplayFilter
      TabOrder = 5
    end
    object chbType: TCheckBox
      Left = 5
      Top = 78
      Width = 121
      Height = 17
      Caption = '��� �.�.'
      TabOrder = 6
    end
    object lcbType: TDBLookupComboBox
      Left = 131
      Top = 75
      Width = 390
      Height = 21
      DropDownRows = 10
      KeyField = 'T027_ID'
      ListField = 'DESC_FLD'
      ListSource = dsType
      TabOrder = 7
    end
    object chbPay: TCheckBox
      Left = 5
      Top = 102
      Width = 121
      Height = 17
      Caption = '�������. �������'
      TabOrder = 8
    end
    object lcbPay: TDBLookupComboBox
      Left = 131
      Top = 99
      Width = 390
      Height = 21
      DropDownRows = 10
      KeyField = 'T006_ID'
      ListField = 'DESC_FLD'
      ListSource = dsPay
      TabOrder = 9
    end
    object cbDrCountDiff: TComboBox
      Left = 644
      Top = 88
      Width = 169
      Height = 22
      Style = csOwnerDrawFixed
      DropDownCount = 5
      ItemHeight = 16
      TabOrder = 10
      OnChange = cbDrCountDiffChange
      OnDrawItem = cbDrCountDiffDrawItem
      Items.Strings = (
        '�� ����������'
        '�������� ���'
        '��� ������ ��� �������'
        '������� �����������'
        '������ ����')
    end
    inline OpCodeFilter: TL001_OpCodeFilter
      Left = 6
      Top = 51
      Width = 515
      TabOrder = 11
      inherited lcb: TxxxDBLookupCheckCombo
        Left = 125
        Width = 390
        DisplayEmpty = '�� �������'
        EmptyItemColor = clWindowText
        ListStyle = [lsChecked]
      end
      inherited cb: TCheckBox
        Checked = False
        State = cbUnchecked
      end
    end
  end
  inherited pnlButtons: TPanel
    Top = 630
    Width = 1096
    inherited OKBtn: TButton
      Left = 895
    end
    inherited CancelBtn: TButton
      Left = 975
    end
  end
  object rgSearchType: TRadioGroup [6]
    Left = 616
    Top = 2
    Width = 217
    Height = 73
    Caption = '�������� ������'
    ItemIndex = 1
    Items.Strings = (
      '������� (Rule)'
      '��������� ���������� (Choose)')
    TabOrder = 5
    OnClick = rgSearchTypeClick
  end
  inherited dsList: TDataSource
    Top = 313
  end
  inherited ActionList: TActionList
    Left = 56
    Top = 314
    inherited actExcel: TAction
      Caption = ''
    end
    object actApplayFilter: TAction
      Caption = '��������'
      Hint = '��������'
      OnExecute = actApplayFilterExecute
    end
    object actSetInvStraight: TAction
      Caption = '������'
      ImageIndex = 1
      OnExecute = actInvStraightExecute
      OnUpdate = actSetInvStraightUpdate
    end
    object actSetInvCase: TAction
      Caption = '�����������'
      ImageIndex = 1
      OnExecute = actInvCaseExecute
      OnUpdate = actSetInvCaseUpdate
    end
    object actSetInvNoCount: TAction
      Caption = '�� ���������'
      ImageIndex = 2
      OnExecute = actInvNoCountExecute
      OnUpdate = actSetInvNoCountUpdate
    end
    object actCloneSumInfo: TAction
      Caption = '�����������'
      Hint = '����������� ������'
      ImageIndex = 13
      OnExecute = actCloneSumInfoExecute
      OnUpdate = actCloneSumInfoUpdate
    end
    object actMaturDate: TAction
      Caption = '���� ���������'
      Hint = '�������� ���� ��������� �������'
      ImageIndex = 43
      OnExecute = actMaturDateExecute
      OnUpdate = actMaturDateUpdate
    end
    object actInfo: TAction
      Caption = '����������'
      Hint = '�������� ������'
      ImageIndex = 21
      OnExecute = actInfoExecute
      OnUpdate = actInfoUpdate
    end
    object actEditSecType: TAction
      Caption = '��� �.�.'
      Hint = '�������� ��� �.�.'
      OnExecute = actEditSecTypeExecute
      OnUpdate = actEditSecTypeUpdate
    end
    object actEditDrCount: TAction
      Caption = '���-�� ����� DR1'
      Hint = '�������� ���������� ����� DR1'
      OnExecute = actEditDrCountExecute
      OnUpdate = actEditDrCountUpdate
    end
    object actGoTo417: TAction
      Caption = '������� � �417'
      ImageIndex = 13
      OnExecute = actGoTo417Execute
      OnUpdate = actGoTo417Update
    end
    object actCheckIsu: TAction
      Caption = '�������� ISU'
      Hint = '��������� ������������ ������� ISU'
      ImageIndex = 19
      OnExecute = actCheckIsuExecute
      OnUpdate = actCheckIsuUpdate
    end
  end
  inherited PopupMenu: TPopupMenu
    Left = 48
    Top = 362
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT'
      ' T002_ID,'
      ' T001_PART_ID,'
      ' T005_DISPLAY_NAME,'
      ' T002_BANK_CODE,'
      ' T002_BANK_NAME,'
      ' T002_REPORT_DATE,'
      ' T002_NUMB_IN_YEA,'
      ' T002_NUMB_IN_YEA_DESC,'
      ' T002_KP_ID,'
      ' T001_ID,'
      ' T001_ROW_PREFIX,'
      ' T001_ROW_PRFX,'
      ' T001_ROW_NUM,'
      ' T001_DATE_OP,'
      ' T001_TYPE_ID,'
      ' T016_BOND_ID,'
      ' T001_OP_ID,'
      ' T011_TYPE_ID,'
      ' T001_OP_PAY_ID,'
      ' T006_ID,'
      ' T006_NAME,'
      ' T001_OP_COUNT,'
      ' T001_OP_CR_ID,'
      ' T001_OP_CR_DESC,'
      ' T001_OP_SUM,'
      ' T001_OP_PROC,'
      ' T001_OP_SUM_CROSS,'
      ' T001_OP_PROC_CROSS,'
      ' T012_ID,'
      ' T012_PARENT_ID,'
      ' T012_REAL_PARENT_ID,'
      ' T001_REZID_NAME,'
      ' T001_REZID_CO_ID,'
      ' T001_REZID_TYPE,'
      ' T033_NAME,'
      ' T013_ID,'
      ' T013_PARENT_ID,'
      ' T013_REAL_PARENT_ID,'
      ' T001_NREZID_NAME,'
      ' T001_NREZID_CO_ID,'
      ' T001_NREZID_COUNTRY,'
      ' T001_NREZID_TYPE,'
      ' T034_NAME,'
      ' T028_ID,'
      ' T028_PARENT_ID,'
      ' T028_SHOT_NAME,'
      ' T028_CODE,'
      ' T028_INN,'
      ' T025_CODE,'
      ' T025_SHOT_NAME,'
      ' T001_REG_NUM,'
      ' T001_DATE_ON,'
      ' T001_DATE_OFF,'
      ' T001_CR_ID,'
      ' T001_CR_DESC,'
      ' T001_PARENT_ID,'
      ' T001_ROWID,'
      ' T001_IS_RANSOM,'
      ' T030_ID,'
      ' T030_PARENT_ID,'
      ' T001_N8,'
      ' T001_N9,'
      ' T001_10,'
      ' T001_11,'
      ' T001_N99,'
      ' T001_COMMENT,'
      ' T055_ID,'
      ' T035_ID,'
      ' T035_NAME,'
      ' T006_DIRECTION,'
      ' T006_DIRECTION_DESC,'
      ' T001_OP_MODIF,'
      ' T001_YEAR_OP,'
      ' OP_MONTH,'
      ' T001_MOD_OP_SUM_CROSS,'
      ' T001_C11,'
      ' T001_C12,'
      ' T001_C16,'
      ' T001_C17,'
      ' T001_C18,'
      ' T001_C19,'
      ' T001_C20,'
      ' T027_ID,'
      ' T027_MAIN_ID,'
      ' T012_FICT_STATE,'
      ' T012_FICT_STATE_DESC,'
      ' T013_FICT_STATE,'
      ' T013_FICT_STATE_DESC,'
      ' T001_OP_SUM_RUB,'
      ' T027_ID_1,'
      ' T001_INV_TYPE,'
      ' T001_INV_TYPE_DESCR,'
      ' T001_PROCESSED,'
      ' T001_PROCESSED_DESC,'
      ' T001_REPO_TYPE,'
      ' T001_DPB_COMMENT,'
      ' T001_REMAINS_TYPE,'
      ' T001_DATA_SOURCE,'
      ' IS_FIRST,'
      ' T001_REPO_DATE,'
      ' --T001_C22 ,'
      ' C22,           '
      ' c22_name,'
      ' T001_PERCENT,'
      ' OWN_EMISSION,'
      ' T001_DR_COUNT,'
      ' T001_DR_COUNT_SRC,'
      ' CASE'
      
        '   WHEN NVL(T001_OP_COUNT , 0) <> 0 THEN ROUND(ABS(T001_OP_COUNT' +
        ' - T001_DR_COUNT) / T001_OP_COUNT * 100)'
      '   ELSE NULL'
      '  END'
      '    DR_COUNT_DIFF'
      'FROM V_T001_SUM'
      'where T001_PART_ID < 6 -- �� ����� 2� ������'
      ' '
      ''
      ' '
      ' '
      ' '
      ''
      ' '
      ' '
      ' ')
    QBEDefinition.QBEFieldDefs = {
      040000006A0000000C000000543030315F504152545F49440100000000000700
      0000543030315F494401000000000007000000543030325F4944010000000000
      0C000000543030315F524F575F4E554D0100000000000C000000543030315F44
      4154455F4F500100000000000C000000543030315F545950455F494401000000
      00000A000000543030315F4F505F49440100000000000E000000543030315F4F
      505F5041595F49440100000000000D000000543030315F4F505F434F554E5401
      00000000000D000000543030315F4F505F43525F49440100000000000B000000
      543030315F4F505F53554D0100000000000C000000543030315F4F505F50524F
      430100000000000F000000543030315F52455A49445F4E414D45010000000000
      10000000543030315F52455A49445F434F5F4944010000000000100000005430
      30315F4E52455A49445F4E414D4501000000000011000000543030315F4E5245
      5A49445F434F5F49440100000000000C000000543030315F5245475F4E554D01
      00000000000C000000543030315F444154455F4F4E0100000000000D00000054
      3030315F444154455F4F46460100000000000A000000543030315F43525F4944
      0100000000000F000000543030315F524F575F50524546495801000000000011
      000000543030355F444953504C41595F4E414D450100000000000C0000005430
      31365F424F4E445F49440100000000000C000000543031315F545950455F4944
      01000000000009000000543030365F4E414D450100000000000E000000543030
      325F42414E4B5F434F444501000000000010000000543030325F5245504F5254
      5F444154450100000000000A000000543030325F4B505F49440100000000000F
      000000543030315F52455A49445F545950450100000000001000000054303031
      5F4E52455A49445F545950450100000000000E000000543030315F504152454E
      545F494401000000000010000000543030325F4E554D425F494E5F5945410100
      0000000015000000543030325F4E554D425F494E5F5945415F44455343010000
      0000000F000000543030315F4F505F43525F4445534301000000000007000000
      543031325F494401000000000007000000543031335F49440100000000001300
      0000543030315F4E52455A49445F434F554E5452590100000000000C00000054
      3030315F43525F444553430100000000000E000000543032385F53484F545F4E
      414D4501000000000009000000543032385F434F444501000000000009000000
      543032355F434F44450100000000000E000000543032355F53484F545F4E414D
      450100000000000E000000543030315F49535F52414E534F4D01000000000007
      000000543033305F494401000000000011000000543030315F4F505F53554D5F
      43524F535301000000000012000000543030315F4F505F50524F435F43524F53
      5301000000000009000000543033335F4E414D45010000000000090000005430
      33345F4E414D4501000000000007000000543032385F49440100000000000700
      0000543030315F4E3801000000000007000000543030315F4E39010000000000
      07000000543030315F313001000000000007000000543030315F313101000000
      000008000000543030315F4E39390100000000000C000000543030315F434F4D
      4D454E5401000000000007000000543035355F49440100000000000E00000054
      3030325F42414E4B5F4E414D4501000000000009000000543033355F4E414D45
      0100000000000E000000543030365F444952454354494F4E0100000000000D00
      0000543030315F4F505F4D4F4449460100000000000C000000543030315F5945
      41525F4F5001000000000015000000543030315F4D4F445F4F505F53554D5F43
      524F535301000000000013000000543030365F444952454354494F4E5F444553
      4301000000000008000000543030315F43313601000000000008000000543030
      315F43313701000000000008000000543030315F433138010000000000080000
      00543030315F43313901000000000008000000543030315F4332300100000000
      0008000000543030315F43313101000000000008000000543030315F43313201
      000000000007000000543032375F49440100000000000F000000543030315F4F
      505F53554D5F52554201000000000007000000543033355F4944010000000000
      0E000000543033305F504152454E545F49440100000000000E00000054303238
      5F504152454E545F494401000000000009000000543032375F49445F31010000
      0000000E000000543031325F504152454E545F49440100000000000E00000054
      3031335F504152454E545F494401000000000008000000543032385F494E4E01
      000000000013000000543030315F494E565F545950455F444553435201000000
      00000D000000543030315F494E565F5459504501000000000007000000543030
      365F49440100000000000E000000543030315F5245504F5F5459504501000000
      000010000000543030315F4450425F434F4D4D454E5401000000000011000000
      543030315F52454D41494E535F545950450100000000000E000000543030315F
      50524F43455353454401000000000013000000543030315F50524F4345535345
      445F4445534301000000000010000000543030315F444154415F534F55524345
      01000000000013000000543031335F5245414C5F504152454E545F4944010000
      00000013000000543031325F5245414C5F504152454E545F4944010000000000
      0F000000543031325F464943545F535441544501000000000014000000543031
      325F464943545F53544154455F444553430100000000000F000000543031335F
      464943545F535441544501000000000014000000543031335F464943545F5354
      4154455F44455343010000000000080000004F505F4D4F4E5448010000000000
      0800000049535F46495253540100000000000C000000543032375F4D41494E5F
      49440100000000000E000000543030315F5245504F5F44415445010000000000
      080000004332325F4E414D45010000000000030000004332320100000000000C
      000000543030315F50455243454E540100000000000D000000543030315F524F
      575F505246580100000000000D000000543030315F44525F434F554E54010000
      00000011000000543030315F44525F434F554E545F5352430100000000000D00
      000044525F434F554E545F444946460100000000000C0000004F574E5F454D49
      5353494F4E010000000000}
    AfterOpen = odsListAfterOpen
    Top = 313
    object odsListT002_ID: TFloatField
      FieldName = 'T002_ID'
      Required = True
    end
    object odsListT001_PART_ID: TFloatField
      FieldName = 'T001_PART_ID'
      Required = True
    end
    object odsListT005_DISPLAY_NAME: TStringField
      FieldName = 'T005_DISPLAY_NAME'
      Required = True
      Size = 255
    end
    object odsListT002_BANK_CODE: TStringField
      FieldName = 'T002_BANK_CODE'
      Required = True
      Size = 9
    end
    object odsListT002_REPORT_DATE: TDateTimeField
      FieldName = 'T002_REPORT_DATE'
      Required = True
    end
    object odsListT002_NUMB_IN_YEA: TStringField
      FieldName = 'T002_NUMB_IN_YEA'
      Required = True
      Size = 5
    end
    object odsListT002_NUMB_IN_YEA_DESC: TStringField
      FieldName = 'T002_NUMB_IN_YEA_DESC'
      Required = True
      Size = 50
    end
    object odsListT002_KP_ID: TIntegerField
      FieldName = 'T002_KP_ID'
      Required = True
    end
    object odsListT001_ID: TFloatField
      FieldName = 'T001_ID'
      Required = True
    end
    object odsListT001_ROW_PREFIX: TIntegerField
      FieldName = 'T001_ROW_PREFIX'
      Required = True
    end
    object odsListT001_ROW_NUM: TIntegerField
      FieldName = 'T001_ROW_NUM'
      Required = True
    end
    object odsListT001_DATE_OP: TDateTimeField
      FieldName = 'T001_DATE_OP'
      Required = True
    end
    object odsListT001_TYPE_ID: TStringField
      FieldName = 'T001_TYPE_ID'
      Required = True
      Size = 255
    end
    object odsListT016_BOND_ID: TFloatField
      FieldName = 'T016_BOND_ID'
      Required = True
    end
    object odsListT001_OP_ID: TFloatField
      FieldName = 'T001_OP_ID'
      Required = True
    end
    object odsListT011_TYPE_ID: TFloatField
      FieldName = 'T011_TYPE_ID'
      Required = True
    end
    object odsListT001_OP_PAY_ID: TFloatField
      FieldName = 'T001_OP_PAY_ID'
      Required = True
    end
    object odsListT006_NAME: TStringField
      FieldName = 'T006_NAME'
      Required = True
      Size = 255
    end
    object odsListT001_OP_COUNT: TFloatField
      FieldName = 'T001_OP_COUNT'
      DisplayFormat = '### ### ### ##0.0000'
      EditFormat = '0'
    end
    object odsListT001_OP_CR_ID: TStringField
      FieldName = 'T001_OP_CR_ID'
      Size = 3
    end
    object odsListT001_OP_CR_DESC: TStringField
      FieldName = 'T001_OP_CR_DESC'
      Size = 255
    end
    object odsListT001_OP_SUM: TFloatField
      FieldName = 'T001_OP_SUM'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListT001_OP_PROC: TFloatField
      FieldName = 'T001_OP_PROC'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListT012_ID: TFloatField
      FieldName = 'T012_ID'
      Required = True
    end
    object odsListT001_REZID_NAME: TStringField
      FieldName = 'T001_REZID_NAME'
      Required = True
      Size = 255
    end
    object odsListT001_REZID_CO_ID: TStringField
      FieldName = 'T001_REZID_CO_ID'
      Size = 255
    end
    object odsListT001_REZID_TYPE: TFloatField
      FieldName = 'T001_REZID_TYPE'
      Required = True
    end
    object odsListT033_NAME: TStringField
      FieldName = 'T033_NAME'
      Required = True
      Size = 50
    end
    object odsListT013_ID: TFloatField
      FieldName = 'T013_ID'
      Required = True
    end
    object odsListT001_NREZID_NAME: TStringField
      FieldName = 'T001_NREZID_NAME'
      Size = 255
    end
    object odsListT001_NREZID_CO_ID: TFloatField
      FieldName = 'T001_NREZID_CO_ID'
      Required = True
    end
    object odsListT001_NREZID_COUNTRY: TStringField
      FieldName = 'T001_NREZID_COUNTRY'
      Size = 250
    end
    object odsListT001_NREZID_TYPE: TFloatField
      FieldName = 'T001_NREZID_TYPE'
      Required = True
    end
    object odsListT034_NAME: TStringField
      FieldName = 'T034_NAME'
      Required = True
      Size = 50
    end
    object odsListT028_SHOT_NAME: TStringField
      FieldName = 'T028_SHOT_NAME'
      Size = 255
    end
    object odsListT028_CODE: TStringField
      FieldName = 'T028_CODE'
      Size = 255
    end
    object odsListT025_CODE: TFloatField
      FieldName = 'T025_CODE'
      Required = True
    end
    object odsListT025_SHOT_NAME: TStringField
      FieldName = 'T025_SHOT_NAME'
      Required = True
      Size = 255
    end
    object odsListT001_REG_NUM: TStringField
      FieldName = 'T001_REG_NUM'
      Required = True
      Size = 265
    end
    object odsListT001_CR_ID: TStringField
      FieldName = 'T001_CR_ID'
      Size = 3
    end
    object odsListT001_CR_DESC: TStringField
      FieldName = 'T001_CR_DESC'
      Size = 255
    end
    object odsListT001_IS_RANSOM: TStringField
      FieldName = 'T001_IS_RANSOM'
      Size = 1
    end
    object odsListT030_ID: TFloatField
      FieldName = 'T030_ID'
      Required = True
    end
    object odsListT001_OP_SUM_CROSS: TFloatField
      FieldName = 'T001_OP_SUM_CROSS'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListT001_OP_PROC_CROSS: TFloatField
      FieldName = 'T001_OP_PROC_CROSS'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListT028_ID: TFloatField
      FieldName = 'T028_ID'
      Required = True
    end
    object odsListT001_N8: TFloatField
      FieldName = 'T001_N8'
    end
    object odsListT001_N9: TFloatField
      FieldName = 'T001_N9'
    end
    object odsListT001_10: TFloatField
      FieldName = 'T001_10'
    end
    object odsListT001_11: TFloatField
      FieldName = 'T001_11'
    end
    object odsListT001_N99: TFloatField
      FieldName = 'T001_N99'
    end
    object odsListT001_COMMENT: TStringField
      FieldName = 'T001_COMMENT'
      Size = 255
    end
    object odsListT055_ID: TFloatField
      FieldName = 'T055_ID'
      Required = True
    end
    object odsListT002_BANK_NAME: TStringField
      FieldName = 'T002_BANK_NAME'
      Size = 250
    end
    object odsListT035_NAME: TStringField
      FieldName = 'T035_NAME'
      Required = True
      Size = 50
    end
    object odsListT001_OP_MODIF: TFloatField
      FieldName = 'T001_OP_MODIF'
      DisplayFormat = '### ### ### ##0.00'
    end
    object odsListT001_YEAR_OP: TStringField
      FieldName = 'T001_YEAR_OP'
      Size = 4
    end
    object odsListT001_MOD_OP_SUM_CROSS: TFloatField
      FieldName = 'T001_MOD_OP_SUM_CROSS'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListT006_DIRECTION: TIntegerField
      FieldName = 'T006_DIRECTION'
      Required = True
    end
    object odsListT006_DIRECTION_DESC: TStringField
      FieldName = 'T006_DIRECTION_DESC'
      Size = 9
    end
    object odsListT001_PARENT_ID: TFloatField
      FieldName = 'T001_PARENT_ID'
    end
    object odsListT001_C16: TStringField
      FieldName = 'T001_C16'
      Size = 255
    end
    object odsListT001_C17: TStringField
      FieldName = 'T001_C17'
      Size = 255
    end
    object odsListT001_C18: TStringField
      FieldName = 'T001_C18'
      Size = 255
    end
    object odsListT001_C19: TStringField
      FieldName = 'T001_C19'
      Size = 255
    end
    object odsListT001_C20: TStringField
      FieldName = 'T001_C20'
      Size = 255
    end
    object odsListT001_C11: TStringField
      FieldName = 'T001_C11'
      Size = 255
    end
    object odsListT001_C12: TStringField
      FieldName = 'T001_C12'
      Size = 255
    end
    object odsListT027_ID: TFloatField
      FieldName = 'T027_ID'
      Required = True
    end
    object odsListT001_DATE_ON: TDateTimeField
      FieldName = 'T001_DATE_ON'
    end
    object odsListT001_DATE_OFF: TDateTimeField
      FieldName = 'T001_DATE_OFF'
    end
    object odsListT001_OP_SUM_RUB: TFloatField
      FieldName = 'T001_OP_SUM_RUB'
      DisplayFormat = '### ### ### ##0.00'
    end
    object odsListT035_ID: TFloatField
      FieldName = 'T035_ID'
      Required = True
    end
    object odsListT030_PARENT_ID: TFloatField
      FieldName = 'T030_PARENT_ID'
    end
    object odsListT028_PARENT_ID: TFloatField
      FieldName = 'T028_PARENT_ID'
    end
    object odsListT027_ID_1: TFloatField
      FieldName = 'T027_ID_1'
      Required = True
    end
    object odsListT012_PARENT_ID: TFloatField
      FieldName = 'T012_PARENT_ID'
    end
    object odsListT013_PARENT_ID: TFloatField
      FieldName = 'T013_PARENT_ID'
    end
    object odsListT028_INN: TStringField
      FieldName = 'T028_INN'
    end
    object odsListT001_INV_TYPE_DESCR: TStringField
      DisplayWidth = 15
      FieldName = 'T001_INV_TYPE_DESCR'
      Size = 15
    end
    object odsListT001_INV_TYPE: TIntegerField
      FieldName = 'T001_INV_TYPE'
      Required = True
    end
    object odsListT006_ID: TFloatField
      FieldName = 'T006_ID'
      Required = True
    end
    object odsListT001_REPO_TYPE: TStringField
      FieldName = 'T001_REPO_TYPE'
      Required = True
      Size = 1
    end
    object odsListT001_DPB_COMMENT: TStringField
      FieldName = 'T001_DPB_COMMENT'
      Size = 255
    end
    object odsListT001_REMAINS_TYPE: TIntegerField
      FieldName = 'T001_REMAINS_TYPE'
      Required = True
    end
    object odsListT001_PROCESSED: TIntegerField
      FieldName = 'T001_PROCESSED'
      Required = True
    end
    object odsListT001_PROCESSED_DESC: TStringField
      FieldName = 'T001_PROCESSED_DESC'
      Size = 3
    end
    object odsListT001_DATA_SOURCE: TIntegerField
      FieldName = 'T001_DATA_SOURCE'
      Required = True
    end
    object odsListT013_REAL_PARENT_ID: TFloatField
      FieldName = 'T013_REAL_PARENT_ID'
    end
    object odsListT012_REAL_PARENT_ID: TFloatField
      FieldName = 'T012_REAL_PARENT_ID'
    end
    object odsListT012_FICT_STATE: TStringField
      FieldName = 'T012_FICT_STATE'
      Required = True
      Size = 1
    end
    object odsListT012_FICT_STATE_DESC: TStringField
      FieldName = 'T012_FICT_STATE_DESC'
      Size = 3
    end
    object odsListT013_FICT_STATE: TStringField
      FieldName = 'T013_FICT_STATE'
      Required = True
      Size = 1
    end
    object odsListT013_FICT_STATE_DESC: TStringField
      FieldName = 'T013_FICT_STATE_DESC'
      Size = 3
    end
    object odsListOP_MONTH: TStringField
      FieldName = 'OP_MONTH'
      Required = True
      Size = 255
    end
    object odsListIS_FIRST: TStringField
      FieldName = 'IS_FIRST'
      Required = True
      Size = 1
    end
    object odsListT027_MAIN_ID: TFloatField
      FieldName = 'T027_MAIN_ID'
    end
    object odsListT001_REPO_DATE: TDateTimeField
      FieldName = 'T001_REPO_DATE'
    end
    object odsListC22: TStringField
      FieldName = 'C22'
      Size = 43
    end
    object odsListC22_NAME: TStringField
      FieldName = 'C22_NAME'
      Size = 1000
    end
    object odsListT001_PERCENT: TFloatField
      FieldName = 'T001_PERCENT'
      DisplayFormat = '##0.000000'
    end
    object odsListT001_ROW_PRFX: TStringField
      FieldName = 'T001_ROW_PRFX'
      Size = 3
    end
    object odsListT001_DR_COUNT: TFloatField
      FieldName = 'T001_DR_COUNT'
      DisplayFormat = '### ### ### ##0'
    end
    object odsListT001_DR_COUNT_SRC: TStringField
      FieldName = 'T001_DR_COUNT_SRC'
      Size = 255
    end
    object odsListDR_COUNT_DIFF: TFloatField
      FieldName = 'DR_COUNT_DIFF'
    end
    object odsListOWN_EMISSION: TFloatField
      FieldName = 'OWN_EMISSION'
    end
  end
  inherited pkList: TOraclePackage
    PackageName = 'PK_HAND_CORRECT_405'
    ParameterMode = pmNamed
    Left = 104
    Top = 394
  end
  inherited oqAdd: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_rec T001_SUM%ROWTYPE;'
      'BEGIN'
      '  -- ��������� ���������'
      '  v_rec.T002_ID := :T002_ID;'
      '  v_rec.T001_PART_ID := :T001_PART_ID;'
      '  v_rec.T001_DATE_OP := :T001_DATE_OP;'
      '  v_rec.T001_OP_ID := :T001_OP_ID;'
      '  v_rec.T001_OP_PAY_ID := :T001_OP_PAY_ID;'
      '  v_rec.T001_OP_COUNT := :T001_OP_COUNT;'
      '  v_rec.T001_OP_CR_ID := :T001_OP_CR_ID;'
      '  v_rec.T001_OP_SUM := :T001_OP_SUM;'
      '  v_rec.T001_OP_PROC := :T001_OP_PROC;'
      '  v_rec.T001_DATE_ON := :T001_DATE_ON;'
      '  v_rec.T001_DATE_OFF := :T001_DATE_OFF;'
      '  v_rec.T001_CR_ID := :T001_CR_ID;'
      '  v_rec.T001_ROW_PREFIX := :T001_ROW_PREFIX;'
      '  v_rec.T001_ROW_PRFX := :T001_ROW_PRFX;'
      '  v_rec.T001_ROW_NUM := :T001_ROW_NUM;'
      '  v_rec.T001_IS_RANSOM := :T001_IS_RANSOM;'
      '  v_rec.T012_ID := :T012_ID;'
      '  v_rec.T013_ID := :T013_ID;'
      '  v_rec.T030_ID := :T030_ID;'
      '  v_rec.T001_INV_TYPE := :T001_INV_TYPE; '
      '  v_rec.T001_PROCESSED := :T001_PROCESSED; '
      '  v_rec.T001_DPB_COMMENT := :T001_DPB_COMMENT;  '
      ''
      '  Pk_Hand_Correct_405.P_T001_Sum_Add(v_rec);'
      ''
      '  :T001_ID := v_rec.T001_ID;'
      '  :T002_ID := v_rec.T002_ID;'
      '  :T001_PART_ID := v_rec.T001_PART_ID;'
      '  :T001_DATE_OP := v_rec.T001_DATE_OP;'
      '  :T001_OP_ID := v_rec.T001_OP_ID;'
      '  :T001_OP_PAY_ID := v_rec.T001_OP_PAY_ID;'
      '  :T001_OP_COUNT := v_rec.T001_OP_COUNT;'
      '  :T001_OP_CR_ID := v_rec.T001_OP_CR_ID;'
      '  :T001_OP_SUM := v_rec.T001_OP_SUM;'
      '  :T001_OP_PROC := v_rec.T001_OP_PROC;'
      '  :T001_DATE_ON := v_rec.T001_DATE_ON;'
      '  :T001_DATE_OFF := v_rec.T001_DATE_OFF;'
      '  :T001_CR_ID := v_rec.T001_CR_ID;'
      '  :T001_ROW_PREFIX := v_rec.T001_ROW_PREFIX;'
      '  :T001_ROW_PRFX := v_rec.T001_ROW_PRFX;'
      '  :T001_ROW_NUM := v_rec.T001_ROW_NUM;'
      '  :T001_IS_RANSOM := v_rec.T001_IS_RANSOM;'
      '  :T012_ID := v_rec.T012_ID;'
      '  :T013_ID := v_rec.T013_ID;'
      '  :T030_ID := v_rec.T030_ID;'
      '  :T001_INV_TYPE := v_rec.T001_INV_TYPE;'
      '  :T001_DPB_COMMENT :=  v_rec.T001_DPB_COMMENT;'
      ''
      'END;')
    Variables.Data = {
      0300000017000000080000003A543030325F4944040000000000000000000000
      0D0000003A543030315F504152545F49440400000000000000000000000D0000
      003A543030315F444154455F4F500C00000000000000000000000B0000003A54
      3030315F4F505F49440400000000000000000000000F0000003A543030315F4F
      505F5041595F49440400000000000000000000000E0000003A543030315F4F50
      5F434F554E540400000000000000000000000E0000003A543030315F4F505F43
      525F49440500000000000000000000000C0000003A543030315F4F505F53554D
      0400000000000000000000000D0000003A543030315F4F505F50524F43040000
      0000000000000000000D0000003A543030315F444154455F4F4E0C0000000000
      0000000000000E0000003A543030315F444154455F4F46460C00000000000000
      000000000B0000003A543030315F43525F494405000000000000000000000010
      0000003A543030315F524F575F5052454649580400000000000000000000000D
      0000003A543030315F524F575F4E554D04000000000000000000000008000000
      3A543030315F49440400000000000000000000000F0000003A543030315F4953
      5F52414E534F4D050000000000000000000000080000003A543031325F494404
      0000000000000000000000080000003A543031335F4944040000000000000000
      000000080000003A543033305F49440400000000000000000000000E0000003A
      543030315F494E565F54595045030000000000000000000000110000003A5430
      30315F4450425F434F4D4D454E540500000000000000000000000F0000003A54
      3030315F50524F4345535345440400000000000000000000000E0000003A5430
      30315F524F575F50524658050000000000000000000000}
    Left = 152
    Top = 359
  end
  inherited oqUpdate: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_rec T001_SUM%ROWTYPE;'
      'BEGIN'
      '  -- ��������� ���������'
      '  v_rec.T001_ID := :T001_ID;'
      '  v_rec.T001_PART_ID := :T001_PART_ID;'
      '  v_rec.T002_ID := :T002_ID;'
      '  v_rec.T001_ROW_PREFIX := :T001_ROW_PREFIX;'
      '  v_rec.T001_ROW_PRFX := :T001_ROW_PRFX;'
      '  v_rec.T001_ROW_NUM := :T001_ROW_NUM;'
      '  v_rec.T001_DATE_OP := :T001_DATE_OP;'
      '  v_rec.T001_OP_ID := :T001_OP_ID;'
      '  v_rec.T001_OP_PAY_ID := :T001_OP_PAY_ID;'
      '  v_rec.T001_OP_COUNT := :T001_OP_COUNT;'
      '  v_rec.T001_OP_CR_ID := :T001_OP_CR_ID;'
      '  v_rec.T001_OP_SUM := :T001_OP_SUM;'
      '  v_rec.T001_OP_PROC := :T001_OP_PROC;'
      '  v_rec.T001_DATE_ON := :T001_DATE_ON;'
      '  v_rec.T001_DATE_OFF := :T001_DATE_OFF;'
      '  v_rec.T001_CR_ID := :T001_CR_ID;'
      '  v_rec.T001_IS_RANSOM := :T001_IS_RANSOM;'
      '  v_rec.T012_ID := :T012_ID;'
      '  v_rec.T013_ID := :T013_ID;'
      '  v_rec.T030_ID := :T030_ID;'
      '  v_rec.T035_ID := :T035_ID;'
      '  v_rec.T001_N8 := :T001_N8;'
      '  v_rec.T001_N9 := :T001_N9;'
      '  v_rec.T001_10 := :T001_10;'
      '  v_rec.T001_11 := :T001_11;'
      '  v_rec.T001_N99 := :T001_N99;'
      '  v_rec.T001_COMMENT := :T001_COMMENT;'
      '  v_rec.T001_C11 := :T001_C11;'
      '  v_rec.T001_C12 := :T001_C12;'
      '  v_rec.T001_C16 := :T001_C16;'
      '  v_rec.T001_C17 := :T001_C17;'
      '  v_rec.T001_C18 := :T001_C18;'
      '  v_rec.T001_C19 := :T001_C19;'
      '  v_rec.T001_C20 := :T001_C20;'
      '  v_rec.T001_INV_TYPE := :T001_INV_TYPE;'
      '  v_rec.T001_PROCESSED := :T001_PROCESSED;'
      '  v_rec.T001_DPB_COMMENT := :T001_DPB_COMMENT;'
      '  v_rec.T001_DATA_SOURCE := :T001_DATA_SOURCE;'
      '  v_rec.IS_FIRST := :IS_FIRST;'
      ''
      '  Pk_Hand_Correct_405.P_T001_Sum_Update(v_rec);'
      ''
      '  :T001_ID := v_rec.T001_ID;'
      '  :T002_ID := v_rec.T002_ID;'
      '  :T001_PART_ID := v_rec.T001_PART_ID;'
      '  :T001_DATE_OP := v_rec.T001_DATE_OP;'
      '  :T001_OP_ID := v_rec.T001_OP_ID;'
      '  :T001_OP_PAY_ID := v_rec.T001_OP_PAY_ID;'
      '  :T001_OP_COUNT := v_rec.T001_OP_COUNT;'
      '  :T001_OP_CR_ID := v_rec.T001_OP_CR_ID;'
      '  :T001_OP_SUM := v_rec.T001_OP_SUM;'
      '  :T001_OP_PROC := v_rec.T001_OP_PROC;'
      '  :T001_DATE_ON := v_rec.T001_DATE_ON;'
      '  :T001_DATE_OFF := v_rec.T001_DATE_OFF;'
      '  :T001_CR_ID := v_rec.T001_CR_ID;'
      '  :T001_IS_RANSOM := v_rec.T001_IS_RANSOM;'
      '  :T012_ID := v_rec.T012_ID;'
      '  :T013_ID := v_rec.T013_ID;'
      '  :T030_ID := v_rec.T030_ID;'
      '  :T001_ROW_PREFIX := v_rec.T001_ROW_PREFIX;'
      '  :T001_ROW_PRFX := v_rec.T001_ROW_PRFX;'
      '  :T001_ROW_NUM := v_rec.T001_ROW_NUM;'
      '  :T035_ID := v_rec.T035_ID;'
      '  :T001_N8 := v_rec.T001_N8;'
      '  :T001_N9 := v_rec.T001_N9;'
      '  :T001_10 := v_rec.T001_10;'
      '  :T001_11 := v_rec.T001_11;'
      '  :T001_N99 := v_rec.T001_N99;'
      '  :T001_COMMENT := v_rec.T001_COMMENT;'
      '  :T001_C11 := v_rec.T001_C11;'
      '  :T001_C12 := v_rec.T001_C12;'
      '  :T001_C16 := v_rec.T001_C16;'
      '  :T001_C17 := v_rec.T001_C17;'
      '  :T001_C18 := v_rec.T001_C18;'
      '  :T001_C19 := v_rec.T001_C19;'
      '  :T001_C20 := v_rec.T001_C20;'
      '  :T001_INV_TYPE := v_rec.T001_INV_TYPE;'
      '  :T001_DPB_COMMENT := v_rec.T001_DPB_COMMENT;'
      ''
      'END;'
      ''
      ''
      ''
      ' '
      ' '
      ' '
      ' ')
    Variables.Data = {
      0300000027000000080000003A543030315F4944040000000000000000000000
      0D0000003A543030315F444154455F4F500C00000000000000000000000B0000
      003A543030315F4F505F49440400000000000000000000000F0000003A543030
      315F4F505F5041595F49440400000000000000000000000E0000003A54303031
      5F4F505F434F554E540400000000000000000000000E0000003A543030315F4F
      505F43525F49440500000000000000000000000C0000003A543030315F4F505F
      53554D0400000000000000000000000D0000003A543030315F4F505F50524F43
      0400000000000000000000000D0000003A543030315F444154455F4F4E0C0000
      0000000000000000000E0000003A543030315F444154455F4F46460C00000000
      000000000000000B0000003A543030315F43525F494405000000000000000000
      0000080000003A543030325F49440400000000000000000000000D0000003A54
      3030315F504152545F4944040000000000000000000000100000003A54303031
      5F524F575F5052454649580400000000000000000000000D0000003A54303031
      5F524F575F4E554D040000000000000000000000080000003A543031325F4944
      040000000000000000000000080000003A543031335F49440400000000000000
      000000000F0000003A543030315F49535F52414E534F4D050000000000000000
      000000080000003A543033305F4944040000000000000000000000080000003A
      543033355F4944040000000000000000000000080000003A543030315F4E3804
      0000000000000000000000080000003A543030315F4E39040000000000000000
      000000080000003A543030315F3130040000000000000000000000080000003A
      543030315F3131040000000000000000000000090000003A543030315F4E3939
      0400000000000000000000000D0000003A543030315F434F4D4D454E54050000
      000000000000000000090000003A543030315F43313105000000000000000000
      0000090000003A543030315F433132050000000000000000000000090000003A
      543030315F433136050000000000000000000000090000003A543030315F4331
      37050000000000000000000000090000003A543030315F433138050000000000
      000000000000090000003A543030315F43313905000000000000000000000009
      0000003A543030315F4332300500000000000000000000000E0000003A543030
      315F494E565F54595045030000000000000000000000110000003A543030315F
      4450425F434F4D4D454E540500000000000000000000000F0000003A54303031
      5F50524F434553534544040000000000000000000000110000003A543030315F
      444154415F534F55524345040000000000000000000000090000003A49535F46
      495253540500000000000000000000000E0000003A543030315F524F575F5052
      4658050000000000000000000000}
    Left = 192
    Top = 359
  end
  inherited oqDelete: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_id T001_SUM.T001_ID%TYPE;'
      'BEGIN'
      '  -- ��������� ���������'
      '  v_id := :T001_ID;'
      '  Pk_Hand_Correct_405.p_t001_sum_delete(v_id);'
      'END;'
      ' '
      '')
    Variables.Data = {
      0300000001000000080000003A543030315F4944040000000000000000000000}
    Left = 232
    Top = 359
  end
  inherited oqDupl: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_rec T001_SUM%ROWTYPE;'
      'BEGIN'
      '  -- ��������� ���������'
      '  v_rec.T002_ID := :T002_ID;'
      '  v_rec.T001_PART_ID := :T001_PART_ID;'
      '  v_rec.T001_DATE_OP := :T001_DATE_OP;'
      '  v_rec.T001_OP_ID := :T001_OP_ID;'
      '  v_rec.T001_OP_PAY_ID := :T001_OP_PAY_ID;'
      '  v_rec.T001_OP_COUNT := :T001_OP_COUNT;'
      '  v_rec.T001_OP_CR_ID := :T001_OP_CR_ID;'
      '  v_rec.T001_OP_SUM := :T001_OP_SUM;'
      '  v_rec.T001_OP_PROC := :T001_OP_PROC;'
      '  v_rec.T001_DATE_ON := :T001_DATE_ON;'
      '  v_rec.T001_DATE_OFF := :T001_DATE_OFF;'
      '  v_rec.T001_CR_ID := :T001_CR_ID;'
      '  v_rec.T001_ROW_PREFIX := :T001_ROW_PREFIX;'
      '  v_rec.T001_ROW_NUM := :T001_ROW_NUM;'
      '  v_rec.T012_ID := :T012_ID;'
      '  v_rec.T013_ID := :T013_ID;'
      '  v_rec.T030_ID := :T030_ID;'
      ''
      '  :o_result := Pk_Hand_Correct_405.F_T001_Sum_Check(v_rec);'
      'END;'
      ''
      ''
      ' ')
    Variables.Data = {
      0300000012000000080000003A543030325F4944040000000000000000000000
      0D0000003A543030315F504152545F49440400000000000000000000000D0000
      003A543030315F444154455F4F500C00000000000000000000000B0000003A54
      3030315F4F505F49440400000000000000000000000F0000003A543030315F4F
      505F5041595F49440400000000000000000000000E0000003A543030315F4F50
      5F434F554E540400000000000000000000000E0000003A543030315F4F505F43
      525F49440500000000000000000000000C0000003A543030315F4F505F53554D
      0400000000000000000000000D0000003A543030315F4F505F50524F43040000
      0000000000000000000D0000003A543030315F444154455F4F4E0C0000000000
      0000000000000E0000003A543030315F444154455F4F46460C00000000000000
      000000000B0000003A543030315F43525F494405000000000000000000000010
      0000003A543030315F524F575F5052454649580400000000000000000000000D
      0000003A543030315F524F575F4E554D04000000000000000000000009000000
      3A4F5F524553554C54040000000000000000000000080000003A543031325F49
      44040000000000000000000000080000003A543031335F494404000000000000
      0000000000080000003A543033305F4944040000000000000000000000}
    Left = 280
    Top = 359
  end
  object oqAddDividend: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  -- ��������� ���������'
      '  Pk_Hand_Correct_405.p_add_dividend_to_sum(:T001_ID, :T050_ID);'
      '  commit;'
      'END;')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000002000000080000003A543030315F4944040000000000000000000000
      080000003A543035305F4944040000000000000000000000}
    Left = 224
    Top = 415
  end
  object odsCount: TOracleDataSet
    SQL.Strings = (
      'SELECT count(*) AS COUNT_STR,'
      
        '              SUM(DECODE(T006_DIRECTION, 0, T001_OP_SUM_CROSS, 0' +
        ')) SUM_IN,'
      
        '              SUM(DECODE(T006_DIRECTION, 0, T001_OP_PROC_CROSS, ' +
        '0)) PROC_IN,'
      
        '              SUM(DECODE(T006_DIRECTION, 0, T001_OP_COUNT, 0)) C' +
        'OUNT_IN,'
      
        '              SUM(DECODE(T006_DIRECTION, 0, DECODE(T001_OP_COUNT' +
        ', 0, 0, T001_OP_SUM_CROSS / T001_OP_COUNT), 0)) PRICE_IN,'
      
        '              SUM(DECODE(T006_DIRECTION, 1, T001_OP_SUM_CROSS, 0' +
        ')) SUM_OUT,'
      
        '              SUM(DECODE(T006_DIRECTION, 1, T001_OP_PROC_CROSS, ' +
        '0)) PROC_OUT,'
      
        '              SUM(DECODE(T006_DIRECTION, 1, T001_OP_COUNT, 0)) C' +
        'OUNT_OUT,'
      
        '              SUM(DECODE(T006_DIRECTION, 1, DECODE(T001_OP_COUNT' +
        ', 0, 0, T001_OP_SUM_CROSS / T001_OP_COUNT), 0)) PRICE_OUT,'
      
        '              SUM(DECODE(T006_DIRECTION, 0, T001_OP_SUM_CROSS, -' +
        'T001_OP_SUM_CROSS)) SUM_SALDO,'
      
        '              SUM(DECODE(T006_DIRECTION, 0, T001_OP_PROC_CROSS, ' +
        '-T001_OP_PROC_CROSS)) PROC_SALDO,'
      
        '              SUM(DECODE(T006_DIRECTION, 0, T001_OP_COUNT, -T001' +
        '_OP_COUNT)) COUNT_SALDO,'
      
        '              SUM(DECODE(T006_DIRECTION, 0, DECODE(T001_OP_COUNT' +
        ', 0, 0, T001_OP_SUM_CROSS / T001_OP_COUNT), -DECODE(T001_OP_COUN' +
        'T, 0, 0, T001_OP_SUM_CROSS / T001_OP_COUNT))) PRICE_SALDO'
      'FROM ('
      'SELECT /*+ FIRST_ROWS */'
      
        ' T002_ID, T001_PART_ID, T005_DISPLAY_NAME, T002_BANK_CODE, T002_' +
        'REPORT_DATE,'
      
        ' T002_NUMB_IN_YEA, T002_NUMB_IN_YEA_DESC, T002_KP_ID, T001_ID, T' +
        '001_ROW_PREFIX,'
      
        ' T001_ROW_NUM, T001_DATE_OP, T001_TYPE_ID, T016_BOND_ID, T001_OP' +
        '_ID,'
      
        ' T011_TYPE_ID, T001_OP_PAY_ID, T006_NAME, T001_OP_COUNT, T001_OP' +
        '_CR_ID,'
      
        ' T001_OP_CR_DESC, T001_OP_SUM, T001_OP_PROC, T001_OP_SUM_CROSS, ' +
        'T001_OP_PROC_CROSS, T012_ID, T001_REZID_NAME,'
      
        ' T001_REZID_CO_ID, T001_REZID_TYPE, T013_ID, T001_NREZID_NAME, T' +
        '001_NREZID_CO_ID,'
      
        ' T001_NREZID_COUNTRY, T001_NREZID_TYPE, T028_SHOT_NAME, T028_COD' +
        'E, T025_CODE,'
      
        ' T025_SHOT_NAME, T001_REG_NUM, T001_DATE_ON, T001_DATE_OFF, T001' +
        '_CR_ID,'
      ' T001_CR_DESC, T001_PARENT_ID, T001_ROWID,'
      ' T001_IS_RANSOM, T030_ID, T050_ID, T050_DESC, T006_DIRECTION'
      'FROM V_T001_SUM'
      '     )'
      ' '
      ' '
      ' '
      ' ')
    QBEDefinition.QBEFieldDefs = {
      040000000D00000009000000434F554E545F5354520100000000000600000053
      554D5F494E0100000000000700000050524F435F494E01000000000008000000
      434F554E545F494E0100000000000700000053554D5F4F555401000000000008
      00000050524F435F4F555401000000000009000000434F554E545F4F55540100
      000000000900000053554D5F53414C444F0100000000000A00000050524F435F
      53414C444F0100000000000B000000434F554E545F53414C444F010000000000
      0800000050524943455F494E0100000000000900000050524943455F4F555401
      00000000000B00000050524943455F53414C444F010000000000}
    Cursor = crHourGlass
    ReadOnly = True
    Session = dmMain.OracleSession
    Left = 112
    Top = 459
    object odsCountCOUNT_STR: TFloatField
      Alignment = taLeftJustify
      FieldName = 'COUNT_STR'
      DisplayFormat = '0'
      EditFormat = '0'
    end
    object odsCountSUM_IN: TFloatField
      FieldName = 'SUM_IN'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsCountPROC_IN: TFloatField
      FieldName = 'PROC_IN'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsCountCOUNT_IN: TFloatField
      FieldName = 'COUNT_IN'
      DisplayFormat = '### ### ### ##0'
      EditFormat = '0'
    end
    object odsCountSUM_OUT: TFloatField
      FieldName = 'SUM_OUT'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsCountPROC_OUT: TFloatField
      FieldName = 'PROC_OUT'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsCountCOUNT_OUT: TFloatField
      FieldName = 'COUNT_OUT'
      DisplayFormat = '### ### ### ##0'
      EditFormat = '0'
    end
    object odsCountSUM_SALDO: TFloatField
      FieldName = 'SUM_SALDO'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsCountPROC_SALDO: TFloatField
      FieldName = 'PROC_SALDO'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsCountCOUNT_SALDO: TFloatField
      FieldName = 'COUNT_SALDO'
      DisplayFormat = '### ### ### ##0'
      EditFormat = '0'
    end
    object odsCountPRICE_IN: TFloatField
      FieldName = 'PRICE_IN'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsCountPRICE_OUT: TFloatField
      FieldName = 'PRICE_OUT'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsCountPRICE_SALDO: TFloatField
      FieldName = 'PRICE_SALDO'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
  end
  object dsCount: TDataSource
    DataSet = odsCount
    Left = 152
    Top = 459
  end
  object dsType: TDataSource
    DataSet = odsType
    Left = 392
    Top = 58
  end
  object odsType: TOracleDataSet
    SQL.Strings = (
      
        'SELECT T027_ID, T027_SEC_TYPE, T027_SEC_TYPE || '#39' - '#39' || T027_CO' +
        'MMENTS DESC_FLD'
      'FROM V_405_SEC_TYPE'
      'ORDER BY T027_SEC_TYPE')
    QBEDefinition.QBEFieldDefs = {
      040000000300000008000000444553435F464C44010000000000070000005430
      32375F49440100000000000D000000543032375F5345435F5459504501000000
      0000}
    Session = dmMain.OracleSession
    Left = 360
    Top = 58
    object odsTypeT027_ID: TFloatField
      FieldName = 'T027_ID'
      Required = True
    end
    object odsTypeDESC_FLD: TStringField
      FieldName = 'DESC_FLD'
      Size = 513
    end
  end
  object odsPay: TOracleDataSet
    SQL.Strings = (
      'SELECT T006_ID, T006_NAME || '#39' - '#39' || T006_DESC DESC_FLD'
      'FROM V_PAY_VIEW'
      'ORDER BY T006_NAME')
    QBEDefinition.QBEFieldDefs = {
      040000000200000008000000444553435F464C44010000000000070000005430
      30365F4944010000000000}
    Session = dmMain.OracleSession
    Left = 424
    Top = 90
    object odsPayT006_ID: TFloatField
      FieldName = 'T006_ID'
      Required = True
    end
    object odsPayDESC_FLD: TStringField
      FieldName = 'DESC_FLD'
      Size = 1258
    end
  end
  object dsPay: TDataSource
    DataSet = odsPay
    Left = 456
    Top = 90
  end
  object oqSetInvType: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  PK_FORM_405.p_Set_Inv_Type_One (:T001_INV_TYPE, :T001_ID);'
      '  COMMIT;'
      'END;'
      ' ')
    Session = dmMain.OracleSession
    Variables.Data = {
      03000000020000000E0000003A543030315F494E565F54595045030000000000
      000000000000080000003A543030315F4944040000000000000000000000}
    Left = 936
    Top = 88
  end
  object oqCloneSumInfo: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  -- ��������� ���������'
      '  Pk_Hand_Correct_405.p_t001_sum_clone( :T001_ID);'
      'END;'
      ' ')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000001000000080000003A543030315F4944040000000000000000000000}
    Left = 329
    Top = 359
  end
  object oqMultiUpdate: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  -- ��������� ���������'
      '  Pk_Form_405.P_Update_Matur_Date(:T001_DATE_OFF, :T001_ID);'
      'END;'
      ''
      ''
      ''
      ' '
      ' '
      ' '
      ' ')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000002000000080000003A543030315F4944040000000000000000000000
      0E0000003A543030315F444154455F4F46460C0000000000000000000000}
    Left = 400
    Top = 359
  end
  object pmEdit: TPopupMenu
    Left = 680
    Top = 171
    object miEditRecord: TMenuItem
      Action = actEditAttributes
    end
    object miEditSecType: TMenuItem
      Action = actEditSecType
    end
    object N16: TMenuItem
      Action = actEditDrCount
    end
  end
  object oqEditSecType: TOracleQuery
    SQL.Strings = (
      'begin'
      '  PK_HAND_CORRECT_405.p_change_sec_type(:T001_ID, :T027_ID_NEW);'
      'end;')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000002000000080000003A543030315F4944040000000000000000000000
      0C0000003A543032375F49445F4E4557040000000000000000000000}
    Left = 672
    Top = 347
  end
  object oqSetDrCount: TOracleQuery
    SQL.Strings = (
      'begin'
      
        '  Pk_Hand_Correct_405.p_change_dr_count(:T001_ID, :T001_DR_COUNT' +
        ', :COMMENT, :USER);'
      'end;')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000004000000080000003A543030315F4944040000000000000000000000
      0E0000003A543030315F44525F434F554E540400000000000000000000000800
      00003A434F4D4D454E54050000000000000000000000050000003A5553455205
      0000000000000000000000}
    Left = 968
    Top = 88
  end
  object oqCheckIsu: TOracleQuery
    SQL.Strings = (
      'begin'
      '  Pk_405_Inn_Ko_Isu.p_check_isu;'
      'end;')
    Session = dmMain.OracleSession
    Left = 1000
    Top = 88
  end
end