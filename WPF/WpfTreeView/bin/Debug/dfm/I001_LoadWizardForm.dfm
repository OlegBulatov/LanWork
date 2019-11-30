inherited I001_LoadWizard: TI001_LoadWizard
  Caption = 'I001_LoadWizard'
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl1: TPageControl
    inherited Tab1: TTabSheet
      inherited fm21SepDescription1: Tfm21SepDescription
        inherited Panel2: TPanel
          inherited lblDesc1: TLabel
            Left = 605
          end
          inherited lblDesc2: TLabel
            Left = 605
          end
        end
      end
    end
    inherited Tab3: TTabSheet
      inherited fm21SepDescription3: Tfm21SepDescription
        inherited Panel1: TPanel
          inherited Label1: TLabel
            Width = 286
            Caption = 'Для записи данных в БД нажмите кнопку "Выполнить".'
          end
        end
        inherited Panel2: TPanel
          inherited lblDesc1: TLabel
            Left = 624
          end
          inherited lblDesc2: TLabel
            Left = 624
            Visible = False
          end
        end
      end
    end
  end
  inherited oqApplyChanges: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '--  PK_405_CALC_REMAINS.p_apply_state (:I_T055_ID);'
      '--  COMMIT;'
      'END; ')
    Variables.Data = {0300000000000000}
  end
end
