inherited frm80_WizardList: Tfrm80_WizardList
  Left = 173
  Top = 229
  Width = 922
  Height = 751
  Caption = 'frm80_WizardList'
  OldCreateOrder = True
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 687
    Width = 914
    Height = 37
    Align = alBottom
    TabOrder = 0
    object Panel3: TPanel
      Left = 731
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
    Width = 914
    Height = 687
    ActivePage = Tab1
    Align = alClient
    TabOrder = 1
    OnChanging = PageControl1Changing
    object Tab1: TTabSheet
      Caption = '��� 1'
      ImageIndex = 3
      inline fm21SepDescription1: Tfm21SepDescription
        Width = 906
        Align = alTop
        inherited Bevel1: TBevel
          Width = 906
        end
        inherited Panel1: TPanel
          Width = 906
        end
        inherited Panel2: TPanel
          Width = 906
        end
      end
    end
    object Tab2: TTabSheet
      Caption = '��� 2'
      ImageIndex = 2
      OnShow = Tab2Show
      inline fm21SepDescription2: Tfm21SepDescription
        Width = 906
        Align = alTop
        inherited Bevel1: TBevel
          Width = 906
        end
        inherited Panel1: TPanel
          Width = 906
        end
        inherited Panel2: TPanel
          Width = 906
          inherited Label3: TLabel
            Caption = '��� 2 - ����� ��������� �������'
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
end
