�
 TFRM34_COUPONFILLDLG 0�  TPF0Tfrm34_CouponFillDlgfrm34_CouponFillDlgLeft� Top�BorderIcons BorderStylebsDialogCaption��������� �������ClientHeightClientWidth9Color	clBtnFace
ParentFont	OldCreateOrder	PositionpoScreenCenterOnCreate
FormCreateOnShowFormShowPixelsPerInch`
TextHeight TBevelBevel1LeftTopWidth)HeightIShapebsFrame  TLabelLabel1LeftTopWidth_HeightCaption����� ����������  TLabelLabel2LeftTop4WidthYHeightCaption�������� ������  TButtonOKBtnLeftTTop]WidthKHeightCaptionOKDefault	ModalResultTabOrder OnClick
OKBtnClick  TButton	CancelBtnLeft� Top]WidthKHeightCancel	Caption������ModalResultTabOrder  TDBEdited01Left� Top0Width� Height	DataFieldT031_COUPON_PERIOD
DataSourcefrm31_EmisInfList.dsListTabOrder  TDBLookupComboBoxlcb1Left� TopWidth� Height	DataFieldT031_CALC_DATE_TYPE
DataSourcefrm31_EmisInfList.dsListKeyFieldTYPE_ID	ListField	TYPE_NAME
ListSourceds1TabOrder  TOracleDataSetods1SQL.Stringsselect TYPE_ID, TYPE_NAMEfrom V_405_CALC_DATE_TYPESwhere TYPE_ID IN (2, 3) QBEDefinition.QBEFieldDefs
,            TYPE_ID     	   TYPE_NAME     SessiondmMain.OracleSessionAfterScrollods1AfterScrollLeft�  TFloatFieldods1TYPE_ID	FieldNameTYPE_ID  TStringFieldods1TYPE_NAMEDisplayWidth	FieldName	TYPE_NAMESize   TDataSourceds1DataSetods1Left� Top��    TOracleQueryoqUpdateSQL.StringsbeginO  pk_405_coupons.p_coupon_matrix_params_update(:T031_ID, :DATEMETHOD, :PERIOD);end; SessiondmMain.OracleSessionVariables.Data
R            :T031_ID              :DATEMETHOD              :PERIOD           Left TopX   