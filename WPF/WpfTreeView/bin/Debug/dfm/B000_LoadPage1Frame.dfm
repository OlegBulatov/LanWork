inherited B000_LoadPage1: TB000_LoadPage1
  Width = 879
  Height = 500
  inherited Bevel: TBevel
    Width = 879
  end
  inherited PanelStepCaption: TPanel
    Width = 879
    OnResize = PanelStepCaptionResize
    inherited Label1: TLabel
      Width = 218
      Caption = '��� 1 - ����� ������� ��� ��������'
    end
    inherited Label2: TLabel
      Width = 232
      Caption = '�������� ������ � ������� ������ "�����".'
    end
    object sbReload: TSpeedButton
      Left = 743
      Top = 15
      Width = 23
      Height = 22
      Action = actReload
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000BFBF000000000000FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF0000000000BFBF0000BFBF0000BFBF00000000
        0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF0000000000BFBF0000BFBF0000BFBF0000BFBF0000BFBF
        000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0000000000BFBF0000BFBF0000BFBF0000BFBF0000BFBF0000BFBF
        0000BFBF000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0000000000000000000000000000000000BFBF0000BFBF0000BFBF00000000
        0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF0000000000BFBF0000BFBF0000BFBF00000000
        0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF0000000000BFBF0000BFBF0000BFBF00000000
        0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF0000000000BFBF0000BFBF0000BFBF00000000
        0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00000000000000000000000000000000000000
        0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      ParentShowHint = False
      ShowHint = True
    end
    object stLoadDate: TStaticText
      Left = 580
      Top = 24
      Width = 161
      Height = 17
      Caption = '������ �� 20.12.2045 18:40:00'
      TabOrder = 0
    end
  end
  inherited PanelStepBody: TPanel
    Width = 879
    Height = 448
    object Filters: TPanel
      Left = 0
      Top = 0
      Width = 879
      Height = 89
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object GroupBox1: TGroupBox
        Left = 5
        Top = 0
        Width = 870
        Height = 86
        Anchors = [akLeft, akTop, akRight]
        Caption = ' ������ '
        TabOrder = 0
        inline PeriodFilter: TB000_PeriodFilter
          Left = 12
          Top = 15
          Width = 515
          inherited Label1: TLabel
            Left = 315
          end
          inherited lcb: TxxxDBLookupCheckCombo
            Left = 123
            Width = 184
          end
          inherited lcb2: TRxDBLookupCombo
            Left = 331
            Width = 184
          end
          inherited actList: TActionList
            Left = 128
            Top = 12
          end
        end
        inline ReportTypeFilter: TB000_ReportTypeFilter
          Left = 11
          Top = 40
          Width = 515
          TabOrder = 1
          inherited lcb: TxxxDBLookupCheckCombo
            Left = 124
            Width = 392
          end
          inherited cb: TCheckBox
            Checked = False
            State = cbUnchecked
          end
        end
      end
    end
    inline Grid: TB000_LoadPage1Grid
      Top = 89
      Width = 879
      Height = 359
      Align = alClient
      TabOrder = 1
      inherited xxxDBGrid: TxxxDBGrid
        Width = 879
        Height = 311
        Columns = <
          item
            Expanded = False
            FieldName = 'T055_LONG_NAME'
            PickList.Strings = ()
            Title.Caption = '����� �� ������'
            Width = 108
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BANK_CODE'
            PickList.Strings = ()
            Title.Caption = '��� ��'
            Width = 48
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BANK_NAME'
            PickList.Strings = ()
            Title.Caption = '�������� ��'
            Width = 274
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'GCI_DATE'
            PickList.Strings = ()
            Title.Caption = '���� ���'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DPB_DATE'
            PickList.Strings = ()
            Title.Caption = '���� ��'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'REPORT_TYPE_NAME'
            PickList.Strings = ()
            Title.Caption = '��� ������'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IS_CHECKED'
            PickList.Strings = ()
            Title.Caption = '���������'
            Width = 58
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'F711_ID'
            PickList.Strings = ()
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'T055_ID'
            PickList.Strings = ()
            Visible = False
          end>
      end
      inherited paToolButton: TPanel
        Width = 879
      end
      inherited Panel1: TPanel
        Top = 336
        Width = 879
        inherited cbLoadN: TCheckBox
          OnClick = nil
        end
        inherited cbLoadR: TCheckBox
          OnClick = nil
        end
      end
      inherited odsList: TOracleDataSet
        AfterOpen = GridodsListAfterOpen
      end
    end
  end
  inherited actList: TActionList
    Top = 8
    object actReload: TAction
      Hint = '�������� ������ ���'
      ImageIndex = 16
      OnExecute = actReloadExecute
      OnUpdate = actReloadUpdate
    end
  end
  object oqReload: TOracleQuery
    SQL.Strings = (
      'begin'
      '  Pk_405_Load_711.p_refresh_711_gci_data;'
      'end;')
    Session = dmMain.OracleSession
    Left = 464
    Top = 8
  end
  object odsLastLoad: TOracleDataSet
    SQL.Strings = (
      'SELECT T222_DATE'
      'FROM   V_405_711_GCI_LOADS')
    QBEDefinition.QBEFieldDefs = {040000000100000009000000543232325F44415445010000000000}
    Session = dmMain.OracleSession
    AfterOpen = odsLastLoadAfterOpen
    Left = 416
    Top = 8
    object odsLastLoadT222_DATE: TDateTimeField
      FieldName = 'T222_DATE'
    end
  end
end
