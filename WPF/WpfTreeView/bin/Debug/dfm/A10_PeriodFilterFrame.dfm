�
 TA10_PERIODFILTER 0�  TPF0�TA10_PeriodFilterA10_PeriodFilter �TxxxDBLookupCheckCombolcbLookupFieldT055_IDLookupDisplayPERIOD_FROM  �TRxDBLookupCombolcb2LookupFieldT055_IDLookupDisplay	PERIOD_TO  �TOracleDataSetodsListSQL.Stringsselect T055_ID,       PERIOD_FROMfrom   V_404_DATA_PERIODSwhere  T055_ID <= :PERIOD_TO Variables.Data
"         
   :PERIOD_TO           QBEDefinition.QBEFieldDefs
.            T055_ID        PERIOD_FROM       �TOracleDataSetodsList2SQL.Stringsselect T055_ID,       PERIOD_TOfrom   V_406_DATA_PERIODSwhere  T055_ID >= :PERIOD_FROM Variables.Data
$            :PERIOD_FROM           QBEDefinition.QBEFieldDefs
,            T055_ID     	   PERIOD_TO        