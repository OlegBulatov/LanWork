unit frm14_LoadConstUnt;

interface

uses classes;

type
  TDBFType = (
    ft401,
    ft711_31,
    ft711_32,
    ft711_31_new,
    ft711_32_new,
    ft711_11,
    ft711_12,
    ft711_13,
    ft711_14,
    ft711_21,
    ft711_22,
    ft711_23,
    ft711_30,
    ft664,
    ftSmi,
    ft101,
    ft661,
    ftNKO,
    ftMMVB,
    ftRTS,
    ftReuter,
    ftBON1,
    ftGKORates,
    ftGKOData
    );

const
  DBF_FILE_LIST: array[TDBFType] of string = (
    'DBF_401_FILE',
    'DBF_711_SUM_31_FILE',
    'DBF_711_SUM_32_FILE',
    'DBF_711_SUM_31_FILE',
    'DBF_711_SUM_32_FILE',
    'DBF_711_SUM_11_FILE',
    'DBF_711_SUM_12_FILE',
    'DBF_711_SUM_13_FILE',
    'DBF_711_SUM_14_FILE',
    'DBF_711_SUM_21_FILE',
    'DBF_711_SUM_22_FILE',
    'DBF_711_SUM_23_FILE',
    'DBF_711_SUM_30_FILE',
    'DBF_664_FILE',
    'DBF_SMI_FILE',
    'DBF_101_FILE',
    'DBF_661_FILE',
    'DBF_NKO_FILE',
    'DBF_MMVB_FILE',
    'DBF_RTS_FILE',
    'DBF_REUTER_FILE',
    'DBF_BON1_FILE',
    'DBF_GKO_RATE_FILE',
    'DBF_GKO_DATA_FILE'
    );

  DBF_PATH_LIST: array[TDBFType] of string = (
    'DBF_401_PATH',
    'DBF_711_SUM_31_PATH',
    'DBF_711_SUM_32_PATH',
    'DBF_711_SUM_31_PATH',
    'DBF_711_SUM_32_PATH',
    'DBF_711_SUM_11_PATH',
    'DBF_711_SUM_12_PATH',
    'DBF_711_SUM_13_PATH',
    'DBF_711_SUM_14_PATH',
    'DBF_711_SUM_21_PATH',
    'DBF_711_SUM_22_PATH',
    'DBF_711_SUM_23_PATH',
    'DBF_711_SUM_30_PATH',
    'DBF_664_PATH',
    'DBF_SMI_PATH',
    'DBF_101_PATH',
    'DBF_661_PATH',
    'DBF_NKO_PATH',
    'DBF_MMVB_PATH',
    'DBF_RTS_PATH',
    'DBF_REUTER_PATH',
    'DBF_BON1_PATH',
    'DBF_GKO_RATE_PATH',
    'DBF_GKO_DATA_PATH'
    );

  DBF_PROC_NAME: array[TDBFType] of string = (
    'Pk_Load_Dbf.p_401_add',
    'Pk_Load_Dbf.p_711_sum_31_add',
    'Pk_Load_Dbf.p_711_sum_32_add',
    'Pk_Load_Dbf.p_711_sum_31_add_new1',
    'Pk_Load_Dbf.p_711_sum_32_add_new1',
    'Pk_405_Load_711_11.p_711_11_add_row',
    'Pk_405_Load_711_12.p_711_12_add_row',
    'Pk_405_Load_711_13.p_711_13_add_row',
    'Pk_405_Load_711_14.p_711_14_add_row',
    'Pk_405_Load_711_2.p_711_21_add_row',
    'Pk_405_Load_711_2.p_711_22_add_row',
    'Pk_405_Load_711_2.p_711_23_add_row',
    'Pk_405_Load_711_3.p_711_30_add_row',
    'Pk_Load_Dbf.p_664_add',
    'Pk_Load_Dbf.p_Smi_add',
    'Pk_Load_Dbf.p_101_add',
    'Pk_Load_Dbf.p_661_add',
    'Pk_Load_Dbf.p_nko_add',
    'Pk_Load_Dbf.p_mmvb_add',
    'Pk_Load_Dbf.p_rts_add',
    'Pk_Load_Dbf.p_reuter_add',
    'Pk_405_Reuters_Dbf.p_bon1_add',
    'Pk_405_GKO.p_rate_load',
    'Pk_405_GKO.p_oper_load'
    );

implementation

end.
