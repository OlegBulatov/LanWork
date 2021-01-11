inherited frm91_405Links: Tfrm91_405Links
  Left = 265
  Top = 246
  Width = 611
  Height = 492
  Caption = 'frm91_405Links'
  OldCreateOrder = True
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 421
    Width = 603
    Height = 37
    Align = alBottom
    TabOrder = 0
    object Panel3: TPanel
      Left = 420
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
    Width = 603
    Height = 421
    ActivePage = Tab1
    Align = alClient
    TabOrder = 1
    OnChanging = PageControl1Changing
    object Tab1: TTabSheet
      Caption = 'Шаг 1'
      ImageIndex = 3
      inline fm21SepDescription1: Tfm21SepDescription
        Width = 595
        Align = alTop
        inherited Bevel1: TBevel
          Width = 595
        end
        inherited Panel1: TPanel
          Width = 595
        end
        inherited Panel2: TPanel
          Width = 595
          inherited Label3: TLabel
            Width = 187
            Caption = 'Шаг 1 - Связывание эмитентов'
          end
          inherited Label4: TLabel
            Width = 380
            Caption = 
              'Для связывания эмиссий выберите эмитента и нажмите кнопку "Далее' +
              '".'
          end
          inherited lblDesc1: TLabel
            Left = 531
          end
          inherited lblDesc2: TLabel
            Left = 531
          end
        end
      end
    end
    object Tab2: TTabSheet
      Caption = 'Шаг 2'
      ImageIndex = 2
      inline fm21SepDescription2: Tfm21SepDescription
        Width = 595
        Height = 52
        Align = alTop
        inherited Bevel1: TBevel
          Width = 595
        end
        inherited Panel1: TPanel
          Width = 595
          Height = 0
          Align = alNone
          inherited Label1: TLabel
            Width = 46
            Caption = 'Эмитент:'
          end
        end
        inherited Panel2: TPanel
          Width = 595
          inherited Label3: TLabel
            Width = 175
            Caption = 'Шаг 2 - Связывание эмиссий'
          end
          inherited Label4: TLabel
            Width = 46
            Caption = 'Эмитент:'
          end
          inherited lblDesc1: TLabel
            Left = 531
          end
          inherited lblDesc2: TLabel
            Left = 531
          end
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 52
        Width = 595
        Height = 28
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
      end
    end
  end
  object ActionList1: TActionList
    Left = 492
    Top = 160
    object actBack: TAction
      Caption = '< Назад'
      OnExecute = actBackExecute
      OnUpdate = actBackUpdate
    end
    object actNext: TAction
      Caption = 'Далее >'
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
