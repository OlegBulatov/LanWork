inherited A003_0_FSFR: TA003_0_FSFR
  Left = 245
  Top = 236
  Caption = 'A003_0_FSFR'
  OldCreateOrder = True
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 410
    Width = 688
    Height = 37
    Align = alBottom
    TabOrder = 0
    object Panel3: TPanel
      Left = 505
      Top = 1
      Width = 182
      Height = 35
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 0
      object OKBtn: TButton
        Left = 14
        Top = 5
        Width = 75
        Height = 23
        Action = actBack
        TabOrder = 0
      end
      object CancelBtn: TButton
        Left = 90
        Top = 5
        Width = 75
        Height = 23
        Action = actNext
        Cancel = True
        TabOrder = 1
      end
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 688
    Height = 410
    ActivePage = Tab1
    Align = alClient
    TabOrder = 1
    OnChanging = PageControl1Changing
    object Tab1: TTabSheet
      Caption = '��� 1'
      ImageIndex = 3
      inline fm21SepDescription1: Tfm21SepDescription
        Width = 680
        Align = alTop
        inherited Bevel1: TBevel
          Width = 680
        end
        inherited Panel1: TPanel
          Width = 680
          inherited Label1: TLabel
            Width = 281
            Caption = '�������� ���� � ������� � ������� ������ "�����".'
          end
        end
        inherited Panel2: TPanel
          Width = 680
          inherited Label3: TLabel
            Width = 238
            Caption = '��� 1 - ����� ����� � ������� ����'
          end
          inherited Label4: TLabel
            Width = 243
            Caption = '�� ������ ����� ���������� �������� ������?'
          end
        end
      end
    end
    object Tab2: TTabSheet
      Caption = '��� 2'
      ImageIndex = 2
      inline fm21SepDescription2: Tfm21SepDescription
        Width = 680
        Align = alTop
        inherited Bevel1: TBevel
          Width = 680
        end
        inherited Panel1: TPanel
          Width = 680
          inherited Label1: TLabel
            Width = 304
            Caption = '��� �������� �� ��������� ��� ������� ������ "�����".'
          end
        end
        inherited Panel2: TPanel
          Width = 680
          inherited Label3: TLabel
            Width = 146
            Caption = '��� 2 - �������� �����'
          end
          inherited Label4: TLabel
            Width = 206
            Caption = '�������� ����������� ������ � �����'
          end
          inherited lblDesc1: TLabel
            Enabled = True
            Visible = True
          end
        end
      end
    end
    object Tab3: TTabSheet
      Caption = '��� 3'
      ImageIndex = 4
      inline fm21SepDescription3: Tfm21SepDescription
        Width = 680
        Align = alTop
        inherited Bevel1: TBevel
          Width = 680
        end
        inherited Panel1: TPanel
          Width = 680
          inherited Label1: TLabel
            Width = 278
            Caption = '��� ������ ������ � �� ������� ������ "��������".'
          end
        end
        inherited Panel2: TPanel
          Width = 680
          inherited Label3: TLabel
            Width = 279
            Caption = '��� 3 - ������������� ����������� ��������'
          end
          inherited Label4: TLabel
            Width = 265
            Caption = '����������� ���������� �������� ������ � �����'
          end
          inherited lblDesc1: TLabel
            Enabled = True
            Visible = True
          end
          inherited lblDesc2: TLabel
            Enabled = True
            Visible = True
          end
        end
      end
    end
  end
  object ActionList1: TActionList
    Left = 492
    Top = 160
    object actBack: TAction
      Caption = '< �����'
      OnExecute = actBackExecute
      OnUpdate = actBackUpdate
    end
    object actNext: TAction
      Caption = '����� >'
      OnExecute = actNextExecute
      OnUpdate = actNextUpdate
    end
  end
  object oqApplyChanges: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  PK_405_CALC_REMAINS.p_apply_state (:I_T055_ID);'
      '  COMMIT;'
      'END; ')
    Session = dmMain.OracleSession
    Variables.Data = {
      03000000010000000A0000003A495F543035355F494404000000000000000000
      0000}
    Left = 176
    Top = 184
  end
end
