inherited frm43_Settings: Tfrm43_Settings
  Left = 234
  Top = 86
  Width = 772
  Height = 669
  Caption = 'frm43_Settings'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 764
    Height = 618
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    TabPosition = tpBottom
    object TabSheet1: TTabSheet
      Caption = 'Кредитные организации'
      object Label1: TLabel
        Left = 42
        Top = 8
        Width = 248
        Height = 13
        Caption = 'Оценочные балы кредитных организаций'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 56
        Top = 27
        Width = 353
        Height = 13
        Caption = '1. Устойчивое отрицательное сальдо по переводу денежных средств'
      end
      object Label4: TLabel
        Left = 56
        Top = 49
        Width = 338
        Height = 13
        Caption = '2. Специализация банка на покупке ценных бумаг у нерезидентов'
      end
      object Label5: TLabel
        Left = 56
        Top = 71
        Width = 168
        Height = 13
        Caption = '3. Малое число клиентов у банка'
      end
      object Label24: TLabel
        Left = 565
        Top = 28
        Width = 38
        Height = 13
        Caption = '(баллы)'
      end
      object Label25: TLabel
        Left = 565
        Top = 50
        Width = 38
        Height = 13
        Caption = '(баллы)'
      end
      object Label26: TLabel
        Left = 565
        Top = 71
        Width = 38
        Height = 13
        Caption = '(баллы)'
      end
      object Label2: TLabel
        Left = 42
        Top = 145
        Width = 399
        Height = 13
        Caption = 'Пороговые значения показателей оценки кредитных организаций'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 56
        Top = 164
        Width = 374
        Height = 13
        Caption = 'Пороговое значение для платежей в Россию по операциям формы №405'
      end
      object Label7: TLabel
        Left = 56
        Top = 186
        Width = 383
        Height = 13
        Caption = 
          'Пороговое значение для платежей в пользу нерезидентов по форме №' +
          '405'
      end
      object Label8: TLabel
        Left = 56
        Top = 208
        Width = 339
        Height = 26
        Caption = 
          'Пороговое значение для числа клиентов, проводящих фиктивные опер' +
          'ации'
        WordWrap = True
      end
      object Label23: TLabel
        Left = 506
        Top = 215
        Width = 23
        Height = 13
        Caption = '(в %)'
      end
      object Label22: TLabel
        Left = 506
        Top = 186
        Width = 23
        Height = 13
        Caption = '(в %)'
      end
      object Label21: TLabel
        Left = 506
        Top = 166
        Width = 23
        Height = 13
        Caption = '(в %)'
      end
      object Label36: TLabel
        Left = 56
        Top = 93
        Width = 332
        Height = 13
        Caption = '4. "Плохая" репутация банка по операциям с ценными бумагами'
      end
      object Label37: TLabel
        Left = 565
        Top = 94
        Width = 38
        Height = 13
        Caption = '(баллы)'
      end
      object Label38: TLabel
        Left = 56
        Top = 115
        Width = 341
        Height = 13
        Caption = '5. "Плохая" репутация банка по операциям с товарами и услугами'
      end
      object Label39: TLabel
        Left = 565
        Top = 115
        Width = 38
        Height = 13
        Caption = '(баллы)'
      end
      object ed01: TDBEdit
        Left = 442
        Top = 25
        Width = 60
        Height = 21
        Hint = 'Количество баллов в случае выполнения критерия'
        DataField = 'T065_KO_BALL_01_Y'
        DataSource = dsParams
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
      end
      object ed02: TDBEdit
        Left = 503
        Top = 25
        Width = 60
        Height = 21
        Hint = 'Количество баллов в случае не выполнения критерия'
        DataField = 'T065_KO_BALL_01_N'
        DataSource = dsParams
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
      end
      object ed03: TDBEdit
        Left = 442
        Top = 47
        Width = 60
        Height = 21
        Hint = 'Количество баллов в случае выполнения критерия'
        DataField = 'T065_KO_BALL_02_Y'
        DataSource = dsParams
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
      end
      object ed04: TDBEdit
        Left = 503
        Top = 47
        Width = 60
        Height = 21
        Hint = 'Количество баллов в случае не выполнения критерия'
        DataField = 'T065_KO_BALL_02_N'
        DataSource = dsParams
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
      end
      object ed05: TDBEdit
        Left = 442
        Top = 69
        Width = 60
        Height = 21
        Hint = 'Количество баллов в случае выполнения критерия'
        DataField = 'T065_KO_BALL_03_Y'
        DataSource = dsParams
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
      end
      object ed06: TDBEdit
        Left = 503
        Top = 69
        Width = 60
        Height = 21
        Hint = 'Количество баллов в случае не выполнения критерия'
        DataField = 'T065_KO_BALL_03_N'
        DataSource = dsParams
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
      end
      object ed11: TDBEdit
        Left = 442
        Top = 162
        Width = 60
        Height = 21
        Hint = 'млн. долл.'
        DataField = 'T065_KO_LIMIT_01'
        DataSource = dsParams
        ParentShowHint = False
        ShowHint = True
        TabOrder = 10
      end
      object ed12: TDBEdit
        Left = 442
        Top = 184
        Width = 60
        Height = 21
        Hint = 'в %'
        DataField = 'T065_KO_LIMIT_02'
        DataSource = dsParams
        ParentShowHint = False
        ShowHint = True
        TabOrder = 11
      end
      object ed13: TDBEdit
        Left = 442
        Top = 211
        Width = 60
        Height = 21
        Hint = 'в %'
        DataField = 'T065_KO_LIMIT_03'
        DataSource = dsParams
        ParentShowHint = False
        ShowHint = True
        TabOrder = 12
      end
      object ed07: TDBEdit
        Left = 442
        Top = 91
        Width = 60
        Height = 21
        Hint = 'Количество баллов в случае выполнения критерия'
        DataField = 'T065_KO_BALL_04_Y'
        DataSource = dsParams
        ParentShowHint = False
        ShowHint = True
        TabOrder = 6
      end
      object ed08: TDBEdit
        Left = 503
        Top = 91
        Width = 60
        Height = 21
        Hint = 'Количество баллов в случае не выполнения критерия'
        DataField = 'T065_KO_BALL_04_N'
        DataSource = dsParams
        ParentShowHint = False
        ShowHint = True
        TabOrder = 7
      end
      object ed09: TDBEdit
        Left = 442
        Top = 113
        Width = 60
        Height = 21
        Hint = 'Количество баллов в случае выполнения критерия'
        DataField = 'T065_KO_BALL_05_Y'
        DataSource = dsParams
        ParentShowHint = False
        ShowHint = True
        TabOrder = 8
      end
      object ed10: TDBEdit
        Left = 503
        Top = 113
        Width = 60
        Height = 21
        Hint = 'Количество баллов в случае не выполнения критерия'
        DataField = 'T065_KO_BALL_05_N'
        DataSource = dsParams
        ParentShowHint = False
        ShowHint = True
        TabOrder = 9
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Резиденты'
      ImageIndex = 1
      object Label40: TLabel
        Left = 42
        Top = 8
        Width = 174
        Height = 13
        Caption = 'Оценочные балы резидентов'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label41: TLabel
        Left = 56
        Top = 27
        Width = 324
        Height = 13
        Caption = '1. Организационно-правовой формой резидента является ООО'
      end
      object Label42: TLabel
        Left = 56
        Top = 49
        Width = 302
        Height = 13
        Caption = '2. Уставный капитал резидента составляет 10 тыс. рублей'
      end
      object Label43: TLabel
        Left = 56
        Top = 71
        Width = 225
        Height = 13
        Caption = '3. Учредитель резидента - физические лица'
      end
      object Label44: TLabel
        Left = 56
        Top = 93
        Width = 352
        Height = 13
        Caption = '4. Основной вид деятельности не соответствует характеру операций'
      end
      object Label45: TLabel
        Left = 56
        Top = 115
        Width = 330
        Height = 13
        Caption = '5. Недостаточность ресурсов для проведения крупных операций'
      end
      object Label46: TLabel
        Left = 565
        Top = 28
        Width = 38
        Height = 13
        Caption = '(баллы)'
      end
      object Label47: TLabel
        Left = 565
        Top = 50
        Width = 38
        Height = 13
        Caption = '(баллы)'
      end
      object Label48: TLabel
        Left = 565
        Top = 71
        Width = 38
        Height = 13
        Caption = '(баллы)'
      end
      object Label49: TLabel
        Left = 565
        Top = 94
        Width = 38
        Height = 13
        Caption = '(баллы)'
      end
      object Label50: TLabel
        Left = 565
        Top = 115
        Width = 38
        Height = 13
        Caption = '(баллы)'
      end
      object Label51: TLabel
        Left = 56
        Top = 137
        Width = 206
        Height = 13
        Caption = '6. Информация о резиденте отсутствует'
      end
      object Label52: TLabel
        Left = 565
        Top = 138
        Width = 38
        Height = 13
        Caption = '(баллы)'
      end
      object Label53: TLabel
        Left = 56
        Top = 159
        Width = 170
        Height = 13
        Caption = '7. "Плохая" репутация резидента'
      end
      object Label54: TLabel
        Left = 565
        Top = 160
        Width = 38
        Height = 13
        Caption = '(баллы)'
      end
      object Label55: TLabel
        Left = 56
        Top = 181
        Width = 366
        Height = 13
        Caption = '8. "Связанные стороны" с резидентом проводили фиктивные операции'
      end
      object Label56: TLabel
        Left = 565
        Top = 181
        Width = 38
        Height = 13
        Caption = '(баллы)'
      end
      object Label59: TLabel
        Left = 56
        Top = 202
        Width = 351
        Height = 26
        Caption = 
          '10. Совпадение рег. данных с другими резидентами, проводившими '#13 +
          #10'фиктивные операции'
      end
      object Label60: TLabel
        Left = 565
        Top = 209
        Width = 38
        Height = 13
        Caption = '(баллы)'
      end
      object Label61: TLabel
        Left = 56
        Top = 233
        Width = 366
        Height = 26
        Caption = 
          '11. Резидент заменяет компанию, переставшую проводить фиктивные ' +
          #13#10'операции'
      end
      object Label62: TLabel
        Left = 565
        Top = 240
        Width = 38
        Height = 13
        Caption = '(баллы)'
      end
      object Label63: TLabel
        Left = 56
        Top = 264
        Width = 359
        Height = 26
        Caption = 
          '12. Контрагентами- нерезидентами по сделкам выступают резиденты'#13 +
          #10'стран с негативной репутацией'
      end
      object Label64: TLabel
        Left = 56
        Top = 297
        Width = 254
        Height = 13
        Caption = '13. "Плохая" репутация контрагента-нерезидента'
      end
      object Label65: TLabel
        Left = 565
        Top = 271
        Width = 38
        Height = 13
        Caption = '(баллы)'
      end
      object Label66: TLabel
        Left = 565
        Top = 297
        Width = 38
        Height = 13
        Caption = '(баллы)'
      end
      object ed14: TDBEdit
        Left = 442
        Top = 25
        Width = 60
        Height = 21
        Hint = 'Количество баллов в случае выполнения критерия'
        DataField = 'T065_REZ_BALL_01_Y'
        DataSource = dsParams
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
      end
      object ed15: TDBEdit
        Left = 503
        Top = 25
        Width = 60
        Height = 21
        Hint = 'Количество баллов в случае не выполнения критерия'
        DataField = 'T065_REZ_BALL_01_N'
        DataSource = dsParams
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
      end
      object ed16: TDBEdit
        Left = 442
        Top = 47
        Width = 60
        Height = 21
        Hint = 'Количество баллов в случае выполнения критерия'
        DataField = 'T065_REZ_BALL_02_Y'
        DataSource = dsParams
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
      end
      object ed17: TDBEdit
        Left = 503
        Top = 47
        Width = 60
        Height = 21
        Hint = 'Количество баллов в случае не выполнения критерия'
        DataField = 'T065_REZ_BALL_02_N'
        DataSource = dsParams
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
      end
      object ed18: TDBEdit
        Left = 442
        Top = 69
        Width = 60
        Height = 21
        Hint = 'Количество баллов в случае выполнения критерия'
        DataField = 'T065_REZ_BALL_03_Y'
        DataSource = dsParams
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
      end
      object ed19: TDBEdit
        Left = 503
        Top = 69
        Width = 60
        Height = 21
        Hint = 'Количество баллов в случае не выполнения критерия'
        DataField = 'T065_REZ_BALL_03_N'
        DataSource = dsParams
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
      end
      object ed20: TDBEdit
        Left = 442
        Top = 91
        Width = 60
        Height = 21
        Hint = 'Количество баллов в случае выполнения критерия'
        DataField = 'T065_REZ_BALL_04_Y'
        DataSource = dsParams
        ParentShowHint = False
        ShowHint = True
        TabOrder = 6
      end
      object ed21: TDBEdit
        Left = 503
        Top = 91
        Width = 60
        Height = 21
        Hint = 'Количество баллов в случае не выполнения критерия'
        DataField = 'T065_REZ_BALL_04_N'
        DataSource = dsParams
        ParentShowHint = False
        ShowHint = True
        TabOrder = 7
      end
      object ed22: TDBEdit
        Left = 442
        Top = 113
        Width = 60
        Height = 21
        Hint = 'Количество баллов в случае выполнения критерия'
        DataField = 'T065_REZ_BALL_05_Y'
        DataSource = dsParams
        ParentShowHint = False
        ShowHint = True
        TabOrder = 8
      end
      object ed23: TDBEdit
        Left = 503
        Top = 113
        Width = 60
        Height = 21
        Hint = 'Количество баллов в случае не выполнения критерия'
        DataField = 'T065_REZ_BALL_05_N'
        DataSource = dsParams
        ParentShowHint = False
        ShowHint = True
        TabOrder = 9
      end
      object ed24: TDBEdit
        Left = 442
        Top = 135
        Width = 60
        Height = 21
        Hint = 'Количество баллов в случае выполнения критерия'
        DataField = 'T065_REZ_BALL_06_Y'
        DataSource = dsParams
        ParentShowHint = False
        ShowHint = True
        TabOrder = 10
      end
      object ed25: TDBEdit
        Left = 503
        Top = 135
        Width = 60
        Height = 21
        Hint = 'Количество баллов в случае не выполнения критерия'
        DataField = 'T065_REZ_BALL_06_N'
        DataSource = dsParams
        ParentShowHint = False
        ShowHint = True
        TabOrder = 11
      end
      object ed26: TDBEdit
        Left = 442
        Top = 157
        Width = 60
        Height = 21
        Hint = 'Количество баллов в случае выполнения критерия'
        DataField = 'T065_REZ_BALL_07_Y'
        DataSource = dsParams
        ParentShowHint = False
        ShowHint = True
        TabOrder = 12
      end
      object ed27: TDBEdit
        Left = 503
        Top = 157
        Width = 60
        Height = 21
        Hint = 'Количество баллов в случае не выполнения критерия'
        DataField = 'T065_REZ_BALL_07_N'
        DataSource = dsParams
        ParentShowHint = False
        ShowHint = True
        TabOrder = 13
      end
      object ed28: TDBEdit
        Left = 442
        Top = 179
        Width = 60
        Height = 21
        Hint = 'Количество баллов в случае выполнения критерия'
        DataField = 'T065_REZ_BALL_08_Y'
        DataSource = dsParams
        ParentShowHint = False
        ShowHint = True
        TabOrder = 14
      end
      object ed29: TDBEdit
        Left = 503
        Top = 179
        Width = 60
        Height = 21
        Hint = 'Количество баллов в случае не выполнения критерия'
        DataField = 'T065_REZ_BALL_08_N'
        DataSource = dsParams
        ParentShowHint = False
        ShowHint = True
        TabOrder = 15
      end
      object ed32: TDBEdit
        Left = 442
        Top = 205
        Width = 60
        Height = 21
        Hint = 'Количество баллов в случае выполнения критерия'
        DataField = 'T065_REZ_BALL_10_Y'
        DataSource = dsParams
        ParentShowHint = False
        ShowHint = True
        TabOrder = 16
      end
      object ed33: TDBEdit
        Left = 503
        Top = 205
        Width = 60
        Height = 21
        Hint = 'Количество баллов в случае не выполнения критерия'
        DataField = 'T065_REZ_BALL_10_N'
        DataSource = dsParams
        ParentShowHint = False
        ShowHint = True
        TabOrder = 17
      end
      object ed34: TDBEdit
        Left = 442
        Top = 236
        Width = 60
        Height = 21
        Hint = 'Количество баллов в случае выполнения критерия'
        DataField = 'T065_REZ_BALL_11_Y'
        DataSource = dsParams
        ParentShowHint = False
        ShowHint = True
        TabOrder = 18
      end
      object ed35: TDBEdit
        Left = 503
        Top = 236
        Width = 60
        Height = 21
        Hint = 'Количество баллов в случае не выполнения критерия'
        DataField = 'T065_REZ_BALL_11_N'
        DataSource = dsParams
        ParentShowHint = False
        ShowHint = True
        TabOrder = 19
      end
      object ed36: TDBEdit
        Left = 442
        Top = 267
        Width = 60
        Height = 21
        Hint = 'Количество баллов в случае выполнения критерия'
        DataField = 'T065_REZ_BALL_12_Y'
        DataSource = dsParams
        ParentShowHint = False
        ShowHint = True
        TabOrder = 20
      end
      object ed37: TDBEdit
        Left = 503
        Top = 267
        Width = 60
        Height = 21
        Hint = 'Количество баллов в случае не выполнения критерия'
        DataField = 'T065_REZ_BALL_12_N'
        DataSource = dsParams
        ParentShowHint = False
        ShowHint = True
        TabOrder = 21
      end
      object ed39: TDBEdit
        Left = 503
        Top = 295
        Width = 60
        Height = 21
        Hint = 'Количество баллов в случае не выполнения критерия'
        DataField = 'T065_REZ_BALL_13_N'
        DataSource = dsParams
        ParentShowHint = False
        ShowHint = True
        TabOrder = 23
      end
      object ed38: TDBEdit
        Left = 442
        Top = 295
        Width = 60
        Height = 21
        Hint = 'Количество баллов в случае выполнения критерия'
        DataField = 'T065_REZ_BALL_13_Y'
        DataSource = dsParams
        ParentShowHint = False
        ShowHint = True
        TabOrder = 22
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Группы операций'
      ImageIndex = 2
      object Label9: TLabel
        Left = 42
        Top = 473
        Width = 349
        Height = 13
        Caption = 'Пороговые значения показателей оценки групп операций'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label10: TLabel
        Left = 56
        Top = 494
        Width = 293
        Height = 26
        Caption = 
          'Пороговое значение для кол-ва дней отчетного периода, '#13#10'когда пр' +
          'оводятся операции'
      end
      object Label11: TLabel
        Left = 42
        Top = 8
        Width = 350
        Height = 13
        Caption = 'Оценочные балы групп операций - все типы ценных бумаг'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label12: TLabel
        Left = 56
        Top = 27
        Width = 223
        Height = 13
        Caption = '1. Операции носят односторонний характер'
      end
      object Label13: TLabel
        Left = 56
        Top = 49
        Width = 189
        Height = 13
        Caption = '2. Операции совершаются регулярно'
      end
      object Label14: TLabel
        Left = 56
        Top = 71
        Width = 275
        Height = 13
        Caption = '3. Операции совершаются более чем через один банк'
      end
      object Label15: TLabel
        Left = 56
        Top = 93
        Width = 256
        Height = 13
        Caption = '4. Операции совершаются в "замкнутой" системе'
      end
      object Label16: TLabel
        Left = 56
        Top = 137
        Width = 242
        Height = 13
        Caption = '6. Операции совершаются в российских рублях'
      end
      object Label17: TLabel
        Left = 56
        Top = 159
        Width = 375
        Height = 26
        Caption = 
          '7. Инструмент многократно продается и покупается в сделках с одн' +
          'ой и '#13#10'той же стороной, причем цена продажи меньше цены покупки'
      end
      object Label18: TLabel
        Left = 56
        Top = 189
        Width = 364
        Height = 26
        Caption = 
          '8. Операции совершаются с целью, отличной от покупки ценных бума' +
          'г '#13#10'или долей'
      end
      object Label19: TLabel
        Left = 56
        Top = 249
        Width = 331
        Height = 13
        Caption = '9. Цены акций, учавствующих в сделке, отличаются от рыночных'
      end
      object Label20: TLabel
        Left = 56
        Top = 271
        Width = 379
        Height = 13
        Caption = 
          '10. Цена акции не соответствует показателям эмитента с учетом гу' +
          'двила'
      end
      object Label27: TLabel
        Left = 56
        Top = 293
        Width = 381
        Height = 26
        Caption = 
          '11. Цена покупки доли в уставном капитале не соответсвует показа' +
          'телям'#13#10'эмитента'
      end
      object Label28: TLabel
        Left = 56
        Top = 325
        Width = 270
        Height = 13
        Caption = '12. В сделках задействованы крупные пакеты акций'
      end
      object Label29: TLabel
        Left = 56
        Top = 380
        Width = 280
        Height = 13
        Caption = '13. Эмитент - резидент стран с негативной репутацией'
      end
      object Label30: TLabel
        Left = 56
        Top = 402
        Width = 206
        Height = 13
        Caption = '14. Эмитент - ООО или некрупные банки'
      end
      object Label31: TLabel
        Left = 565
        Top = 28
        Width = 38
        Height = 13
        Caption = '(баллы)'
      end
      object Label32: TLabel
        Left = 565
        Top = 50
        Width = 38
        Height = 13
        Caption = '(баллы)'
      end
      object Label33: TLabel
        Left = 565
        Top = 71
        Width = 38
        Height = 13
        Caption = '(баллы)'
      end
      object Label34: TLabel
        Left = 565
        Top = 94
        Width = 38
        Height = 13
        Caption = '(баллы)'
      end
      object Label35: TLabel
        Left = 565
        Top = 137
        Width = 38
        Height = 13
        Caption = '(баллы)'
      end
      object Label67: TLabel
        Left = 565
        Top = 166
        Width = 38
        Height = 13
        Caption = '(баллы)'
      end
      object Label68: TLabel
        Left = 565
        Top = 196
        Width = 38
        Height = 13
        Caption = '(баллы)'
      end
      object Label69: TLabel
        Left = 565
        Top = 249
        Width = 38
        Height = 13
        Caption = '(баллы)'
      end
      object Label70: TLabel
        Left = 565
        Top = 272
        Width = 38
        Height = 13
        Caption = '(баллы)'
      end
      object Label71: TLabel
        Left = 565
        Top = 300
        Width = 38
        Height = 13
        Caption = '(баллы)'
      end
      object Label72: TLabel
        Left = 565
        Top = 325
        Width = 38
        Height = 13
        Caption = '(баллы)'
      end
      object Label73: TLabel
        Left = 565
        Top = 381
        Width = 38
        Height = 13
        Caption = '(баллы)'
      end
      object Label74: TLabel
        Left = 565
        Top = 402
        Width = 38
        Height = 13
        Caption = '(баллы)'
      end
      object Label75: TLabel
        Left = 56
        Top = 424
        Width = 180
        Height = 13
        Caption = '15. "Непопулярность" инструмента'
      end
      object Label76: TLabel
        Left = 565
        Top = 424
        Width = 38
        Height = 13
        Caption = '(баллы)'
      end
      object Label77: TLabel
        Left = 56
        Top = 523
        Width = 345
        Height = 26
        Caption = 
          'Пороговое значение для сумм платежей проводимых в российских'#13#10'ру' +
          'блях'
      end
      object Label78: TLabel
        Left = 506
        Top = 501
        Width = 23
        Height = 13
        Caption = '(в %)'
      end
      object Label79: TLabel
        Left = 506
        Top = 530
        Width = 23
        Height = 13
        Caption = '(в %)'
      end
      object Label80: TLabel
        Left = 42
        Top = 229
        Width = 251
        Height = 13
        Caption = 'Акции и доли резидентов и нерезидентов'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label81: TLabel
        Left = 42
        Top = 359
        Width = 299
        Height = 13
        Caption = 'Векселя и облигации резидентов и нерезидентов'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label82: TLabel
        Left = 56
        Top = 115
        Width = 360
        Height = 13
        Caption = 
          '5. Платежи осуществляются на счета нерезидентов в третьих страна' +
          'х'
      end
      object Label83: TLabel
        Left = 565
        Top = 116
        Width = 38
        Height = 13
        Caption = '(баллы)'
      end
      object Label84: TLabel
        Left = 56
        Top = 552
        Width = 357
        Height = 26
        Caption = 
          'Пороговое значение для отличия цены акций, участвующих в сделке,' +
          ' '#13#10'от рыночных'
      end
      object Label85: TLabel
        Left = 506
        Top = 559
        Width = 23
        Height = 13
        Caption = '(в %)'
      end
      object Label86: TLabel
        Left = 56
        Top = 446
        Width = 375
        Height = 13
        Caption = 
          '16. Резидент работает по схеме, признанной фиктивной в других сл' +
          'учаях'
      end
      object Label87: TLabel
        Left = 565
        Top = 447
        Width = 38
        Height = 13
        Caption = '(баллы)'
      end
      object ed70: TDBEdit
        Left = 442
        Top = 497
        Width = 60
        Height = 21
        Hint = 'млн. долл.'
        DataField = 'T065_SECTYPE_LIMIT_01'
        DataSource = dsParams
        ParentShowHint = False
        ShowHint = True
        TabOrder = 30
      end
      object ed40: TDBEdit
        Left = 442
        Top = 25
        Width = 60
        Height = 21
        Hint = 'Количество баллов в случае выполнения критерия'
        DataField = 'T065_SECTYPE_BALL_01_Y'
        DataSource = dsParams
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
      end
      object ed41: TDBEdit
        Left = 503
        Top = 25
        Width = 60
        Height = 21
        Hint = 'Количество баллов в случае не выполнения критерия'
        DataField = 'T065_SECTYPE_BALL_01_N'
        DataSource = dsParams
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
      end
      object ed43: TDBEdit
        Left = 503
        Top = 47
        Width = 60
        Height = 21
        Hint = 'Количество баллов в случае не выполнения критерия'
        DataField = 'T065_SECTYPE_BALL_02_N'
        DataSource = dsParams
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
      end
      object ed42: TDBEdit
        Left = 442
        Top = 47
        Width = 60
        Height = 21
        Hint = 'Количество баллов в случае выполнения критерия'
        DataField = 'T065_SECTYPE_BALL_02_Y'
        DataSource = dsParams
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
      end
      object ed44: TDBEdit
        Left = 442
        Top = 69
        Width = 60
        Height = 21
        Hint = 'Количество баллов в случае выполнения критерия'
        DataField = 'T065_SECTYPE_BALL_03_Y'
        DataSource = dsParams
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
      end
      object ed45: TDBEdit
        Left = 503
        Top = 69
        Width = 60
        Height = 21
        Hint = 'Количество баллов в случае не выполнения критерия'
        DataField = 'T065_SECTYPE_BALL_03_N'
        DataSource = dsParams
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
      end
      object ed47: TDBEdit
        Left = 503
        Top = 91
        Width = 60
        Height = 21
        Hint = 'Количество баллов в случае не выполнения критерия'
        DataField = 'T065_SECTYPE_BALL_04_N'
        DataSource = dsParams
        ParentShowHint = False
        ShowHint = True
        TabOrder = 7
      end
      object ed46: TDBEdit
        Left = 442
        Top = 91
        Width = 60
        Height = 21
        Hint = 'Количество баллов в случае выполнения критерия'
        DataField = 'T065_SECTYPE_BALL_04_Y'
        DataSource = dsParams
        ParentShowHint = False
        ShowHint = True
        TabOrder = 6
      end
      object ed50: TDBEdit
        Left = 442
        Top = 135
        Width = 60
        Height = 21
        Cursor = 7
        Hint = 'Количество баллов в случае выполнения критерия'
        DataField = 'T065_SECTYPE_BALL_06_Y'
        DataSource = dsParams
        ParentShowHint = False
        ShowHint = True
        TabOrder = 10
      end
      object ed51: TDBEdit
        Left = 503
        Top = 135
        Width = 60
        Height = 21
        Hint = 'Количество баллов в случае не выполнения критерия'
        DataField = 'T065_SECTYPE_BALL_06_N'
        DataSource = dsParams
        ParentShowHint = False
        ShowHint = True
        TabOrder = 11
      end
      object ed52: TDBEdit
        Left = 442
        Top = 162
        Width = 60
        Height = 21
        Hint = 'Количество баллов в случае выполнения критерия'
        DataField = 'T065_SECTYPE_BALL_07_Y'
        DataSource = dsParams
        ParentShowHint = False
        ShowHint = True
        TabOrder = 12
      end
      object ed53: TDBEdit
        Left = 503
        Top = 162
        Width = 60
        Height = 21
        Hint = 'Количество баллов в случае не выполнения критерия'
        DataField = 'T065_SECTYPE_BALL_07_N'
        DataSource = dsParams
        ParentShowHint = False
        ShowHint = True
        TabOrder = 13
      end
      object ed54: TDBEdit
        Left = 442
        Top = 192
        Width = 60
        Height = 21
        Hint = 'Количество баллов в случае выполнения критерия'
        DataField = 'T065_SECTYPE_BALL_08_Y'
        DataSource = dsParams
        ParentShowHint = False
        ShowHint = True
        TabOrder = 14
      end
      object ed55: TDBEdit
        Left = 503
        Top = 192
        Width = 60
        Height = 21
        Hint = 'Количество баллов в случае не выполнения критерия'
        DataField = 'T065_SECTYPE_BALL_08_N'
        DataSource = dsParams
        ParentShowHint = False
        ShowHint = True
        TabOrder = 15
      end
      object ed56: TDBEdit
        Left = 442
        Top = 247
        Width = 60
        Height = 21
        Hint = 'Количество баллов в случае выполнения критерия'
        DataField = 'T065_SECTYPE_BALL_09_Y'
        DataSource = dsParams
        ParentShowHint = False
        ShowHint = True
        TabOrder = 16
      end
      object ed57: TDBEdit
        Left = 503
        Top = 247
        Width = 60
        Height = 21
        Hint = 'Количество баллов в случае не выполнения критерия'
        DataField = 'T065_SECTYPE_BALL_09_N'
        DataSource = dsParams
        ParentShowHint = False
        ShowHint = True
        TabOrder = 17
      end
      object ed58: TDBEdit
        Left = 442
        Top = 269
        Width = 60
        Height = 21
        Hint = 'Количество баллов в случае выполнения критерия'
        DataField = 'T065_SECTYPE_BALL_10_Y'
        DataSource = dsParams
        ParentShowHint = False
        ShowHint = True
        TabOrder = 18
      end
      object ed59: TDBEdit
        Left = 503
        Top = 269
        Width = 60
        Height = 21
        Hint = 'Количество баллов в случае не выполнения критерия'
        DataField = 'T065_SECTYPE_BALL_10_N'
        DataSource = dsParams
        ParentShowHint = False
        ShowHint = True
        TabOrder = 19
      end
      object ed60: TDBEdit
        Left = 442
        Top = 296
        Width = 60
        Height = 21
        Hint = 'Количество баллов в случае выполнения критерия'
        DataField = 'T065_SECTYPE_BALL_11_Y'
        DataSource = dsParams
        ParentShowHint = False
        ShowHint = True
        TabOrder = 20
      end
      object ed61: TDBEdit
        Left = 503
        Top = 296
        Width = 60
        Height = 21
        Hint = 'Количество баллов в случае не выполнения критерия'
        DataField = 'T065_SECTYPE_BALL_11_N'
        DataSource = dsParams
        ParentShowHint = False
        ShowHint = True
        TabOrder = 21
      end
      object ed62: TDBEdit
        Left = 442
        Top = 323
        Width = 60
        Height = 21
        Hint = 'Количество баллов в случае выполнения критерия'
        DataField = 'T065_SECTYPE_BALL_12_Y'
        DataSource = dsParams
        ParentShowHint = False
        ShowHint = True
        TabOrder = 22
      end
      object ed63: TDBEdit
        Left = 503
        Top = 323
        Width = 60
        Height = 21
        Hint = 'Количество баллов в случае не выполнения критерия'
        DataField = 'T065_SECTYPE_BALL_12_N'
        DataSource = dsParams
        ParentShowHint = False
        ShowHint = True
        TabOrder = 23
      end
      object ed64: TDBEdit
        Left = 442
        Top = 378
        Width = 60
        Height = 21
        Hint = 'Количество баллов в случае выполнения критерия'
        DataField = 'T065_SECTYPE_BALL_13_Y'
        DataSource = dsParams
        ParentShowHint = False
        ShowHint = True
        TabOrder = 24
      end
      object ed65: TDBEdit
        Left = 503
        Top = 378
        Width = 60
        Height = 21
        Hint = 'Количество баллов в случае не выполнения критерия'
        DataField = 'T065_SECTYPE_BALL_13_N'
        DataSource = dsParams
        ParentShowHint = False
        ShowHint = True
        TabOrder = 25
      end
      object ed66: TDBEdit
        Left = 442
        Top = 400
        Width = 60
        Height = 21
        Hint = 'Количество баллов в случае выполнения критерия'
        DataField = 'T065_SECTYPE_BALL_14_Y'
        DataSource = dsParams
        ParentShowHint = False
        ShowHint = True
        TabOrder = 26
      end
      object ed67: TDBEdit
        Left = 503
        Top = 400
        Width = 60
        Height = 21
        Hint = 'Количество баллов в случае не выполнения критерия'
        DataField = 'T065_SECTYPE_BALL_14_N'
        DataSource = dsParams
        ParentShowHint = False
        ShowHint = True
        TabOrder = 27
      end
      object ed68: TDBEdit
        Left = 442
        Top = 422
        Width = 60
        Height = 21
        Hint = 'Количество баллов в случае выполнения критерия'
        DataField = 'T065_SECTYPE_BALL_15_Y'
        DataSource = dsParams
        ParentShowHint = False
        ShowHint = True
        TabOrder = 28
      end
      object ed69: TDBEdit
        Left = 503
        Top = 422
        Width = 60
        Height = 21
        Hint = 'Количество баллов в случае не выполнения критерия'
        DataField = 'T065_SECTYPE_BALL_15_N'
        DataSource = dsParams
        ParentShowHint = False
        ShowHint = True
        TabOrder = 29
      end
      object ed71: TDBEdit
        Left = 442
        Top = 526
        Width = 60
        Height = 21
        Hint = 'млн. долл.'
        DataField = 'T065_SECTYPE_LIMIT_02'
        DataSource = dsParams
        ParentShowHint = False
        ShowHint = True
        TabOrder = 31
      end
      object ed48: TDBEdit
        Left = 442
        Top = 113
        Width = 60
        Height = 21
        Hint = 'Количество баллов в случае выполнения критерия'
        DataField = 'T065_SECTYPE_BALL_05_Y'
        DataSource = dsParams
        ParentShowHint = False
        ShowHint = True
        TabOrder = 8
      end
      object ed49: TDBEdit
        Left = 503
        Top = 113
        Width = 60
        Height = 21
        Hint = 'Количество баллов в случае не выполнения критерия'
        DataField = 'T065_SECTYPE_BALL_05_N'
        DataSource = dsParams
        ParentShowHint = False
        ShowHint = True
        TabOrder = 9
      end
      object ed72: TDBEdit
        Left = 442
        Top = 555
        Width = 60
        Height = 21
        Hint = 'млн. долл.'
        DataField = 'T065_SECTYPE_LIMIT_03'
        DataSource = dsParams
        ParentShowHint = False
        ShowHint = True
        TabOrder = 32
      end
      object ed74: TDBEdit
        Left = 442
        Top = 444
        Width = 60
        Height = 21
        Hint = 'Количество баллов в случае выполнения критерия'
        DataField = 'T065_SECTYPE_BALL_16_Y'
        DataSource = dsParams
        ParentShowHint = False
        ShowHint = True
        TabOrder = 33
      end
      object ed75: TDBEdit
        Left = 503
        Top = 444
        Width = 60
        Height = 21
        Hint = 'Количество баллов в случае не выполнения критерия'
        DataField = 'T065_SECTYPE_BALL_16_N'
        DataSource = dsParams
        ParentShowHint = False
        ShowHint = True
        TabOrder = 34
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 618
    Width = 764
    Height = 17
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
  end
  object odsParams: TOracleDataSet
    SQL.Strings = (
      'SELECT *'
      'FROM ('
      'SELECT  T065_ID,'
      '        T055_ID,'
      '        T065_KO_LIMIT_01,'
      '        T065_KO_LIMIT_02,'
      '        T065_KO_LIMIT_03,'
      '        T065_KO_BALL_01_Y,'
      '        T065_KO_BALL_01_N,'
      '        T065_KO_BALL_02_Y,'
      '        T065_KO_BALL_02_N,'
      '        T065_KO_BALL_03_Y,'
      '        T065_KO_BALL_03_N,'
      '        T065_KO_BALL_04_Y,'
      '        T065_KO_BALL_04_N,'
      '        T065_KO_BALL_05_Y,'
      '        T065_KO_BALL_05_N,'
      '        T065_REZ_BALL_01_Y,'
      '        T065_REZ_BALL_01_N,'
      '        T065_REZ_BALL_02_Y,'
      '        T065_REZ_BALL_02_N,'
      '        T065_REZ_BALL_03_Y,'
      '        T065_REZ_BALL_03_N,'
      '        T065_REZ_BALL_04_Y,'
      '        T065_REZ_BALL_04_N,'
      '        T065_REZ_BALL_05_Y,'
      '        T065_REZ_BALL_05_N,'
      '        T065_REZ_BALL_06_Y,'
      '        T065_REZ_BALL_06_N,'
      '        T065_REZ_BALL_07_Y,'
      '        T065_REZ_BALL_07_N,'
      '        T065_REZ_BALL_08_Y,'
      '        T065_REZ_BALL_08_N,'
      '        T065_REZ_BALL_10_Y,'
      '        T065_REZ_BALL_10_N,'
      '        T065_REZ_BALL_11_Y,'
      '        T065_REZ_BALL_11_N,'
      '        T065_REZ_BALL_12_Y,'
      '        T065_REZ_BALL_12_N,'
      '        T065_REZ_BALL_13_Y,'
      '        T065_REZ_BALL_13_N,'
      '        T065_SECTYPE_LIMIT_01,'
      '        T065_SECTYPE_LIMIT_02,'
      '        T065_SECTYPE_LIMIT_03,'
      '        T065_SECTYPE_BALL_01_Y,'
      '        T065_SECTYPE_BALL_01_N,'
      '        T065_SECTYPE_BALL_02_Y,'
      '        T065_SECTYPE_BALL_02_N,'
      '        T065_SECTYPE_BALL_03_Y,'
      '        T065_SECTYPE_BALL_03_N,'
      '        T065_SECTYPE_BALL_04_Y,'
      '        T065_SECTYPE_BALL_04_N,'
      '        T065_SECTYPE_BALL_05_Y,'
      '        T065_SECTYPE_BALL_05_N,'
      '        T065_SECTYPE_BALL_06_Y,'
      '        T065_SECTYPE_BALL_06_N,'
      '        T065_SECTYPE_BALL_07_Y,'
      '        T065_SECTYPE_BALL_07_N,'
      '        T065_SECTYPE_BALL_08_Y,'
      '        T065_SECTYPE_BALL_08_N,'
      '        T065_SECTYPE_BALL_09_Y,'
      '        T065_SECTYPE_BALL_09_N,'
      '        T065_SECTYPE_BALL_10_Y,'
      '        T065_SECTYPE_BALL_10_N,'
      '        T065_SECTYPE_BALL_11_Y,'
      '        T065_SECTYPE_BALL_11_N,'
      '        T065_SECTYPE_BALL_12_Y,'
      '        T065_SECTYPE_BALL_12_N,'
      '        T065_SECTYPE_BALL_13_Y,'
      '        T065_SECTYPE_BALL_13_N,'
      '        T065_SECTYPE_BALL_14_Y,'
      '        T065_SECTYPE_BALL_14_N,'
      '        T065_SECTYPE_BALL_15_Y,'
      '        T065_SECTYPE_BALL_15_N,'
      '        T065_SECTYPE_BALL_16_Y,'
      '        T065_SECTYPE_BALL_16_N'
      'FROM    V_405_CLASSIFICATION_PARAMS'
      'WHERE   T055_ID <= :T055_ID'
      'ORDER BY T055_ID DESC'
      ')'
      'WHERE ROWNUM = 1'
      ''
      ''
      ''
      ''
      ' '
      ' ')
    Variables.Data = {
      0300000001000000080000003A543035355F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000004A00000007000000543036355F494401000000000007000000543035
      355F494401000000000010000000543036355F4B4F5F4C494D49545F30310100
      0000000010000000543036355F4B4F5F4C494D49545F30320100000000001000
      0000543036355F4B4F5F4C494D49545F30330100000000001100000054303635
      5F4B4F5F42414C4C5F30315F5901000000000011000000543036355F4B4F5F42
      414C4C5F30315F4E01000000000011000000543036355F4B4F5F42414C4C5F30
      325F5901000000000011000000543036355F4B4F5F42414C4C5F30325F4E0100
      0000000011000000543036355F4B4F5F42414C4C5F30335F5901000000000011
      000000543036355F4B4F5F42414C4C5F30335F4E010000000000110000005430
      36355F4B4F5F42414C4C5F30345F5901000000000011000000543036355F4B4F
      5F42414C4C5F30345F4E01000000000011000000543036355F4B4F5F42414C4C
      5F30355F5901000000000011000000543036355F4B4F5F42414C4C5F30355F4E
      01000000000012000000543036355F52455A5F42414C4C5F30315F5901000000
      000012000000543036355F52455A5F42414C4C5F30315F4E0100000000001200
      0000543036355F52455A5F42414C4C5F30325F59010000000000120000005430
      36355F52455A5F42414C4C5F30325F4E01000000000012000000543036355F52
      455A5F42414C4C5F30335F5901000000000012000000543036355F52455A5F42
      414C4C5F30335F4E01000000000012000000543036355F52455A5F42414C4C5F
      30345F5901000000000012000000543036355F52455A5F42414C4C5F30345F4E
      01000000000012000000543036355F52455A5F42414C4C5F30355F5901000000
      000012000000543036355F52455A5F42414C4C5F30355F4E0100000000001200
      0000543036355F52455A5F42414C4C5F30365F59010000000000120000005430
      36355F52455A5F42414C4C5F30365F4E01000000000012000000543036355F52
      455A5F42414C4C5F30375F5901000000000012000000543036355F52455A5F42
      414C4C5F30375F4E01000000000012000000543036355F52455A5F42414C4C5F
      30385F5901000000000012000000543036355F52455A5F42414C4C5F30385F4E
      01000000000012000000543036355F52455A5F42414C4C5F31305F5901000000
      000012000000543036355F52455A5F42414C4C5F31305F4E0100000000001200
      0000543036355F52455A5F42414C4C5F31315F59010000000000120000005430
      36355F52455A5F42414C4C5F31315F4E01000000000012000000543036355F52
      455A5F42414C4C5F31325F5901000000000012000000543036355F52455A5F42
      414C4C5F31325F4E01000000000012000000543036355F52455A5F42414C4C5F
      31335F5901000000000012000000543036355F52455A5F42414C4C5F31335F4E
      01000000000015000000543036355F534543545950455F4C494D49545F303101
      000000000015000000543036355F534543545950455F4C494D49545F30320100
      0000000016000000543036355F534543545950455F42414C4C5F30315F590100
      0000000016000000543036355F534543545950455F42414C4C5F30315F4E0100
      0000000016000000543036355F534543545950455F42414C4C5F30325F590100
      0000000016000000543036355F534543545950455F42414C4C5F30325F4E0100
      0000000016000000543036355F534543545950455F42414C4C5F30335F590100
      0000000016000000543036355F534543545950455F42414C4C5F30335F4E0100
      0000000016000000543036355F534543545950455F42414C4C5F30345F590100
      0000000016000000543036355F534543545950455F42414C4C5F30345F4E0100
      0000000016000000543036355F534543545950455F42414C4C5F30355F590100
      0000000016000000543036355F534543545950455F42414C4C5F30355F4E0100
      0000000016000000543036355F534543545950455F42414C4C5F30365F590100
      0000000016000000543036355F534543545950455F42414C4C5F30365F4E0100
      0000000016000000543036355F534543545950455F42414C4C5F30375F590100
      0000000016000000543036355F534543545950455F42414C4C5F30375F4E0100
      0000000016000000543036355F534543545950455F42414C4C5F30385F590100
      0000000016000000543036355F534543545950455F42414C4C5F30385F4E0100
      0000000016000000543036355F534543545950455F42414C4C5F30395F590100
      0000000016000000543036355F534543545950455F42414C4C5F30395F4E0100
      0000000016000000543036355F534543545950455F42414C4C5F31305F590100
      0000000016000000543036355F534543545950455F42414C4C5F31305F4E0100
      0000000016000000543036355F534543545950455F42414C4C5F31315F590100
      0000000016000000543036355F534543545950455F42414C4C5F31315F4E0100
      0000000016000000543036355F534543545950455F42414C4C5F31325F590100
      0000000016000000543036355F534543545950455F42414C4C5F31325F4E0100
      0000000016000000543036355F534543545950455F42414C4C5F31335F590100
      0000000016000000543036355F534543545950455F42414C4C5F31335F4E0100
      0000000016000000543036355F534543545950455F42414C4C5F31345F590100
      0000000016000000543036355F534543545950455F42414C4C5F31345F4E0100
      0000000015000000543036355F534543545950455F4C494D49545F3033010000
      00000016000000543036355F534543545950455F42414C4C5F31355F59010000
      00000016000000543036355F534543545950455F42414C4C5F31355F4E010000
      00000016000000543036355F534543545950455F42414C4C5F31365F59010000
      00000016000000543036355F534543545950455F42414C4C5F31365F4E010000
      000000}
    OnApplyRecord = odsParamsApplyRecord
    Session = dmMain.OracleSession
    Left = 664
    Top = 416
    object odsParamsT065_ID: TFloatField
      FieldName = 'T065_ID'
      Required = True
    end
    object odsParamsT055_ID: TFloatField
      FieldName = 'T055_ID'
      Required = True
    end
    object odsParamsT065_KO_LIMIT_01: TFloatField
      FieldName = 'T065_KO_LIMIT_01'
      Required = True
    end
    object odsParamsT065_KO_LIMIT_02: TFloatField
      FieldName = 'T065_KO_LIMIT_02'
      Required = True
    end
    object odsParamsT065_KO_LIMIT_03: TFloatField
      FieldName = 'T065_KO_LIMIT_03'
      Required = True
    end
    object odsParamsT065_KO_BALL_01_Y: TFloatField
      FieldName = 'T065_KO_BALL_01_Y'
      Required = True
    end
    object odsParamsT065_KO_BALL_01_N: TFloatField
      FieldName = 'T065_KO_BALL_01_N'
      Required = True
    end
    object odsParamsT065_KO_BALL_02_Y: TFloatField
      FieldName = 'T065_KO_BALL_02_Y'
      Required = True
    end
    object odsParamsT065_KO_BALL_02_N: TFloatField
      FieldName = 'T065_KO_BALL_02_N'
      Required = True
    end
    object odsParamsT065_KO_BALL_03_Y: TFloatField
      FieldName = 'T065_KO_BALL_03_Y'
      Required = True
    end
    object odsParamsT065_KO_BALL_03_N: TFloatField
      FieldName = 'T065_KO_BALL_03_N'
      Required = True
    end
    object odsParamsT065_KO_BALL_04_Y: TFloatField
      FieldName = 'T065_KO_BALL_04_Y'
      Required = True
    end
    object odsParamsT065_KO_BALL_04_N: TFloatField
      FieldName = 'T065_KO_BALL_04_N'
      Required = True
    end
    object odsParamsT065_KO_BALL_05_Y: TFloatField
      FieldName = 'T065_KO_BALL_05_Y'
      Required = True
    end
    object odsParamsT065_KO_BALL_05_N: TFloatField
      FieldName = 'T065_KO_BALL_05_N'
      Required = True
    end
    object odsParamsT065_REZ_BALL_01_Y: TFloatField
      FieldName = 'T065_REZ_BALL_01_Y'
      Required = True
    end
    object odsParamsT065_REZ_BALL_01_N: TFloatField
      FieldName = 'T065_REZ_BALL_01_N'
      Required = True
    end
    object odsParamsT065_REZ_BALL_02_Y: TFloatField
      FieldName = 'T065_REZ_BALL_02_Y'
      Required = True
    end
    object odsParamsT065_REZ_BALL_02_N: TFloatField
      FieldName = 'T065_REZ_BALL_02_N'
      Required = True
    end
    object odsParamsT065_REZ_BALL_03_Y: TFloatField
      FieldName = 'T065_REZ_BALL_03_Y'
      Required = True
    end
    object odsParamsT065_REZ_BALL_03_N: TFloatField
      FieldName = 'T065_REZ_BALL_03_N'
      Required = True
    end
    object odsParamsT065_REZ_BALL_04_Y: TFloatField
      FieldName = 'T065_REZ_BALL_04_Y'
      Required = True
    end
    object odsParamsT065_REZ_BALL_04_N: TFloatField
      FieldName = 'T065_REZ_BALL_04_N'
      Required = True
    end
    object odsParamsT065_REZ_BALL_05_Y: TFloatField
      FieldName = 'T065_REZ_BALL_05_Y'
      Required = True
    end
    object odsParamsT065_REZ_BALL_05_N: TFloatField
      FieldName = 'T065_REZ_BALL_05_N'
      Required = True
    end
    object odsParamsT065_REZ_BALL_06_Y: TFloatField
      FieldName = 'T065_REZ_BALL_06_Y'
      Required = True
    end
    object odsParamsT065_REZ_BALL_06_N: TFloatField
      FieldName = 'T065_REZ_BALL_06_N'
      Required = True
    end
    object odsParamsT065_REZ_BALL_07_Y: TFloatField
      FieldName = 'T065_REZ_BALL_07_Y'
      Required = True
    end
    object odsParamsT065_REZ_BALL_07_N: TFloatField
      FieldName = 'T065_REZ_BALL_07_N'
      Required = True
    end
    object odsParamsT065_REZ_BALL_08_Y: TFloatField
      FieldName = 'T065_REZ_BALL_08_Y'
      Required = True
    end
    object odsParamsT065_REZ_BALL_08_N: TFloatField
      FieldName = 'T065_REZ_BALL_08_N'
      Required = True
    end
    object odsParamsT065_REZ_BALL_10_Y: TFloatField
      FieldName = 'T065_REZ_BALL_10_Y'
      Required = True
    end
    object odsParamsT065_REZ_BALL_10_N: TFloatField
      FieldName = 'T065_REZ_BALL_10_N'
      Required = True
    end
    object odsParamsT065_REZ_BALL_11_Y: TFloatField
      FieldName = 'T065_REZ_BALL_11_Y'
      Required = True
    end
    object odsParamsT065_REZ_BALL_11_N: TFloatField
      FieldName = 'T065_REZ_BALL_11_N'
      Required = True
    end
    object odsParamsT065_REZ_BALL_12_Y: TFloatField
      FieldName = 'T065_REZ_BALL_12_Y'
      Required = True
    end
    object odsParamsT065_REZ_BALL_12_N: TFloatField
      FieldName = 'T065_REZ_BALL_12_N'
      Required = True
    end
    object odsParamsT065_REZ_BALL_13_Y: TFloatField
      FieldName = 'T065_REZ_BALL_13_Y'
      Required = True
    end
    object odsParamsT065_REZ_BALL_13_N: TFloatField
      FieldName = 'T065_REZ_BALL_13_N'
      Required = True
    end
    object odsParamsT065_SECTYPE_LIMIT_01: TFloatField
      FieldName = 'T065_SECTYPE_LIMIT_01'
      Required = True
    end
    object odsParamsT065_SECTYPE_LIMIT_02: TFloatField
      FieldName = 'T065_SECTYPE_LIMIT_02'
      Required = True
    end
    object odsParamsT065_SECTYPE_BALL_01_Y: TFloatField
      FieldName = 'T065_SECTYPE_BALL_01_Y'
      Required = True
    end
    object odsParamsT065_SECTYPE_BALL_01_N: TFloatField
      FieldName = 'T065_SECTYPE_BALL_01_N'
      Required = True
    end
    object odsParamsT065_SECTYPE_BALL_02_Y: TFloatField
      FieldName = 'T065_SECTYPE_BALL_02_Y'
      Required = True
    end
    object odsParamsT065_SECTYPE_BALL_02_N: TFloatField
      FieldName = 'T065_SECTYPE_BALL_02_N'
      Required = True
    end
    object odsParamsT065_SECTYPE_BALL_03_Y: TFloatField
      FieldName = 'T065_SECTYPE_BALL_03_Y'
      Required = True
    end
    object odsParamsT065_SECTYPE_BALL_03_N: TFloatField
      FieldName = 'T065_SECTYPE_BALL_03_N'
      Required = True
    end
    object odsParamsT065_SECTYPE_BALL_04_Y: TFloatField
      FieldName = 'T065_SECTYPE_BALL_04_Y'
      Required = True
    end
    object odsParamsT065_SECTYPE_BALL_04_N: TFloatField
      FieldName = 'T065_SECTYPE_BALL_04_N'
      Required = True
    end
    object odsParamsT065_SECTYPE_BALL_05_Y: TFloatField
      FieldName = 'T065_SECTYPE_BALL_05_Y'
      Required = True
    end
    object odsParamsT065_SECTYPE_BALL_05_N: TFloatField
      FieldName = 'T065_SECTYPE_BALL_05_N'
      Required = True
    end
    object odsParamsT065_SECTYPE_BALL_06_Y: TFloatField
      FieldName = 'T065_SECTYPE_BALL_06_Y'
      Required = True
    end
    object odsParamsT065_SECTYPE_BALL_06_N: TFloatField
      FieldName = 'T065_SECTYPE_BALL_06_N'
      Required = True
    end
    object odsParamsT065_SECTYPE_BALL_07_Y: TFloatField
      FieldName = 'T065_SECTYPE_BALL_07_Y'
      Required = True
    end
    object odsParamsT065_SECTYPE_BALL_07_N: TFloatField
      FieldName = 'T065_SECTYPE_BALL_07_N'
      Required = True
    end
    object odsParamsT065_SECTYPE_BALL_08_Y: TFloatField
      FieldName = 'T065_SECTYPE_BALL_08_Y'
      Required = True
    end
    object odsParamsT065_SECTYPE_BALL_08_N: TFloatField
      FieldName = 'T065_SECTYPE_BALL_08_N'
      Required = True
    end
    object odsParamsT065_SECTYPE_BALL_09_Y: TFloatField
      FieldName = 'T065_SECTYPE_BALL_09_Y'
      Required = True
    end
    object odsParamsT065_SECTYPE_BALL_09_N: TFloatField
      FieldName = 'T065_SECTYPE_BALL_09_N'
      Required = True
    end
    object odsParamsT065_SECTYPE_BALL_10_Y: TFloatField
      FieldName = 'T065_SECTYPE_BALL_10_Y'
      Required = True
    end
    object odsParamsT065_SECTYPE_BALL_10_N: TFloatField
      FieldName = 'T065_SECTYPE_BALL_10_N'
      Required = True
    end
    object odsParamsT065_SECTYPE_BALL_11_Y: TFloatField
      FieldName = 'T065_SECTYPE_BALL_11_Y'
      Required = True
    end
    object odsParamsT065_SECTYPE_BALL_11_N: TFloatField
      FieldName = 'T065_SECTYPE_BALL_11_N'
      Required = True
    end
    object odsParamsT065_SECTYPE_BALL_12_Y: TFloatField
      FieldName = 'T065_SECTYPE_BALL_12_Y'
      Required = True
    end
    object odsParamsT065_SECTYPE_BALL_12_N: TFloatField
      FieldName = 'T065_SECTYPE_BALL_12_N'
      Required = True
    end
    object odsParamsT065_SECTYPE_BALL_13_Y: TFloatField
      FieldName = 'T065_SECTYPE_BALL_13_Y'
      Required = True
    end
    object odsParamsT065_SECTYPE_BALL_13_N: TFloatField
      FieldName = 'T065_SECTYPE_BALL_13_N'
      Required = True
    end
    object odsParamsT065_SECTYPE_BALL_14_Y: TFloatField
      FieldName = 'T065_SECTYPE_BALL_14_Y'
      Required = True
    end
    object odsParamsT065_SECTYPE_BALL_14_N: TFloatField
      FieldName = 'T065_SECTYPE_BALL_14_N'
      Required = True
    end
    object odsParamsT065_SECTYPE_LIMIT_03: TFloatField
      FieldName = 'T065_SECTYPE_LIMIT_03'
      Required = True
    end
    object odsParamsT065_SECTYPE_BALL_15_Y: TFloatField
      FieldName = 'T065_SECTYPE_BALL_15_Y'
      Required = True
    end
    object odsParamsT065_SECTYPE_BALL_15_N: TFloatField
      FieldName = 'T065_SECTYPE_BALL_15_N'
      Required = True
    end
    object odsParamsT065_SECTYPE_BALL_16_Y: TFloatField
      FieldName = 'T065_SECTYPE_BALL_16_Y'
    end
    object odsParamsT065_SECTYPE_BALL_16_N: TFloatField
      FieldName = 'T065_SECTYPE_BALL_16_N'
    end
  end
  object dsParams: TDataSource
    DataSet = odsParams
    Left = 720
    Top = 416
  end
  object oqUpdate: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_rec PK_405_CLASSIFICATION.t_T065_rec;'
      'BEGIN'
      '  v_rec.T055_ID := :T055_ID;'
      '  v_rec.T065_KO_LIMIT_01 := :T065_KO_LIMIT_01;'
      '  v_rec.T065_KO_LIMIT_02 := :T065_KO_LIMIT_02;'
      '  v_rec.T065_KO_LIMIT_03 := :T065_KO_LIMIT_03;'
      '  v_rec.T065_KO_BALL_01_Y := :T065_KO_BALL_01_Y;'
      '  v_rec.T065_KO_BALL_01_N := :T065_KO_BALL_01_N;'
      '  v_rec.T065_KO_BALL_02_Y := :T065_KO_BALL_02_Y;'
      '  v_rec.T065_KO_BALL_02_N := :T065_KO_BALL_02_N;'
      '  v_rec.T065_KO_BALL_03_Y := :T065_KO_BALL_03_Y;'
      '  v_rec.T065_KO_BALL_03_N := :T065_KO_BALL_03_N;'
      '  v_rec.T065_KO_BALL_04_Y := :T065_KO_BALL_04_Y;'
      '  v_rec.T065_KO_BALL_04_N := :T065_KO_BALL_04_N;'
      '  v_rec.T065_KO_BALL_05_Y := :T065_KO_BALL_05_Y;'
      '  v_rec.T065_KO_BALL_05_N := :T065_KO_BALL_05_N;'
      '  v_rec.T065_REZ_BALL_01_Y := :T065_REZ_BALL_01_Y;'
      '  v_rec.T065_REZ_BALL_01_N := :T065_REZ_BALL_01_N;'
      '  v_rec.T065_REZ_BALL_02_Y := :T065_REZ_BALL_02_Y;'
      '  v_rec.T065_REZ_BALL_02_N := :T065_REZ_BALL_02_N;'
      '  v_rec.T065_REZ_BALL_03_Y := :T065_REZ_BALL_03_Y;'
      '  v_rec.T065_REZ_BALL_03_N := :T065_REZ_BALL_03_N;'
      '  v_rec.T065_REZ_BALL_04_Y := :T065_REZ_BALL_04_Y;'
      '  v_rec.T065_REZ_BALL_04_N := :T065_REZ_BALL_04_N;'
      '  v_rec.T065_REZ_BALL_05_Y := :T065_REZ_BALL_05_Y;'
      '  v_rec.T065_REZ_BALL_05_N := :T065_REZ_BALL_05_N;'
      '  v_rec.T065_REZ_BALL_06_Y := :T065_REZ_BALL_06_Y;'
      '  v_rec.T065_REZ_BALL_06_N := :T065_REZ_BALL_06_N;'
      '  v_rec.T065_REZ_BALL_07_Y := :T065_REZ_BALL_07_Y;'
      '  v_rec.T065_REZ_BALL_07_N := :T065_REZ_BALL_07_N;'
      '  v_rec.T065_REZ_BALL_08_Y := :T065_REZ_BALL_08_Y;'
      '  v_rec.T065_REZ_BALL_08_N := :T065_REZ_BALL_08_N;'
      '  v_rec.T065_REZ_BALL_10_Y := :T065_REZ_BALL_10_Y;'
      '  v_rec.T065_REZ_BALL_10_N := :T065_REZ_BALL_10_N;'
      '  v_rec.T065_REZ_BALL_11_Y := :T065_REZ_BALL_11_Y;'
      '  v_rec.T065_REZ_BALL_11_N := :T065_REZ_BALL_11_N;'
      '  v_rec.T065_REZ_BALL_12_Y := :T065_REZ_BALL_12_Y;'
      '  v_rec.T065_REZ_BALL_12_N := :T065_REZ_BALL_12_N;'
      '  v_rec.T065_REZ_BALL_13_Y := :T065_REZ_BALL_13_Y;'
      '  v_rec.T065_REZ_BALL_13_N := :T065_REZ_BALL_13_N;'
      '  v_rec.T065_SECTYPE_LIMIT_01 := :T065_SECTYPE_LIMIT_01;'
      '  v_rec.T065_SECTYPE_LIMIT_02 := :T065_SECTYPE_LIMIT_02;'
      '  v_rec.T065_SECTYPE_LIMIT_03 := :T065_SECTYPE_LIMIT_03;'
      '  v_rec.T065_SECTYPE_BALL_01_Y := :T065_SECTYPE_BALL_01_Y;'
      '  v_rec.T065_SECTYPE_BALL_01_N := :T065_SECTYPE_BALL_01_N;'
      '  v_rec.T065_SECTYPE_BALL_02_Y := :T065_SECTYPE_BALL_02_Y;'
      '  v_rec.T065_SECTYPE_BALL_02_N := :T065_SECTYPE_BALL_02_N;'
      '  v_rec.T065_SECTYPE_BALL_03_Y := :T065_SECTYPE_BALL_03_Y;'
      '  v_rec.T065_SECTYPE_BALL_03_N := :T065_SECTYPE_BALL_03_N;'
      '  v_rec.T065_SECTYPE_BALL_04_Y := :T065_SECTYPE_BALL_04_Y;'
      '  v_rec.T065_SECTYPE_BALL_04_N := :T065_SECTYPE_BALL_04_N;'
      '  v_rec.T065_SECTYPE_BALL_05_Y := :T065_SECTYPE_BALL_05_Y;'
      '  v_rec.T065_SECTYPE_BALL_05_N := :T065_SECTYPE_BALL_05_N;'
      '  v_rec.T065_SECTYPE_BALL_06_Y := :T065_SECTYPE_BALL_06_Y;'
      '  v_rec.T065_SECTYPE_BALL_06_N := :T065_SECTYPE_BALL_06_N;'
      '  v_rec.T065_SECTYPE_BALL_07_Y := :T065_SECTYPE_BALL_07_Y;'
      '  v_rec.T065_SECTYPE_BALL_07_N := :T065_SECTYPE_BALL_07_N;'
      '  v_rec.T065_SECTYPE_BALL_08_Y := :T065_SECTYPE_BALL_08_Y;'
      '  v_rec.T065_SECTYPE_BALL_08_N := :T065_SECTYPE_BALL_08_N;'
      '  v_rec.T065_SECTYPE_BALL_09_Y := :T065_SECTYPE_BALL_09_Y;'
      '  v_rec.T065_SECTYPE_BALL_09_N := :T065_SECTYPE_BALL_09_N;'
      '  v_rec.T065_SECTYPE_BALL_10_Y := :T065_SECTYPE_BALL_10_Y;'
      '  v_rec.T065_SECTYPE_BALL_10_N := :T065_SECTYPE_BALL_10_N;'
      '  v_rec.T065_SECTYPE_BALL_11_Y := :T065_SECTYPE_BALL_11_Y;'
      '  v_rec.T065_SECTYPE_BALL_11_N := :T065_SECTYPE_BALL_11_N;'
      '  v_rec.T065_SECTYPE_BALL_12_Y := :T065_SECTYPE_BALL_12_Y;'
      '  v_rec.T065_SECTYPE_BALL_12_N := :T065_SECTYPE_BALL_12_N;'
      '  v_rec.T065_SECTYPE_BALL_13_Y := :T065_SECTYPE_BALL_13_Y;'
      '  v_rec.T065_SECTYPE_BALL_13_N := :T065_SECTYPE_BALL_13_N;'
      '  v_rec.T065_SECTYPE_BALL_14_Y := :T065_SECTYPE_BALL_14_Y;'
      '  v_rec.T065_SECTYPE_BALL_14_N := :T065_SECTYPE_BALL_14_N;'
      '  v_rec.T065_SECTYPE_BALL_15_Y := :T065_SECTYPE_BALL_15_Y;'
      '  v_rec.T065_SECTYPE_BALL_15_N := :T065_SECTYPE_BALL_15_N;'
      '  v_rec.T065_SECTYPE_BALL_16_Y := :T065_SECTYPE_BALL_16_Y;'
      '  v_rec.T065_SECTYPE_BALL_16_N := :T065_SECTYPE_BALL_16_N;'
      ''
      '  PK_405_CLASSIFICATION.p_class_params_update(v_rec);'
      ''
      '  :T065_ID := v_rec.T065_ID;'
      'END;'
      '')
    Session = dmMain.OracleSession
    Variables.Data = {
      030000004A000000080000003A543035355F4944040000000000000000000000
      110000003A543036355F4B4F5F4C494D49545F30310400000000000000000000
      00110000003A543036355F4B4F5F4C494D49545F303204000000000000000000
      0000110000003A543036355F4B4F5F4C494D49545F3033040000000000000000
      000000120000003A543036355F4B4F5F42414C4C5F30315F5904000000000000
      0000000000120000003A543036355F4B4F5F42414C4C5F30315F4E0400000000
      00000000000000120000003A543036355F4B4F5F42414C4C5F30325F59040000
      000000000000000000120000003A543036355F4B4F5F42414C4C5F30325F4E04
      0000000000000000000000120000003A543036355F4B4F5F42414C4C5F30335F
      59040000000000000000000000120000003A543036355F4B4F5F42414C4C5F30
      335F4E040000000000000000000000120000003A543036355F4B4F5F42414C4C
      5F30345F59040000000000000000000000120000003A543036355F4B4F5F4241
      4C4C5F30345F4E040000000000000000000000120000003A543036355F4B4F5F
      42414C4C5F30355F59040000000000000000000000120000003A543036355F4B
      4F5F42414C4C5F30355F4E040000000000000000000000130000003A54303635
      5F52455A5F42414C4C5F30315F59040000000000000000000000130000003A54
      3036355F52455A5F42414C4C5F30315F4E040000000000000000000000130000
      003A543036355F52455A5F42414C4C5F30325F59040000000000000000000000
      130000003A543036355F52455A5F42414C4C5F30325F4E040000000000000000
      000000130000003A543036355F52455A5F42414C4C5F30335F59040000000000
      000000000000130000003A543036355F52455A5F42414C4C5F30335F4E040000
      000000000000000000130000003A543036355F52455A5F42414C4C5F30345F59
      040000000000000000000000130000003A543036355F52455A5F42414C4C5F30
      345F4E040000000000000000000000130000003A543036355F52455A5F42414C
      4C5F30355F59040000000000000000000000130000003A543036355F52455A5F
      42414C4C5F30355F4E040000000000000000000000130000003A543036355F52
      455A5F42414C4C5F30365F59040000000000000000000000130000003A543036
      355F52455A5F42414C4C5F30365F4E040000000000000000000000130000003A
      543036355F52455A5F42414C4C5F30375F590400000000000000000000001300
      00003A543036355F52455A5F42414C4C5F30375F4E0400000000000000000000
      00130000003A543036355F52455A5F42414C4C5F30385F590400000000000000
      00000000130000003A543036355F52455A5F42414C4C5F30385F4E0400000000
      00000000000000130000003A543036355F52455A5F42414C4C5F31305F590400
      00000000000000000000130000003A543036355F52455A5F42414C4C5F31305F
      4E040000000000000000000000130000003A543036355F52455A5F42414C4C5F
      31315F59040000000000000000000000130000003A543036355F52455A5F4241
      4C4C5F31315F4E040000000000000000000000130000003A543036355F52455A
      5F42414C4C5F31325F59040000000000000000000000130000003A543036355F
      52455A5F42414C4C5F31325F4E040000000000000000000000130000003A5430
      36355F52455A5F42414C4C5F31335F5904000000000000000000000013000000
      3A543036355F52455A5F42414C4C5F31335F4E04000000000000000000000016
      0000003A543036355F534543545950455F4C494D49545F303104000000000000
      0000000000160000003A543036355F534543545950455F4C494D49545F303204
      0000000000000000000000170000003A543036355F534543545950455F42414C
      4C5F30315F59040000000000000000000000170000003A543036355F53454354
      5950455F42414C4C5F30315F4E040000000000000000000000170000003A5430
      36355F534543545950455F42414C4C5F30325F59040000000000000000000000
      170000003A543036355F534543545950455F42414C4C5F30325F4E0400000000
      00000000000000170000003A543036355F534543545950455F42414C4C5F3033
      5F59040000000000000000000000170000003A543036355F534543545950455F
      42414C4C5F30335F4E040000000000000000000000170000003A543036355F53
      4543545950455F42414C4C5F30345F5904000000000000000000000017000000
      3A543036355F534543545950455F42414C4C5F30345F4E040000000000000000
      000000170000003A543036355F534543545950455F42414C4C5F30355F590400
      00000000000000000000170000003A543036355F534543545950455F42414C4C
      5F30355F4E040000000000000000000000170000003A543036355F5345435459
      50455F42414C4C5F30365F59040000000000000000000000170000003A543036
      355F534543545950455F42414C4C5F30365F4E04000000000000000000000017
      0000003A543036355F534543545950455F42414C4C5F30375F59040000000000
      000000000000170000003A543036355F534543545950455F42414C4C5F30375F
      4E040000000000000000000000170000003A543036355F534543545950455F42
      414C4C5F30385F59040000000000000000000000170000003A543036355F5345
      43545950455F42414C4C5F30385F4E040000000000000000000000170000003A
      543036355F534543545950455F42414C4C5F30395F5904000000000000000000
      0000170000003A543036355F534543545950455F42414C4C5F30395F4E040000
      000000000000000000170000003A543036355F534543545950455F42414C4C5F
      31305F59040000000000000000000000170000003A543036355F534543545950
      455F42414C4C5F31305F4E040000000000000000000000170000003A54303635
      5F534543545950455F42414C4C5F31315F590400000000000000000000001700
      00003A543036355F534543545950455F42414C4C5F31315F4E04000000000000
      0000000000170000003A543036355F534543545950455F42414C4C5F31325F59
      040000000000000000000000170000003A543036355F534543545950455F4241
      4C4C5F31325F4E040000000000000000000000170000003A543036355F534543
      545950455F42414C4C5F31335F59040000000000000000000000170000003A54
      3036355F534543545950455F42414C4C5F31335F4E0400000000000000000000
      00170000003A543036355F534543545950455F42414C4C5F31345F5904000000
      0000000000000000170000003A543036355F534543545950455F42414C4C5F31
      345F4E040000000000000000000000080000003A543036355F49440400000000
      00000000000000160000003A543036355F534543545950455F4C494D49545F30
      33040000000000000000000000170000003A543036355F534543545950455F42
      414C4C5F31365F59040000000000000000000000170000003A543036355F5345
      43545950455F42414C4C5F31365F4E040000000000000000000000170000003A
      543036355F534543545950455F42414C4C5F31355F5904000000000000000000
      0000170000003A543036355F534543545950455F42414C4C5F31355F4E050000
      000000000000000000}
    Left = 720
    Top = 464
  end
end
