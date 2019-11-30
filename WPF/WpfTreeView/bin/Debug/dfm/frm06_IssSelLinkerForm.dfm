inherited frm06_IssSelLinker: Tfrm06_IssSelLinker
  Left = 33
  Top = 33
  Width = 704
  Height = 526
  Caption = 'Выбор эмитентов'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Splitter1: TSplitter
    Left = 359
    Top = 27
    Height = 465
  end
  inherited Panel2: TPanel
    Top = 27
    Width = 359
    Height = 465
    inherited paLeft: TPanel
      Width = 336
      Height = 465
      inherited Panel6: TPanel
        Width = 336
        Visible = False
        inherited Label3: TLabel
          Width = 323
          Height = 26
          AutoSize = True
          Caption = 
            'Выберите эмитента. Из левого списка в правый перенесите те, для ' +
            'которых требуется просмотр структуры собственности.'
          Visible = False
        end
      end
    end
    inherited paCenter: TPanel
      Left = 336
      Height = 465
      inherited paButtons: TPanel
        inherited SpeedButton5: TSpeedButton
          Visible = False
        end
        inherited SpeedButton6: TSpeedButton
          Visible = False
        end
      end
    end
  end
  inherited paRight: TPanel
    Left = 360
    Top = 27
    Width = 336
    Height = 465
    inherited Panel1: TPanel
      Width = 336
      Visible = False
      inherited Label1: TLabel
        Enabled = False
        Visible = False
      end
      inherited lcName: TDBLookupComboBox
        Width = 326
        Enabled = False
        Visible = False
      end
    end
  end
  object Panel3: TPanel [3]
    Left = 0
    Top = 0
    Width = 696
    Height = 27
    Align = alTop
    BevelOuter = bvNone
    Caption = 
      'Выберите эмитента. Из левого списка в правый перенесите те, для ' +
      'которых требуется просмотр структуры собственности.'
    TabOrder = 2
  end
  inherited oqToLeft: TOracleQuery
    SQL.Strings = (
      'begin'
      '  PK_NResident.p_iss_sel_delete(:T028_ID);'
      'end;')
    Variables.Data = {
      0300000001000000080000003A543032385F4944040000000000000000000000}
  end
  inherited oqToRight: TOracleQuery
    SQL.Strings = (
      'declare'
      '  v_rec PK_NResident.t_m029_rec;'
      'begin'
      '  v_rec.M028_ID := :T028_ID;'
      '  PK_NResident.p_iss_sel_add(v_rec);'
      'end;'
      '')
    Variables.Data = {
      0300000001000000080000003A543032385F4944040000000000000000000000}
  end
end
