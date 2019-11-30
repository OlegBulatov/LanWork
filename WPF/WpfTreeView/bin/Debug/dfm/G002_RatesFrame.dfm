inherited G002_Rates: TG002_Rates
  Width = 767
  Height = 613
  inherited xxxDBGrid: TxxxDBGrid
    Width = 767
    Height = 588
    AdvSettings.Indexes = <
      item
        FieldName = 'RATE_DATE'
        SortType = stAsc
      end
      item
        FieldName = 'ID_ISIN'
        SortType = stAsc
      end>
    AdvSettings.HeadersLines = <
      item
        Headers = <
          item
            FirstCol = 3
            LastCol = 4
            Caption = 'Котировка'
          end
          item
            FirstCol = 6
            LastCol = 8
            Caption = 'Валюта номинала'
          end>
      end>
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_ISIN'
        PickList.Strings = ()
        Title.Caption = 'ISIN'
        Width = 96
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SEC_REGN'
        PickList.Strings = ()
        Title.Caption = 'Рег. номер'
        Width = 72
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RATE_DATE'
        PickList.Strings = ()
        Title.Caption = 'Дата'
        Width = 63
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RATE_VALUE'
        PickList.Strings = ()
        Title.Caption = 'в вал. ном.'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RATE_VALUE_USD'
        PickList.Strings = ()
        Title.Caption = 'в долл. США'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CURS_USD'
        PickList.Strings = ()
        Title.Caption = 'Курс долл. США'
        Width = 63
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CRNCY'
        PickList.Strings = ()
        Title.Caption = 'Сим. код'
        Width = 55
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ISO_DIG'
        PickList.Strings = ()
        Title.Caption = 'Числ. код'
        Width = 55
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NAME_RUSH'
        PickList.Strings = ()
        Title.Caption = 'Описание'
        Width = 130
        Visible = True
      end>
  end
  inherited paToolButton: TPanel
    Width = 767
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT '
      '  ID_ISIN,'
      'SEC_REGN,'
      '  RATE_DATE,'
      '  RATE_VALUE,'
      '  RATE_VALUE_USD,'
      '  CURS_USD,'
      '  CRNCY,'
      '  ISO_DIG,'
      '  NAME_RUSH'
      'FROM V_404_BL_RATE'
      'WHERE ID_ISIN = :ID_ISIN')
    Variables.Data = {
      0300000001000000080000003A49445F4953494E050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      04000000090000000700000049445F4953494E01000000000009000000524154
      455F444154450100000000000A000000524154455F56414C5545010000000000
      0E000000524154455F56414C55455F5553440100000000000800000043555253
      5F5553440100000000000500000043524E43590100000000000700000049534F
      5F444947010000000000090000004E414D455F52555348010000000000080000
      005345435F5245474E010000000000}
    object odsListID_ISIN: TStringField
      FieldName = 'ID_ISIN'
      Size = 255
    end
    object odsListRATE_DATE: TDateTimeField
      FieldName = 'RATE_DATE'
    end
    object odsListRATE_VALUE: TFloatField
      FieldName = 'RATE_VALUE'
      DisplayFormat = '### ### ### ##0.00000000'
    end
    object odsListRATE_VALUE_USD: TFloatField
      FieldName = 'RATE_VALUE_USD'
      DisplayFormat = '### ### ### ##0.00000000'
    end
    object odsListCURS_USD: TFloatField
      FieldName = 'CURS_USD'
      DisplayFormat = '### ### ### ##0.0000'
    end
    object odsListCRNCY: TStringField
      FieldName = 'CRNCY'
      Size = 255
    end
    object odsListISO_DIG: TStringField
      FieldName = 'ISO_DIG'
      Size = 3
    end
    object odsListNAME_RUSH: TStringField
      FieldName = 'NAME_RUSH'
      Size = 100
    end
    object odsListSEC_REGN: TStringField
      FieldName = 'SEC_REGN'
      Size = 255
    end
  end
end
