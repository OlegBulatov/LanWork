inherited A001_0_LoadEmit: TA001_0_LoadEmit
  Left = 628
  Top = 413
  Caption = 'A001_0_LoadEmit'
  OldCreateOrder = True
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 405
    Width = 680
    Height = 37
    Align = alBottom
    TabOrder = 0
    object Panel3: TPanel
      Left = 421
      Top = 1
      Width = 258
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
      object BtnFinish: TButton
        Left = 166
        Top = 5
        Width = 75
        Height = 23
        Action = actFinish
        Cancel = True
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
      end
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 680
    Height = 405
    ActivePage = Tab1
    Align = alClient
    TabOrder = 1
    OnChanging = PageControl1Changing
    object Tab1: TTabSheet
      Caption = '��� 1'
      ImageIndex = 3
      inline fm21SepDescription1: Tfm21SepDescription
        Width = 672
        Align = alTop
        inherited Bevel1: TBevel
          Width = 672
        end
        inherited Panel1: TPanel
          Width = 672
          inherited Label1: TLabel
            Width = 281
            Caption = '�������� ���� � ������� � ������� ������ "�����".'
          end
        end
        inherited Panel2: TPanel
          Width = 672
          inherited Label3: TLabel
            Width = 231
            Caption = '��� 1 - ����� ����� �������� ������'
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
    object actFinish: TAction
      Caption = '���������'
      OnExecute = actFinishExecute
      OnUpdate = actFinishUpdate
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
