�
 TK001_ISSUEREDIT 0+
  TPF0TK001_IssuerEditK001_IssuerEditLeft�TopBorderStylebsDialogCaption
����������ClientHeight� ClientWidthoColor	clBtnFace
ParentFont	OldCreateOrder	PositionpoScreenCenterPixelsPerInch`
TextHeight TLabelLabel1LeftTopWidth2HeightCaption��������  TLabelLabel2LeftTop!WidthHeightCaption���  TLabelLabel3LeftTop8Width$HeightCaption������  TLabelLabel4LeftTopPWidthHeightCaptionTINVisible  TLabellblRegnLeft� TopjWidth HeightCaption���.�  TLabellblOgrnLeftTop� WidthHeightCaption����  TButtonOKBtnLeft� Top� WidthKHeightAnchorsakRightakBottom CaptionOKDefault	ModalResultTabOrder   TButton	CancelBtnLeftTop� WidthKHeightAnchorsakRightakBottom Cancel	CaptionCancelModalResultTabOrder  TDBEditedNameLeftHTopWidthHeight	DataFieldT028_SHOT_NAME
DataSourcedsListTabOrder  TxxxDBLookupCheckCombolcbTypeLeftHTopWidthHeightDropDownCount	DataFieldT025_ID
DataSourcedsList	ListStyle
lsSizeable LookupFieldT025_IDLookupDisplayT025_SHOT_NAMELookupSourcedsTypeTabOrderAdvanced.ShowSelectionHintAdvanced.Autorefresh  TxxxDBLookupCheckCombo
lcbCountryLeftHTop5WidthHeightDropDownCount 	DataFieldT028_COUNTRY_ID
DataSourcedsList	ListStyle
lsSizeable LookupFieldT028_COUNTRY_IDLookupDisplayCOUNTRY_NAMELookupSource	dsCountryTabOrderAdvanced.ShowSelectionHintAdvanced.Autorefresh  TDBCheckBoxcbIsBankLeftTophWidthMHeight	AlignmenttaLeftJustifyCaption����	DataFieldT036_ISBANK
DataSourcedsListTabOrderValueCheckedYValueUncheckedN  TDBEditedRegnLeft� TophWidth� Height	DataField	T036_REGN
DataSourcedsListTabOrder  TDBEditedOgrnLeftHTop� WidthHeight	DataField	T036_OGRN
DataSourcedsListTabOrder  TOracleDataSetodsTypeSQL.Stringsselect T025_ID,       T025_SHOT_NAMEfrom   V_405_ISSUER_TYPEwhere  T025_ID < 1000 QBEDefinition.QBEFieldDefs
1            T025_ID        T025_SHOT_NAME     SessiondmMain.OracleSessionLeft� Top  TDataSourcedsTypeDataSetodsTypeLeft� Top  TOracleDataSet
odsCountrySQL.StringsSELECT T028_COUNTRY_ID,=       T028_COUNTRY_ID || '   ' || SHORT_NAME AS COUNTRY_NAMEfrom   V_405_COUNTRYorder by ISO_DIG QBEDefinition.QBEFieldDefs
7            T028_COUNTRY_ID        COUNTRY_NAME     SessiondmMain.OracleSessionLeft� Top0  TDataSource	dsCountryDataSet
odsCountryLeftTop0  TDataSourcedsListLeftTop�    