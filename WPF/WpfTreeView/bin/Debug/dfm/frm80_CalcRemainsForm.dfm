inherited frm80_CalcRemains: Tfrm80_CalcRemains
  Left = 229
  Top = 180
  Caption = 'frm80_CalcRemains'
  OldCreateOrder = True
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
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
    ActivePage = Tab9
    Align = alClient
    TabOrder = 1
    OnChanging = PageControl1Changing
    object Tab1: TTabSheet
      Caption = 'Шаг 1'
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
            Width = 346
            Caption = 'Выберите из списка тип ценной бумаги и нажмите кнопку "Далее".'
          end
        end
        inherited Panel2: TPanel
          Width = 672
          inherited Label3: TLabel
            Width = 208
            Caption = 'Шаг 1 - Выбор типа ценной бумаги'
          end
          inherited Label4: TLabel
            Width = 269
            Caption = 'Для ценных бумаг какого типа производить расчет?'
          end
          inherited lblDesc1: TLabel
            Left = 608
          end
          inherited lblDesc2: TLabel
            Left = 608
          end
        end
      end
    end
    object Tab2: TTabSheet
      Caption = 'Шаг 2'
      ImageIndex = 2
      inline fm21SepDescription2: Tfm21SepDescription
        Width = 672
        Align = alTop
        inherited Bevel1: TBevel
          Width = 672
        end
        inherited Panel1: TPanel
          Width = 672
          inherited Label1: TLabel
            Width = 312
            Caption = 'Выберите период и нажмите кнопку "Далее" или "Дефолты"'
          end
        end
        inherited Panel2: TPanel
          Width = 672
          inherited Label3: TLabel
            Width = 138
            Caption = 'Шаг 2 - Выбор периода'
          end
          inherited Label4: TLabel
            Width = 244
            Caption = 'Остатки какого периода вы хотите рассчитать?'
          end
          inherited lblDesc1: TLabel
            Left = 608
            Enabled = True
            Visible = True
          end
          inherited lblDesc2: TLabel
            Left = 608
          end
        end
      end
      object btnDefaults: TButton
        Left = 592
        Top = 56
        Width = 75
        Height = 25
        Anchors = [akTop, akRight]
        Caption = 'Дефолты >'
        TabOrder = 1
        OnClick = btnDefaultsClick
      end
    end
    object Tab3: TTabSheet
      Caption = 'Шаг 3'
      ImageIndex = 4
      inline fm21SepDescription3: Tfm21SepDescription
        Width = 672
        Align = alTop
        inherited Bevel1: TBevel
          Width = 672
        end
        inherited Panel1: TPanel
          Width = 672
          inherited Label1: TLabel
            Left = 11
            Width = 359
            Caption = 'После выбора дополнительных параметров нажмите кнопку "Далее".'
          end
        end
        inherited Panel2: TPanel
          Width = 672
          inherited Label3: TLabel
            Width = 350
            Caption = 'Шаг 3 - Просмотр нераспознанных эмиссий по 405 форме'
          end
          inherited Label4: TLabel
            Width = 209
            Caption = 'Просмотрите данные за текущий период'
          end
          inherited lblDesc1: TLabel
            Left = 608
            Enabled = True
            Visible = True
          end
          inherited lblDesc2: TLabel
            Left = 608
            Enabled = True
            Visible = True
          end
        end
      end
    end
    object Tab4: TTabSheet
      Caption = 'Шаг 4'
      ImageIndex = 1
      inline fm21SepDescription4: Tfm21SepDescription
        Width = 672
        Align = alTop
        inherited Bevel1: TBevel
          Width = 672
        end
        inherited Panel1: TPanel
          Width = 672
          inherited Label1: TLabel
            Width = 278
            Caption = 'Для сохранения результата нажмите кнопку "Далее".'
          end
        end
        inherited Panel2: TPanel
          Width = 672
          inherited Label3: TLabel
            Width = 397
            Caption = 'Шаг 4 - Настройка дополнительных параметров расчета остатков'
          end
          inherited Label4: TLabel
            Width = 306
            Caption = 'Данные какой формы использовать для расчета остатков?'
          end
          inherited lblDesc1: TLabel
            Left = 608
            Enabled = True
            Visible = True
          end
          inherited lblDesc2: TLabel
            Left = 608
            Enabled = True
            Visible = True
          end
        end
      end
    end
    object Tab5: TTabSheet
      Caption = 'Шаг 5'
      ImageIndex = 4
      inline fm21SepDescription5: Tfm21SepDescription
        Width = 672
        Align = alTop
        inherited Bevel1: TBevel
          Width = 672
        end
        inherited Panel1: TPanel
          Width = 672
          inherited Label1: TLabel
            Width = 227
            Caption = 'Для продолжения нажмите кнопку "Далее".'
          end
        end
        inherited Panel2: TPanel
          Width = 672
          inherited Label3: TLabel
            Width = 152
            Caption = 'Шаг 5 - Котировки и НКД'
          end
          inherited Label4: TLabel
            Width = 144
            Caption = 'Контроль расчетных данных'
          end
          inherited lblDesc1: TLabel
            Left = 608
            Enabled = True
            Visible = True
          end
          inherited lblDesc2: TLabel
            Left = 608
            Enabled = True
            Visible = True
          end
        end
      end
    end
    object Tab6: TTabSheet
      Caption = 'Шаг 6'
      ImageIndex = 5
      inline fm21SepDescription6: Tfm21SepDescription
        Width = 672
        Align = alTop
        inherited Bevel1: TBevel
          Width = 672
        end
        inherited Panel1: TPanel
          Width = 672
          inherited Label1: TLabel
            Width = 278
            Caption = 'Для сохранения результата нажмите кнопку "Далее".'
          end
        end
        inherited Panel2: TPanel
          Width = 672
          inherited Label3: TLabel
            Width = 146
            Caption = 'Шаг 6 - Расчет остатков'
          end
          inherited Label4: TLabel
            Width = 156
            Caption = 'Рассчитайте портфель данных'
          end
          inherited lblDesc1: TLabel
            Left = 597
            Enabled = True
            Visible = True
          end
          inherited lblDesc2: TLabel
            Left = 597
            Enabled = True
            Visible = True
          end
        end
      end
    end
    object Tab7: TTabSheet
      Caption = 'Шаг 7'
      ImageIndex = 6
      inline fm21SepDescription7: Tfm21SepDescription
        Width = 672
        Align = alTop
        inherited Bevel1: TBevel
          Width = 672
        end
        inherited Panel1: TPanel
          Width = 672
          inherited Label1: TLabel
            Width = 3
            Caption = ' '
          end
        end
        inherited Panel2: TPanel
          Width = 672
          inherited Label3: TLabel
            Width = 146
            Caption = 'Шаг 7 - Расчет остатков'
          end
          inherited Label4: TLabel
            Width = 240
            Caption = 'Расчет остатков за период успешно завершен.'
          end
          inherited lblDesc1: TLabel
            Left = 597
            Enabled = True
            Visible = True
          end
          inherited lblDesc2: TLabel
            Left = 597
            Enabled = True
            Visible = True
          end
        end
      end
    end
    object Tab8: TTabSheet
      Caption = 'Шаг 8'
      ImageIndex = 7
      inline fm21SepDescription8: Tfm21SepDescription
        Width = 672
        Align = alTop
        inherited Bevel1: TBevel
          Width = 672
        end
        inherited Panel1: TPanel
          Width = 672
          inherited Label1: TLabel
            Width = 259
            Caption = 'Пометьте в колонке  "Дефолт" выбранные строки'
          end
        end
        inherited Panel2: TPanel
          Width = 672
          inherited Label3: TLabel
            Width = 165
            Caption = 'Шаг 8 - Данные о дефолтах'
          end
          inherited Label4: TLabel
            Width = 252
            Caption = 'Укажите операции просроченной задолженности'
          end
          inherited lblDesc1: TLabel
            Left = 597
            Enabled = True
            Visible = True
          end
          inherited lblDesc2: TLabel
            Left = 597
            Enabled = True
            Visible = True
          end
        end
      end
    end
    object Tab9: TTabSheet
      Caption = 'Шаг 9'
      ImageIndex = 8
      inline fm21SepDescription9: Tfm21SepDescription
        Width = 680
        Align = alTop
        inherited Bevel1: TBevel
          Width = 680
        end
        inherited Panel1: TPanel
          Width = 680
          inherited Label1: TLabel
            Width = 447
            Caption = 
              'Добавьте дату погашения и/или  выберите в качестве погашения опе' +
              'рации 405 формы'
          end
        end
        inherited Panel2: TPanel
          Width = 680
          inherited Label3: TLabel
            Width = 169
            Caption = 'Шаг 9- Данные о погашении'
          end
          inherited Label4: TLabel
            Width = 310
            Caption = 'Укажите операции погашения просроченной задолженности'
          end
          inherited lblDesc1: TLabel
            Left = 605
            Enabled = True
            Visible = True
          end
          inherited lblDesc2: TLabel
            Left = 605
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
