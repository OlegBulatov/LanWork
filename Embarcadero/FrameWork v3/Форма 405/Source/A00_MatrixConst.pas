unit A00_MatrixConst;

interface

const
  // �������� matrix
  LOGIN_TO_PROGRAM = '���� � ��������� Form405';
  ADD_BOND = '���������� ����� ������';
  ADD_OPER = '���������� ����� ��������';
  ADD_PAY = '���������� ����� ��������';
  ADD_401_DBF = '���������� ������ ����� 401';
  ADD_101_DBF = '���������� ������ ����� 101';
  ADD_711_SUM = '���������� ������ ����� 711';
  ADD_DATA_1 = '���������� ������ �����';
  ADD_DATA_2 = '���������� ������ ������� 2';
  ADD_DATA_3 = '���������� ������ ������� 3';
  ADD_SPOSOB = '���������� ������� ����������';
  ADD_SOST = '���������� ���������';
  ADD_SECTYPE = '���������� ���� �.�.';
  ADD_ISSUERTYPE = '���������� ���� ��������';
  ADD_SECREGN = '���������� ������ �.�.';
  ADD_ISSUER = '���������� ��������';
  ADD_COUPON = '���������� ������';
  ADD_MATURITY_DATE = '���������� ���� ���������';
  ADD_EMISSION = '���������� �������';
  ADD_EMISSION_INF = '���������� ������� ���';
  ADD_REZID = '���������� ���������';
  ADD_NREZID = '���������� �����������';
  ADD_REZID_GROUP = '���������� ������ ����������';
  ADD_NREZID_GROUP = '���������� ������ ������������';
  ADD_ISSUER_GROUP = '���������� ������ ���������';
  ADD_EMIS_GROUP = '���������� ������ �������';
  ADD_WORKDAY = '���������� ������� ����';
  ADD_ISSUER_INF_TYPE = '���������� ���� ��������';
  ADD_DIVIDEND = '���������� ���������';
  ADD_NKO = '���������� ���';
  ADD_NKO_SUM = '���������� �������� ���';
  ADD_REUTER_LINK = '���������� ����� Reuter';
  ADD_REUTER_DATA = '���������� ������ Reuter';
  ADD_EMISS_SIZE = '���������� ������ ������� �������';
  ADD_OTHER_CHANGE = '���������� ������� ���������';
  ADD_DEF_405_REPAY = '���������� ��������� ������� - 405';
  ADD_REPAYMENT = '���������� ��������� �������';
  ADD_INN_KO = '���������� ������ � ������ ��';

  CHANGE_BOND = '��������� ����� ������';
  CHANGE_OPER = '��������� ����� ��������';
  CHANGE_PAY = '��������� ����� ��������';
  CHANGE_401_DBF = '��������� ������ ����� 401';
  CHANGE_101_DBF = '��������� ������ ����� 101';
  CHANGE_711_SUM = '��������� ������ ����� 711';
  CHANGE_DATA_1 = '��������� ������ �����';
  CHANGE_DATA_2 = '��������� ������ ������� 2';
  CHANGE_DATA_3 = '��������� ������ ������� 3';
  CHANGE_415_23 = '��������� ������ ������� 2.3 ����� 415';
  CHANGE_SPOSOB = '��������� ������� ����������';
  CHANGE_SOST = '��������� ���������';
  CHANGE_SECTYPE = '��������� ���� �.�.';
  CHANGE_ISSUERTYPE = '��������� ���� ��������';
  CHANGE_SECREGN = '��������� ������ �.�.';
  CHANGE_ISSUER = '��������� ��������';
  CHANGE_COUPON = '��������� ������';
  CHANGE_MATURITY_DATE = '��������� ���� ���������';
  CHANGE_EMISSION = '��������� �������';
  CHANGE_EMISSION_INF = '��������� ������� ���';
  CHANGE_REZID = '��������� ���������';
  CHANGE_NREZID = '��������� �����������';
  CHANGE_REZID_GROUP = '��������� ������ ����������';
  CHANGE_NREZID_GROUP = '��������� ������ ������������';
  CHANGE_ISSUER_GROUP = '��������� ������ ���������';
  CHANGE_EMIS_GROUP = '��������� ������ �������';
  CHANGE_WORKDAY = '��������� ������� ����';
  CHANGE_ISSUER_INF_TYPE = '��������� ���� ��������';
  CHANGE_CLASS_PARAMS = '��������� ���������� �������������';
  CHANGE_REPUTATION = '��������� �������� ���������� ��������� ������';
  CHANGE_DIVIDEND = '��������� ���������';
  CHANGE_NKO = '��������� ���';
  CHANGE_NKO_SUM = '��������� �������� ���';
  CHANGE_REUTER_LINK = '��������� ����� Reuter';
  CHANGE_REUTER_DATA = '��������� ������ Reuter';
  CHANGE_REPORT_CAN_LOAD = '��������� �������� �������� ����� �������';
  CHANGE_EMISS_SIZE = '��������� ������ ������� �������';
  CHANGE_OTHER_CHANGE = '��������� ������� ���������';
  CHANGE_REPAYMENT = '��������� ������ ��������� �������';
  CHANGE_INN_KO = '��������� ������ � ������� ��';

  LOAD_REPORT = '������� ������� �������� ������� �� �� ���';

  DELETE_BOND = '�������� ����� ������';
  DELETE_OPER = '�������� ����� ��������';
  DELETE_PAY = '�������� ����� ��������';
  DELETE_401_DBF = '�������� ������ ����� 401';
  DELETE_101_DBF = '�������� ������ ����� 101';
  DELETE_711_SUM = '�������� ������ ����� 711';
  DELETE_DATA_1 = '�������� ������ �����';
  DELETE_DATA_2 = '�������� ������ ������� 2';
  DELETE_DATA_3 = '�������� ������ ������� 3';
  DELETE_SPOSOB = '�������� ������� ����������';
  DELETE_SOST = '�������� ���������';
  DELETE_SECTYPE = '�������� ���� �.�.';
  DELETE_ISSUERTYPE = '�������� ���� ��������';
  DELETE_SECREGN = '�������� ������ �.�.';
  DELETE_ISSUER = '�������� ��������';
  DELETE_COUPON = '�������� ������';
  DELETE_MATURITY_DATE = '�������� ���� ���������';
  DELETE_EMISSION = '�������� �������';
  DELETE_EMISSION_INF = '�������� ������� ���';
  DELETE_REZID = '�������� ���������';
  DELETE_NREZID = '�������� �����������';
  DELETE_REZID_GROUP = '�������� ������ ����������';
  DELETE_NREZID_GROUP = '�������� ������ ������������';
  DELETE_ISSUER_GROUP = '�������� ������ ���������';
  DELETE_EMIS_GROUP = '�������� ������ �������';
  DELETE_WORKDAY = '�������� ������� ����';
  DELETE_ISSUER_INF_TYPE = '�������� ���� ��������';
  DELETE_DIVIDEND = '�������� ���������';
  DELETE_NKO = '�������� ���';
  DELETE_NKO_SUM = '�������� �������� ���';
  DELETE_REUTER_LINK = '�������� ����� Reuter';
  DELETE_REUTER_DATA = '�������� ������ Reuter';
  DELETE_EMISS_SIZE = '�������� ������ ������� �������';
  DELETE_OTHER_CHANGE = '�������� ������� ���������';
  DELETE_DEF_405_REPAY = '�������� ��������� ������� - 405';
  DELETE_REPAYMENT = '�������� ������ ��������� �������';
  DELETE_INN_KO = '�������� ������ �� ������� ��';

  CALC_QUOTATION = '������ ���������';
  CHANGE_RATE = '��������� ���������';

  CHANGE_KORR = '��������� ������� �����������';
  APPLY_CHANGES = '�������� �����������';
  CANCEL_CHANGES = '������ �����������';
  LOGOUT = '����� �� ��������� Form405';

  SHOW_REPORT = '������������ ������ � Excel - %s';
  EXPORT_EXCEL = '�������� ������ � Excel (%s)';
  CALC_REMAINS = '������ ��������';  // ???
  CHANGE_REMAIN = '��������� ��������';
  CHANGE_REMAIN_711 = '������ ��������: ��������/������ ��������';
  CHANGE_REMAIN_FORM = '������ ��������: ����� 711/405';
  RECALC_REMAINS = '���������� ��������';

  LINK_REZID = '���������� ���������';
  UNLINK_REZID = '����������� ���������';
  MAKE_REZID_MAIN = '������� ��������� �������';

  LOAD_PIF = '�������� ������ ���';

  LOAD_INN_KO = '�������� ������� ��';
  REPLACE_INN_KO = '������ ������ �������� � �������� ��';
  LOAD_ISU_FILE = '�������� ������� ���';
  CHECK_ISU_DATA = '������ ������ �������� � �������� ���';
  SET_FICTIVE_STATE = '��������� ������� �����������';

  EXP_EXCEL = '������� � Excel';

implementation

end.
