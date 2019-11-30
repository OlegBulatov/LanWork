inherited frm99_EmissSizeList: Tfrm99_EmissSizeList
  Caption = 'frm99_EmissSizeList'
  PixelsPerInch = 96
  TextHeight = 13
  inherited paMain: TPanel
    inherited xxxDBGrid: TxxxDBGrid
      Columns = <
        item
          Expanded = False
          FieldName = 'T098_START_DATE'
          PickList.Strings = ()
          Title.Caption = '���� �'
          Width = 82
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T098_END_DATE'
          PickList.Strings = ()
          Title.Caption = '���� ��'
          Width = 82
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T098_EMISSION_SIZE'
          PickList.Strings = ()
          Title.Caption = '������ �������'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T098_DATA_SOURCE'
          PickList.Strings = ()
          Title.Caption = '��������'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T098_UPDATE_USER'
          PickList.Strings = ()
          Title.Caption = '���'
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T098_UPDATE_DATE'
          PickList.Strings = ()
          Title.Caption = '�����'
          Width = 100
          Visible = True
        end>
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT T098_ID,'
      ' T030_ID,'
      ' T098_START_DATE,'
      ' T098_END_DATE,'
      ' T098_EMISSION_SIZE,'
      ' T098_DATA_SOURCE,'
      ' T098_UPDATE_DATE,'
      ' T098_UPDATE_USER'
      'FROM V_405_EMISS_SIZE'
      'WHERE T030_ID = :T030_ID'
      '')
    Variables.Data = {
      0300000001000000080000003A543033305F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000000800000007000000543039385F494401000000000007000000543033
      305F49440100000000000F000000543039385F53544152545F44415445010000
      0000000D000000543039385F454E445F44415445010000000000120000005430
      39385F454D495353494F4E5F53495A4501000000000010000000543039385F44
      4154415F534F5552434501000000000010000000543039385F5550444154455F
      4441544501000000000010000000543039385F5550444154455F555345520100
      00000000}
    MasterFields = 'T030_ID'
    object odsListT098_ID: TFloatField
      FieldName = 'T098_ID'
      Required = True
    end
    object odsListT030_ID: TFloatField
      FieldName = 'T030_ID'
      Required = True
    end
    object odsListT098_START_DATE: TDateTimeField
      FieldName = 'T098_START_DATE'
      Required = True
    end
    object odsListT098_END_DATE: TDateTimeField
      FieldName = 'T098_END_DATE'
    end
    object odsListT098_EMISSION_SIZE: TFloatField
      FieldName = 'T098_EMISSION_SIZE'
      Required = True
      DisplayFormat = '### ### ### ##0'
      EditFormat = '0'
    end
    object odsListT098_DATA_SOURCE: TStringField
      FieldName = 'T098_DATA_SOURCE'
      Size = 255
    end
    object odsListT098_UPDATE_DATE: TDateTimeField
      FieldName = 'T098_UPDATE_DATE'
    end
    object odsListT098_UPDATE_USER: TStringField
      FieldName = 'T098_UPDATE_USER'
      Size = 255
    end
  end
  inherited oqAdd: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_rec PK_Form_405.t_T098_rec;'
      'BEGIN'
      '  -- ��������� ���������'
      '  v_rec.T030_ID := :T030_ID;'
      '  v_rec.T098_START_DATE := :T098_START_DATE;'
      '  v_rec.T098_EMISSION_SIZE := :T098_EMISSION_SIZE;'
      '  v_rec.T098_DATA_SOURCE := :T098_DATA_SOURCE;'
      '  v_rec.T098_UPDATE_USER := :USER;'
      '  PK_Form_405.p_emiss_size_add(v_rec);'
      '  :T098_ID := v_rec.T098_ID;'
      'END;'
      ''
      '')
    Variables.Data = {
      0300000006000000080000003A543033305F4944040000000000000000000000
      100000003A543039385F53544152545F444154450C0000000000000000000000
      130000003A543039385F454D495353494F4E5F53495A45040000000000000000
      000000080000003A543039385F4944040000000000000000000000110000003A
      543039385F444154415F534F5552434505000000000000000000000005000000
      3A55534552050000000000000000000000}
  end
  inherited oqUpdate: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_rec PK_Form_405.t_T098_rec;'
      'BEGIN'
      '  -- ��������� ���������'
      '  v_rec.T098_ID := :T098_ID;'
      '  v_rec.T030_ID := :T030_ID;'
      '  v_rec.T098_START_DATE := :T098_START_DATE;'
      '  v_rec.T098_EMISSION_SIZE := :T098_EMISSION_SIZE;'
      '  v_rec.T098_DATA_SOURCE := :T098_DATA_SOURCE;'
      '  v_rec.T098_UPDATE_USER := :USER;'
      '  PK_Form_405.p_emiss_size_update(v_rec);'
      'END;'
      ''
      '')
    Variables.Data = {
      0300000006000000080000003A543039385F4944040000000000000000000000
      100000003A543039385F53544152545F444154450C0000000000000000000000
      130000003A543039385F454D495353494F4E5F53495A45040000000000000000
      000000080000003A543033305F4944040000000000000000000000110000003A
      543039385F444154415F534F5552434505000000000000000000000005000000
      3A55534552050000000000000000000000}
  end
  inherited oqDelete: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_rec PK_Form_405.t_T098_rec;'
      'BEGIN'
      '  -- ��������� ���������'
      '  v_rec.T098_ID := :T098_ID;'
      '  v_rec.T030_ID := :T030_ID;'
      '  v_rec.T098_START_DATE := :T098_START_DATE;'
      '  PK_Form_405.p_emiss_size_delete(v_rec);'
      'END;'
      '')
    Variables.Data = {
      0300000003000000080000003A543039385F4944040000000000000000000000
      080000003A543033305F4944040000000000000000000000100000003A543039
      385F53544152545F444154450C0000000000000000000000}
  end
  inherited oqDupl: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_rec PK_Form_405.t_T098_rec;'
      'BEGIN'
      '  -- ��������� ���������'
      '  v_rec.T098_ID := :T098_ID;'
      '  v_rec.T030_ID := :T030_ID;'
      '  v_rec.T098_START_DATE := :T098_START_DATE;'
      '  :o_result := PK_Form_405.f_emiss_size_check(v_rec);'
      'END;'
      '')
    Variables.Data = {
      0300000004000000080000003A543039385F4944040000000000000000000000
      080000003A543033305F4944040000000000000000000000100000003A543039
      385F53544152545F444154450C0000000000000000000000090000003A4F5F52
      4553554C540400000008000000000000000000000000000000}
  end
end
