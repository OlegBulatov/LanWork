inherited frm05_StrOwnership: Tfrm05_StrOwnership
  Left = 233
  Top = 217
  Width = 781
  Height = 492
  Caption = 'frm05_StrOwnership'
  OldCreateOrder = True
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 340
    Top = 0
    Width = 5
    Height = 465
    Cursor = crHSplit
  end
  object paIssuerList: TPanel
    Left = 0
    Top = 0
    Width = 340
    Height = 465
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 0
    object tsIssuersList: TTabSheet
      Caption = '��������'
    end
  end
  object pcDetails: TPageControl
    Left = 345
    Top = 0
    Width = 428
    Height = 465
    ActivePage = tsEmissions
    Align = alClient
    Style = tsFlatButtons
    TabOrder = 1
    OnChange = pcDetailsChange
    OnChanging = pcDetailsChanging
    object tsDividend: TTabSheet
      Caption = '����������'
      ImageIndex = 1
    end
    object tsStruct: TTabSheet
      Caption = '���������'
      ImageIndex = 3
    end
    object tsEmissions: TTabSheet
      Caption = '�������'
    end
    object tsRepData: TTabSheet
      Caption = '������ ��� �������'
      ImageIndex = 4
    end
    object tsPrimaryData: TTabSheet
      Caption = '��������� ������'
      ImageIndex = 5
    end
    object tsPaysDiagram: TTabSheet
      Caption = '������ ������'
      ImageIndex = 6
    end
  end
end
