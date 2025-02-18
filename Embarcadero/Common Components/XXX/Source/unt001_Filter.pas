unit unt001_Filter;

{----------------------------------------------------------------------------

    ��������:
	  ����� �������� ����� ������������ ��������� ���������� SQL �������,
	  � �������� ������� ������� JIRA
	      SELECT V1.PROJECT_ID,
		     V1.PROJECT_NAME,
		     V1.VERSION_ID,
		     V2.VERSION_NAME,
		     V2.ISSUE_ID,
		     V3.ISSUE_NAME,
		     V3.ISSUE_DESC
	      FROM   PROJECTS V1,
		     VERSIONS V2,
		     ISSUERS  V3
	      WHERE  V1.PROJECT_ID = V2.PROJECT_ID,
	      AND    V2.VERSION_ID = V3.VERSION_ID
	      AND    V1.PROJECT_ID = :PROJECT_ID
	  ������������ ��� �������� ����� ������
	      LookupList    - ������ ��������
	      CheckBoxList  - ������ ������ ��� ���������� �������
	      TextBox       - ������ �� ���� V3.ISSUE_DESC
	  ������������ ����� ������� ���� ������ ��� ���.
	  ������������ ����� ����������� �� V3.ISSUE_DESC, ����� ���.
	  ������������ ������ ����� ����������� �������������� ���������
	  ������� ���������� (�� ����� ������ ������ � SQL ������).
	  ����� ������� �������� � ��� ��� ������ �� ���� ��� � ��������
	  ����� ������ ������������ �� ������ "�������" �������� SQL ������.
	       'SELECT   ....'
	       'FROM     ....'
	       +
	       'WHERE    ....'
	       +
	       'ORDER BY ...'
	  ��� ��� ����������� � ������ �������� ����� ���� ������
	  �������� �������� �� ����� (���������) ����� ��������� �������.

    �������:
	  ������� ����� - ���������� ��� �������� SQL, �����������
	  ����� ���� ������ � �������� ��������� ����� ������� SQL
	      ��������� ���������� �������  ORDER BY
	      ��������� ������              WHERE
   ----------------------------------------------------------------------------}

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, db, dbctrls, untParams, Variants;

const
  EMPTY_STR = '';

  VAL_COUNT = 2;                   // ������������ ����� ���������� � SQL ���������

  VAL_HIGH_INDEX = VAL_COUNT - 1;

type
  // ���� ������ ��� SQL �������
  TValueType = (vtNumber, vtString, vtDate);

  // ��� �������
  TDateFunc = function: TDate of object;

//----------------------------------------------------------------------------
// ��������� ������� ������ ��������� ������������
//----------------------------------------------------------------------------

type
  // ������ �������, ������� �� ����� ������������ � ���������
  TDisplayCondition = (
    dc01,  // '�����'
    dc02,  // '����� (�����)'
    dc03,  // '�� �����'
    dc04,  // '������ ���'
    dc05,  // '������ ���'
    dc06,  // '��������'
    dc07,  // '�����'
    dc08,  // '�����'
    dc09,  // '�� �����'
    dc10,  // '�� ��������'
    dc11,  // '�� ������'  ( > )
    dc12,  // '�� �������' ( < )
    dc13,  // '�������'
    dc14,  // '�����'
    dc15,  // '������� ������'
    dc16,  // '������� ������'
    dc17,  // '������� �����'
    dc18,  // '������� �����'
    dc19,  // '������� ���'
    dc20,  // '������� ���'
    dc21,  // '�����'    (��� ����)
    dc22,  // '�� �����' (��� ����)
    dc23,  // '�����' (��� ����)
    dc24,  // '������'    (��� �����)
    dc26,  // '������'    (��� ������)
    dc27,  // '������ ��� ����� ���'
    dc28,  // '������ ��� ����� ���'
    dc29,  // '����� ��� NULL'
    dc30   // '�� ����� ��� NULL'
    );

  // ��������� ��� - ������ �������
  TArrayOfConditions = array of TDisplayCondition;

const
  // �������� ������� ������� ������������
  DISPLAY_CONDITION_TEXT: array [TDisplayCondition] of string = (
    '�����',            // dc01
    '����� (�����)',    // dc02
    '�� �����',         // dc03
    '������ ���',       // dc04
    '������ ���',       // dc05
    '��������',         // dc06
    '�����',            // dc07
    '�����',            // dc08
    '�� �����',         // dc09
    '�� ��������',
    '������ ���',
    '������ ���',
    '�������',
    '�����',
    '������� ������',
    '������� ������',
    '������� �����',
    '������� �����',
    '������� ���',
    '������� ���',
    '�����',
    '�� �����',
    '�����',
    '������',    // (��� �����)
    '������',     // (��� ������)
    '������ ��� ����� ���',
    '������ ��� ����� ���',
    '����� ��� NULL',
    '�� ����� ��� NULL'
    );

//-----------------------------------------------------------------------------
// ��������� ������� ������ ������������� � ������ ����
//-----------------------------------------------------------------------------

type
  // ������ �������, ������������ � ���������� SQL
  TSQLCondition = (
    sc01, // =
    sc02, // <>
    sc03, // >
    sc04, // >=
    sc05, // <
    sc06, // <=
    sc07, // LIKE
    sc08, // BETWEEN
    sc09, // IS NULL
    sc10, // IS NOT NULL
    sc11, // NOT LIKE
    sc12, // = (��� ������)
    sc13, // IN
    sc14, // (= OR IS NULL)
    sc15  // (<> OR IS NULL)
    );

const
  // ����� �������, ������� ����� ��������� � SQL ������
  SQL_CONDITION_TEXT: array [TSQLCondition] of string = (
    '(%s = %s)',
    '(%s <> %s)',
    '(%s > %s)',
    '(%s >= %s)',
    '(%s < %s)',
    '(%s <= %s)',
    '(UPPER(%s) LIKE UPPER(%s))',
    '(%s BETWEEN %s AND %s)',
    '(%s IS NULL)',
    '(%s IS NOT NULL)',
    '(UPPER(%s) NOT LIKE UPPER(%s))',
    '(%s = %s)',
    '(%s IN (%s))',
    '(NVL(%s, %s) = %s)',
    '(NVL(%s, %s) <> %s)'
    );

  // ���������� ���������� � SQL ������� - �� 0 �� 2
  ARG_COUNT: array [TSQLCondition] of Integer = (
    1, 1, 1, 1, 1, 1, 1, 2, 0, 0, 1, 1, -1, 2, 2);


//----------------------------------------------------------------------------
// ��������� �������, �������� ���������� ������� �� ������������� �
//  ������������, ����������� �������������
//----------------------------------------------------------------------------
const
  // �������, �������� ���������� ������� �� ������������� � ������������,
  // � ����������� �������������
  // ������������ TDisplayCondition
  AGV_CONDITION = [
    dc13,  // '�������'
    dc14,  // '�����'
    dc15,  // '������� ������'
    dc16,  // '������� ������'
    dc17,  // '������� �����'
    dc18,  // '������� �����'
    dc19,  // '������� ���'
    dc20   // '������� ���'
    ];

type
  // ����������� �������� ��������� ��� "��������������" �������
  TCalcValue = (
    cv01, // �������
    cv02, // �����
    cv03, // ������� ������ [����� �������]
    cv04, // ������� ������ [������ �������]
    cv05, // ������� ������ [����� �������]
    cv06, // ������� ������ [������ �������]
    cv07, // ������� ����� [����� �������]
    cv08, // ������� ����� [������ �������]
    cv09, // ������� ����� [����� �������]
    cv10, // ������� ����� [������ �������]
    cv11, // ������� ��� [����� �������]
    cv12, // ������� ��� [������ �������]
    cv13, // ������� ��� [����� �������]
    cv14  // ������� ��� [������ �������]
    );

//----------------------------------------------------------------------------
// ��������� ����������� ������� ������������ ������������ �
// ������� ������ ����
// ������ ������� SQL ����� ��������������� ��������� ������� ������������
//----------------------------------------------------------------------------
const
  // ����� ����� ��� ��� ���������� � ��� ��� ��������� � SQL
  LINKED: array[TDisplayCondition] of TSQLCondition = (
    sc01,  // '�����'                 // dc01
    sc12,  // '����� (�����)'         // dc02
    sc02,  // '�� �����'              // dc03
    sc03,  // '������ ���'            // dc04
    sc05,  // '������ ���'            // dc05
    sc07,  // '��������'              // dc06
    sc08,  // '�����'                 // dc07
    sc09,  // '�����'                 // dc08
    sc10,  // '�� �����'              // dc09
    sc11,  // '�� ��������'
    sc03,  // '�� ������'
    sc05,  // '�� �������'
    sc01,  // '�������'
    sc01,  // '�����'
    sc08,  // '������� ������'
    sc08,  // '������� ������'
    sc08,  // '������� �����'
    sc08,  // '������� �����'
    sc08,  // '������� ���'
    sc08,  // '������� ���'
    sc01,  // '�����'    (��� ����)
    sc02,  // '�� �����' (��� ����)
    sc08,  // '�����'    (��� ����)
    sc13,  // '������'    (��� �����)
    sc13,  // '������'    (��� ������),
    sc04,  // >=
    sc06,  // <=
    sc14,  // = OR IS NULL
    sc15   // <> OR IS NULL
    );

//----------------------------------------------------------------------------
// ��������� ������� ��� ������ - ���������, ��������, ����
//----------------------------------------------------------------------------
  // ���������� �������
  NUMBER_COND_INDEX = 11;
  TEXT_COND_INDEX = 5;
  DATE_COND_INDEX = 13;

  CONDITION_COUNT: array[TValueType] of Integer = (
    NUMBER_COND_INDEX,
    TEXT_COND_INDEX,
    DATE_COND_INDEX
    );

  NUMBER_CONDITION: array[0..NUMBER_COND_INDEX] of TDisplayCondition = (
    dc01,  // '�����'
    dc03,  // '�� �����'
    dc04,  // '������ ���'
    dc27,  // '������ ��� ����� ���'
    dc05,  // '������ ���'
    dc28,  // '������ ��� ����� ���'
    dc07,  // '�����'
    dc08,  // '�����'
    dc09,  // '�� �����'
    dc24,  // '������'    (��� �����)
    dc29,  // '����� ��� NULL'
    dc30   // '�� ����� ��� NULL''
    );

  TEXT_CONDITION: array[0..TEXT_COND_INDEX] of TDisplayCondition = (
    dc02,  // '����� (�����)'
    dc06,  // '��������'
    dc10,  // '�� ��������'
    dc08,  // '�����'
    dc09,  // '�� �����'
    dc26   // '������'    (��� ������)
    );

  DATE_CONDITION: array[0..DATE_COND_INDEX] of TDisplayCondition = (
    dc21,  // '�����'
    dc11,  // '�� ������'
    dc12,  // '�� �������'
    dc23,  // '�����'
    dc13,  // '�������'
    dc14,  // '�����'
    dc15,  // '������� ������'
    dc16,  // '������� ������'
    dc17,  // '������� �����'
    dc18,  // '������� �����'
    dc19,  // '������� ���'
    dc20,  // '������� ���'
    dc08,  // '�����'
    dc09   // '�� �����'
    );

  CONDITION_FOR_TYPE: array[TValueType] of Pointer = (
    @NUMBER_CONDITION,
    @TEXT_CONDITION,
    @DATE_CONDITION
    );

  FIELD_TYPE: array[TValueType] of set of TFieldType = (
    [ftFloat, ftSmallint, ftInteger, ftWord, ftBytes, ftVarBytes, ftAutoInc],
    [ftString, ftMemo, ftFmtMemo],
    [ftDate, ftTime, ftDateTime]
    );

type
  TDataSetFactory = class;

  TDataSetFactoryClass = class of TDataSetFactory;

  //TDataSetClass = class of TDataSet;

  EDataSetFactory = class(Exception);

  TDataSetFactoryErr = class(TObject)
    class procedure Error(const AMsg: string);
  end;

  TDataSetFactory = class(TComponent)
  protected
  public
    function GetDataSetClass: TDataSetClass; virtual; abstract;
    //  
    procedure CloneDataSet(const AFrom, ATo: TDataSet); virtual;
    procedure SetSQL(const ADataSet: TDataSet; const ASQL: TStrings); virtual; abstract;
    function GetSQL(const ADataSet: TDataSet): TStrings; virtual; abstract;
    procedure PrepareSql(const ADataSet: TDataSet); virtual; abstract;
    class procedure BuildDataSetFactory(const ADataSetFactoryClass: TDataSetFactoryClass);
    class procedure DestroyDataSetFactory;
  end;

  TSortType = (stAsc, stDesc);

  //----------------------------------------------------------------------------
  // ����������:  �������� �� �������� ���������� �� ������� ����������
  //----------------------------------------------------------------------------
  TIndex = class(TCollectionItem)
  private
    FFieldName: string;
    FSortType: TSortType;
    procedure SetFieldName(const Value: string);
    procedure SetSortType(const Value: TSortType);
  protected
    procedure AssignTo(Dest: TPersistent); override;
  public
    constructor Create(Collection: TCollection); override;
  published
    property FieldName: string read FFieldName write SetFieldName;
    property SortType: TSortType read FSortType write SetSortType;
  end;

  TVirtualDataSet = class;

  //----------------------------------------------------------------------------
  // ����������:  �������� �� �������� ������ ������� ����������
  //              ����� ���������� ������� ���� SQL ����
  //              'FieldName1 ASC, FieldName2 DEC, FieldName3 ASC'
  //----------------------------------------------------------------------------
  TIndexes = class(TCollection)
  private
    FOwner: TVirtualDataSet;
  protected
    function GetOwner: TPersistent; override;
    function GetItem(Index: Integer): TIndex;
    procedure SetItem(Index: Integer; const Value: TIndex);
    procedure Update(Item: TCollectionItem); override;
  public
    constructor Create(Owner: TVirtualDataSet);
    function IndexOf(AFieldName: string): TIndex;
    function Add: TIndex;
    procedure MoveUp(const AIndex: TIndex);
    procedure MoveDown(const AIndex: TIndex);
    function BuildSQL: string;
    property Items[Index: Integer]: TIndex read GetItem write SetItem; default;
  end;

  TConditions = class;

  TValue = class;

  TValueItem = class;

  //----------------------------------------------------------------------------
  // ����������:  �������� �� �������� �������� ��������� ������� SQL
  //              � ������� ����� ���� ��������� ����������, ��������
  //              ���� ��������
  //                  PROJECT_DATE = :P_DATE    -
  //              ��� ���������
  //                  PROJECT_DATE BETWEEN :P_DATE_01 AND :P_DATE_02
  //              ��������� ����������
  //                  PROJECT_DATE IN (:P_DATE_01, :P_DATE_02, :P_DATE_03)
  //----------------------------------------------------------------------------
  TValue = class(TPersistent)
  private
    FOwner: TPersistent;
    FValue: string;
    FValueType: TValueType;
    FDisplayFormat: string;
    function GetAsDateTime: TDateTime; virtual;
    function GetAsFloat: Double; virtual;
    function GetAsString: string; virtual;
    function GetAsVariant: Variant; virtual;
    procedure SetAsDateTime(const Value: TDateTime); virtual;
    procedure SetAsFloat(const Value: Double); virtual;
    procedure SetAsString(const Value: string); virtual;
    procedure SetAsVariant(const Value: Variant); virtual;
    procedure SetValueType(const Value: TValueType);
    function GetDisplayValue: string;
    function GetSQLValue: string;
    function GetDisplayText: string;
  protected
    procedure AssignTo(Dest: TPersistent); override;
    function  GetOwner: TPersistent; override;
  public
    constructor Create(AOwner: TPersistent);
    //
    procedure CopyFieldValue(const AFieldName: string; const AMain, AList: TDataSet);
    //
    property Value: string read GetAsString write SetAsString;
    property AsDateTime: TDateTime read GetAsDateTime write SetAsDateTime;
    property AsFloat: Double read GetAsFloat write SetAsFloat;
    property AsVariant: Variant read GetAsVariant write SetAsVariant;
    property ValueType: TValueType read FValueType write SetValueType;
    //
    property DisplayFormat: string read FDisplayFormat write FDisplayFormat;
    property DisplayText: string read GetDisplayText;
    //
    property SQLValue: string read GetSQLValue;
    property DisplayValue: string read GetDisplayValue;
  end;

  //----------------------------------------------------------------------------
  // ����������:  ������ �������� ������� �������� ��� TValue
  //----------------------------------------------------------------------------
  TValueItem = class(TCollectionItem)
  private
    FKeyValue: TValue;
    FListValue: TValue;
    procedure SetKeyValue(const Value: TValue);
    procedure SetListValue(const Value: TValue);
  protected
    procedure AssignTo(Dest: TPersistent); override;
  public
    constructor Create(Collection: TCollection); override;
    //
    property KeyValue: TValue read FKeyValue write SetKeyValue;
    property ListValue: TValue read FKeyValue write SetListValue;
  end;

  //----------------------------------------------------------------------------
  // ����������:  ������ ������ ���������� �������
  //----------------------------------------------------------------------------
  TValueItems = class(TCollection)
  private
    FOwner: TPersistent;
    function GetDisplayValues: string;
  protected
    function GetOwner: TPersistent; override;
    function GetItem(Index: Integer): TValueItem;
    procedure SetItem(Index: Integer; const Value: TValueItem);
  public
    constructor Create(Owner: TPersistent);
    function Add: TValueItem;
    property Items[Index: Integer]: TValueItem read GetItem write SetItem; default;
    property DisplayValues: string read GetDisplayValues;
  end;

  //----------------------------------------------------------------------------
  // ����������:  ������ ���� �������
  //              ����� ���������� ������� ���� SQL ����
  //                  PROJECT_ID = 123    
  //                  PROJECT_ID IN (123, 124, 125)
  //                  � �.�.
  //----------------------------------------------------------------------------
  TCondition = class(TCollectionItem)
  private
    FKeyName: string;
    FListName: string;
    FDisplayName: string;
    FCondition: TDisplayCondition;
    FValueItems: TValueItems;
    FReplace: string;
    FAdded: Boolean;
    procedure SetListName(const Value: string);
    procedure SetCondition(const Value: TDisplayCondition);
    function GetArgCount: Integer;
    function GetConditions: TConditions;
    procedure SetDisplayNameProp(const Value: string);
    function GetDisplayValuee: string;
  protected
    procedure AssignTo(Dest: TPersistent); override;
  public
    constructor Create(Collection: TCollection); override;
   //
    function BuildSQL: string;
    //
    property KeyName: string read FKeyName;
    property ListName: string read FListName write SetListName;
    property DisplayName: string read FDisplayName write SetDisplayNameProp;
    property Condition: TDisplayCondition read FCondition write SetCondition;
    property ArgCount: Integer read GetArgCount;
    property Added: Boolean read FAdded write FAdded;
    property Conditions: TConditions read GetConditions;
    property ValueItems: TValueItems read FValueItems write FValueItems;
    property DisplayValue: string read GetDisplayValuee;
    property Replace: string read FReplace;
  published
  end;

  //----------------------------------------------------------------------------
  // ����������:  ������ �������
  //              ����� ���������� ������� ����� SQL ����
  //              (FieldName1 = 1)
  //              AND
  //             ((FieldName2 = 1) OR (FieldName2 = 2) OR (FieldName2 = 3))
  //----------------------------------------------------------------------------
  TConditions = class(TCollection)
  private
    FOwner: TVirtualDataSet;
  protected
    function GetOwner: TPersistent; override;
    function GetItem(Index: Integer): TCondition;
    procedure SetItem(Index: Integer; const Value: TCondition);
    procedure Update(Item: TCollectionItem); override;
    function BuildSQLForField(const AKeyName: string): string;
  public
    constructor Create(Owner: TVirtualDataSet);
    //
    function BuildSQL: string;
    //
    function Add: TCondition;
    function IsFiltered(AFieldName: string): Boolean;
    procedure ClearFor(AListName: string);
    // �������� ������ ��� �����
    procedure AddNumbFilter(const AFieldName: string; const ACondition: TDisplayCondition; AValue: Double);
    // �������� ������ ��� ��� �����
    procedure AddStrFilter(const AFieldName: string; const ACondition: TDisplayCondition; AValue: string);
    // �������� ������ ��� ���
    procedure AddDateFilter(const AFieldName: string; const ACondition: TDisplayCondition; AValue: TDateTime);
    //
    //dc01    '�����'		��� �����
    procedure AddFilter01(const AFieldName: string; AValue: Double);
    //dc02    '����� (�����)'	��� �����
    procedure AddFilter02(const AFieldName: string; AValue: string);
    //dc04    '������ ���'	��� �����
    procedure AddFilter04(const AFieldName: string; AValue: Double);
    //dc06    '��������'	��� �����
    procedure AddLikeFilter(const AFieldName: string; AValue: string);
    //dc08    '�����'
    procedure AddIsNullFilter(const AFieldName: string);
    //dc21    '�����'           ��� ���
    procedure AddDateEqualFilter(const AFieldName: string; AValue: TDateTime);
    // dc27   '������ ��� �����'        ��� ���
    procedure AddDateEqualOrMore(const AFieldName: string; AValue: TDateTime);
    // dc28   '������ ��� �����'        ��� ���
    procedure AddDateEqualOrLess(const AFieldName: string; AValue: TDateTime);
    // dc23   '�����'           ��� ���
    procedure AddDateBetweenFilter(const AFieldName: string; AValue1, AValue2: TDateTime);

    procedure AddNumBetweenFilter(const AFieldName: string; AValue1, AValue2: Double);
    procedure AddNumOrNullFilter(const AFieldName: string; AValue: Double);
    procedure AddNumInFilter(const AFieldName: string; AFloatArray: TFloatArray);
    //
    procedure AddStrOrNullFilter(const AFieldName: string; AValue: string);
    procedure AddStrInFilter(const AFieldName: string; AStringArray: TStrArray);
    procedure AddStrInFilterA(const AFieldName: string; AStrings: TStrings);
    //
    property Items[Index: Integer]: TCondition read GetItem write SetItem; default;
  end;

  TOnIndexChanged = procedure (Item: TIndex) of object;

  TOnConditionChanged = procedure (Item: TCondition) of object;

  TVirtualDataSet = class(TComponent)
  private
    FEnabled: Boolean;
    FDesignMode: Boolean;
    FDataSetCaptured: Boolean;
    FDataSet: TDataSet;
    FIndexes: TIndexes;
    FConditions: TConditions;
    FLookUpField: TStrings;               // ������ ����� � ������� KeyFieldName=ListFieldName
    FBeforeOpen: TDataSetNotifyEvent;
    FOnIndexChanged: TOnIndexChanged;
    FOnConditionChanged: TOnConditionChanged;
    FOptimizerHint: String;
    procedure SetDataSet(const Value: TDataSet);
    function GetSQL: TStrings;
    procedure SetSQL(const Value: TStrings);
    procedure DoBeforeOpen(DataSet: TDataSet);
    procedure CaptureDataSet;
    procedure ReleaseDataSet;
    //
  protected
    FOldSQL: TStrings;
    procedure SetEnabled(const Value: Boolean); virtual;
    procedure PrepareForClientSQL;
    procedure Notification(AComponent: TComponent; Operation: TOperation); override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    //
    function FindKeyFieldName(const AListFieldName: string): string;
    procedure PrepareSQL; virtual;
    procedure Refresh; virtual;
    //
    //
    procedure SetStrFilter(const AFieldName, AValue: string); virtual;
    // ������� �� �������� �������
    // ����� TDisplayCondition ���� ��������
    //dc01,  // '�����'
    //dc03,  // '�� �����'
    //dc04,  // '������ ���'
    //dc27,  // '������ ��� ����� ���'
    //dc05,  // '������ ���'
    //dc28,  // '������ ��� ����� ���'
    //dc07,  // '�����'
    //dc09,  // '�� �����'
    //dc24   // '������'    (��� �����)
    //----------------------------------------------
    //dc01    '�����'
    procedure SetNumbEqualFilter(const AFieldName: string; AValue: Double; AReplace: string = '');
    //dc02    '������ ��� �����'
    procedure SetNumbFilter02(const AFieldName: string; AValue: Double); virtual;
    // '�� �����'
    procedure SetNumb03Filter(const AFieldName: string; AValue: Double); virtual;
    // '������ ������'
    procedure SetNumbFilter04(const AFieldName: string; AValue: Double); virtual;
    //
    procedure SetNumbBetweenFilter(const AFieldName: string; AValueStart: Double; AValueEnd: Double); virtual;
    //dc24 '� ������ �����'
    procedure SetNumbInFilter(const AFieldName: string; AValues: TFloatArray; AReplace: string = ''); virtual;
    //
//    procedure Set24Filter(const AFieldName: string; AFloatArray: TFloatArray); virtual;
    // '�����' ��� ������
    procedure SetStrEqualFilter(const AFieldName: string; AValue: string; AReplace: string = '');
    // IN ('A', 'B', ...)
    procedure SetStrInFilter(const AFieldName: string; AValues: TStrings; AReplace: string = '');
    // BETWEEN A AND B
    procedure SetDateBetweenFilter(const AFieldName: string; AValueStart, AValueEnd: TDateTime);
    //
    property DataSet: TDataSet read FDataSet write SetDataSet;
    property SQL: TStrings read GetSQL write SetSQL;
    property OldSQL: TStrings read FOldSQL write FOldSQL;
    property Indexes: TIndexes read FIndexes write FIndexes;
    property Conditions: TConditions read FConditions write FConditions;
    property LookUpField: TStrings read FLookUpField write FLookUpField;
    property Enabled: Boolean read FEnabled write SetEnabled;
    property DesignMode: Boolean read FDesignMode write FDesignMode;
    property OnIndexChanged: TOnIndexChanged read FOnIndexChanged write FOnIndexChanged;
    property OnConditionChanged: TOnConditionChanged read FOnConditionChanged write FOnConditionChanged;
    property OptimizerHint: String read FOptimizerHint write FOptimizerHint;
  end;

var
  DataSetFactory: TDataSetFactory;

implementation

uses Math, ComObj, menus, TypInfo, Imglist{, frmFilterList}, untMessages;

const
  ITEM_NOT_FOUND = - 1;                         // ������ �� ������
  MIN_COLUMN_WIDTH = 20;                        //
  SQL_PROP_NAME = 'SQL';                        // �������� �������� SQL
  SQL_SORT: array[TSortType] of string = ('ASC', 'DESC');

  SQL_OR = ' %s OR %s ';

  SQL_COMMA = ' %s , %s ';

  SQL_FIELD_IN_SELECT =
   '(%s IN ( SELECT %s  ' + #13#10 +
   '           FROM (%s)' + #13#10 +
   '          WHERE %s ))';

const
  SColumnNotInit = '������! �������� TDBGridColumns �� ����������������!';
  SColNotFound = '������! ������� � �������� %d �� �������!';
  SInvalidFirst = '';
  SInvalidLast = '';

  SInvalidDataSet = '������! � ������� DataSet �� ������� �������� SQL: TStrings!';
  SFieldIsNil = '������! �������� Column.Field = nil!';
  SFieldKind = '������! �������� Field.FieldKind <> fkData!';
  SDataSetNil = '������! �������� DataSet = nil!';
  SDataSetNotActive = '������! DataSet �� ������ ���� �������!';
  SInvalidFactory = '������! �������� ����� TFactoryDataSet!';
  SFactoryNotInit = '������! �� ��������������� ����� TFactoryDataSet!';

{ TDataSetFactory }

class procedure TDataSetFactory.BuildDataSetFactory(
  const ADataSetFactoryClass: TDataSetFactoryClass);
begin
  if Assigned(DataSetFactory) then Exit; 

  DataSetFactory := ADataSetFactoryClass.Create(nil);

  unt001_Filter.DataSetFactory := ADataSetFactoryClass.Create(nil);
end;

procedure TDataSetFactory.CloneDataSet(const AFrom, ATo: TDataSet);
begin
  // �������� �������� �� AFrom � ATo
  // ��������� ������� �������� �� ������� ��� ������ ADataSet
  if not (AFrom is GetDataSetClass) or
     not (ATo is GetDataSetClass) then
  begin
    TDataSetFactoryErr.Error(SInvalidFactory);
  end;
end;

class procedure TDataSetFactory.DestroyDataSetFactory;
begin
  if Assigned(DataSetFactory) then
  begin
    FreeAndNil(DataSetFactory);
  end;
end;

{ TIndex }

procedure TIndex.AssignTo(Dest: TPersistent);
begin
  if Dest is TIndex then
  begin
    with TIndex(Dest) do
    begin
      FFieldName := Self.FFieldName;
      FSortType := Self.FSortType;
      Changed(False);
    end;
  end else
  begin
    inherited AssignTo(Dest);
  end;
end;

constructor TIndex.Create(Collection: TCollection);
begin
  inherited Create(Collection);
  FSortType := stAsc;
end;

procedure TIndex.SetFieldName(const Value: string);
begin
  (*
  // ��������
  if not Assigned(Value) then
  begin
    TxxxDBGridErr.Error(SFieldIsNil);
  end;

  // ��������
  if not (Value.FieldKind = fkData) then
  begin
    TxxxDBGridErr.Error(SFieldKind);
  end;
  *)

  if FFieldName <> Value then
  begin
    FFieldName := Value;
    Changed(False);
  end;
end;

procedure TIndex.SetSortType(const Value: TSortType);
begin
  if FSortType <> Value then
  begin
    FSortType := Value;
    Changed(False);
  end;
end;

{ TIndexes }

function TIndexes.Add: TIndex;
begin
  Result := TIndex(inherited Add);
end;

function TIndexes.BuildSQL: string;
var
  I: Integer;
begin
  // ���������� ������ ����
  // 'FieldName1 ASC, FieldName2 DEC, FieldName3 ASC'
  Result := '';
  for I := 0 to Count - 1 do
  begin
    if Result <> '' then Result := Concat(Result, ', ');
    Result := Format('%s %s %s' , [
      Result,
      Items[I].FieldName,
      SQL_SORT[Items[I].SortType]
      ]);
  end;
end;

constructor TIndexes.Create(Owner: TVirtualDataSet);
begin
  inherited Create(TIndex);
  FOwner := Owner;
end;

function TIndexes.GetItem(Index: Integer): TIndex;
begin
  Result := TIndex(inherited Items[Index]);
end;

function TIndexes.GetOwner: TPersistent;
begin
  Result := FOwner;
end;

function TIndexes.IndexOf(AFieldName: string): TIndex;
var
  I: Integer;
begin
  // ��������� ���������� ���� ��� ���������� nil
  Result := nil;
  for I := 0 to Count - 1 do
  begin
    // ����������
    if Items[I].FieldName <> AFieldName then Continue;

    // �����
    Result := Items[I];
    Exit;
  end;
end;

procedure TIndexes.MoveDown(const AIndex: TIndex);
begin
  if AIndex.Index = Count - 1 then Exit;
  AIndex.Index := AIndex.Index + 1;  
end;

procedure TIndexes.MoveUp(const AIndex: TIndex);
begin
  if AIndex.Index = 0 then Exit;
  AIndex.Index := AIndex.Index - 1;
end;

procedure TIndexes.SetItem(Index: Integer; const Value: TIndex);
begin
  Items[Index].Assign(Value);
end;

procedure TIndexes.Update(Item: TCollectionItem);
begin
  if Assigned(FOwner.OnIndexChanged) then
  begin
    FOwner.OnIndexChanged(TIndex(Item));
  end;
end;

function GetTypeForField(
  const AField: TField): TValueType;
begin
  // ���������� ��� ������� � ����������� �� ����
  case AField.DataType of
    ftFloat, ftSmallint, ftInteger, ftWord, ftBytes, ftVarBytes, ftAutoInc:
      begin
        Result := vtNumber;
      end;
    ftDate, ftTime, ftDateTime:
      begin
        Result := vtDate;
      end;
    else
      begin
        Result := vtString;
      end;
  end;
end;

{ TCondition }

procedure TCondition.AssignTo(Dest: TPersistent);
begin
  if Dest is TCondition then
  begin
    with TCondition(Dest) do
    begin
      FKeyName := Self.FKeyName;
      FListName := Self.FListName;
      FDisplayName := Self.FDisplayName;
      FCondition := Self.FCondition;
      FAdded := Self.FAdded;
      FValueItems.Assign(Self.FValueItems);
      Changed(False);
    end;
  end else
    inherited AssignTo(Dest);
end;

constructor TCondition.Create(Collection: TCollection);
begin
  inherited Create(Collection);
  FAdded := False;
  FValueItems := TValueItems.Create(Self);
  FReplace := '';
end;

function TCondition.BuildSQL: string;
var
  i, VCount: Integer;
  VStr: string;
begin
  // �������� ����� SQL �������
  Result := SQL_CONDITION_TEXT[LINKED[Condition]];
  VCount := ARG_COUNT[LINKED[Condition]];
  if VCount = 0 then
    begin
    // ��� ��������
    Result := Format(Result, [FKeyName]);
    end
  else if VCount = 2 then
    begin
    // 2 �������� � �������
    Result := Format(Result, [
      FKeyName,
      ValueItems[0].KeyValue.SQLValue,
      ValueItems[1].KeyValue.SQLValue]);
    end
  else
    begin
    // ��� 1 ��� ����� ������ �����
    if ValueItems.Count = 0 then
      // ���� ������ ���
      VStr := 'NULL'
    else
      begin
      VStr := '';
      for i := 0 to ValueItems.Count - 1 do
	begin
	if VStr <> '' then VStr := Concat(VStr, ', ');
	VStr := Concat(VStr, ValueItems[I].KeyValue.SQLValue);
	end;
      end;
      Result := Format(Result, [FKeyName, VStr]);
  end;
end;

function TCondition.GetArgCount: Integer;
begin
  // ���� ��������� ������� ����������� ������������� �� ���������� 0
  if not (Condition in AGV_CONDITION) then
  begin
    Result := ARG_COUNT[LINKED[FCondition]];
  end else
  begin
    Result := 0;
  end;
end;

function TCondition.GetConditions: TConditions;
begin
  Result := TConditions(Collection);
end;

(*
function TCondition.GetValue(Index: Integer): Variant;

  function GetValueForLike(const AValue: string): string;
  var
    I: Integer;
  begin
    Result := AValue;

    // ������� �������
    Result := Trim(Result);

    // ������� ������ ������� � �������� ������
    for I := 1 to Length(Result) - 1 do
    begin
      if Result[I] <> ' ' then Continue;
      while Result[I + 1] = ' ' do Delete(Result, I + 1, 1);
    end;
    while Pos(' ', Result) > 0 do Result[Pos(' ', Result)] := '%';
    Result := Concat('%', Result, '%');
  end;

  function QueryFormatDate(const AValue: Variant): string;
  const
    MASK = 'DD.MM.YYYY';
  begin
    Result := Format('TO_DATE(''%s'', ''%s'')', [
      FormatDateTime(MASK, VarToDateTime(AValue)),
      MASK
      ]);
  end;

var
  VDateFunc: TDateFunc;
begin
  (*
//  if FFilterType = vtDate then
  begin
    // ��������� ��������
    VDateFunc := CALC_VAL_FUNC[FCondition, Index];
    if Assigned(VDateFunc) then
    begin
      DisplayValues[Index] := VDateFunc;
    end;

    // ���������� �������� ����
    Result := QueryFormatDate(DisplayValues[Index]);
  end ;//else
  begin
    Result := DisplayValues[Index];
  end;

  // ��������� ���� ������� LIKE �� ������ �������� ��������� ������� %
  case LINKED[FCondition] of
    sc07, sc11: Result := GetValueForLike(Result);
  end;

end;
*)

procedure TCondition.SetCondition(const Value: TDisplayCondition);
begin
  if FCondition <> Value then
  begin
    FCondition := Value;
    Changed(False);
  end;
end;

procedure TCondition.SetDisplayNameProp(const Value: string);
begin
  if FDisplayName <> Value then
  begin
    FDisplayName := Value;
    Changed(False);
  end;
end;

procedure TCondition.SetListName(const Value: string);
//var
//  VName: string;
begin
  if FListName = Value then Exit;

  FListName := Value;

  FKeyName := TConditions(Collection).FOwner.FindKeyFieldName(FListName);

  Changed(False);
end;

function TCondition.GetDisplayValuee: string;
begin
  Result := FValueItems.DisplayValues;
end;

{ TConditions }

function TConditions.Add: TCondition;
begin
  Result := TCondition(inherited Add);
end;

function TConditions.BuildSQLForField(const AKeyName: string): string;
var
  I, VConditionCount: Integer;
  VConditionSql: string;
begin
  // ���������� ������ ����
  // (FieldName = 1) OR (FieldName = 1) OR (FieldName = 1)
  // �.�. ������� �� ���� �� ��������� � ���� ���� OR
  Result := '';
  VConditionSql := '';
  VConditionCount := 0;
  for I := 0 to Count - 1 do
  begin
    if (Items[I].Added) or (Items[I].KeyName <> AKeyName) then Continue;

    Items[I].Added := True;

    // ����������� ������� ������� ��� ������� ����
    Inc(VConditionCount);

    // ��������� ������� � ������� I
    VConditionSql := Items[I].BuildSQL;
    if Result = '' then
    begin
      Result := VConditionSql;
    end else
    begin
      Result := Format(SQL_OR, [Result, VConditionSql]);
    end;
  end;

  // ���� ������� ������ 1 �� ��������� ������
  if VConditionCount > 1 then
  begin
    Result := Format('(%s)', [Result]);
  end;
end;

function TConditions.BuildSQL: string;
const
 SQL_AND =
    ' %s ' + #13#10 +
    ' AND %s ';
var
  I: Integer;
  VFieldSql: string;
begin
  // ������� �����
  for I := 0 to Count - 1 do
  begin
    Items[I].Added := False;
  end;

  // ���������� ������ ����
  // AND ((FieldName1 = 1) OR (FieldName1 = 1) OR (FieldName1 = 1))
  // AND ((FieldName2 = 1) OR (FieldName2 = 1) OR (FieldName2 = 1))
  Result := '';
  VFieldSql := '';
  for I := 0 to Count - 1 do
    begin
    // ���� ������� ��� �������� �� ����������
    if Items[I].Added then Continue;
    // ���� ������� - ���������� ������ �� ����������
    if Items[I].FReplace <> '' then Continue;

    // �.�. ������� �� ���� �� ��������� � ���� ���� OR
    VFieldSql := BuildSQLForField(Items[I].KeyName);
    if Result = '' then
      begin
      Result := VFieldSql;
      end
    else
      begin
      Result := Format(SQL_AND, [Result, VFieldSql]);
      end;
  end;
end;

procedure TConditions.ClearFor(AListName: string);
var
  I: Integer;
begin
  // ������� ��� ������� ��� ���� AField
  for I := Count - 1 downto 0 do
  begin
    // ����������
    if Items[I].ListName <> AListName then Continue;

    // ����� � �������
    Delete(Items[I].Index);
  end;
end;

constructor TConditions.Create(Owner: TVirtualDataSet);
begin
  inherited Create(TCondition);
  FOwner := Owner;
end;

function TConditions.IsFiltered(AFieldName: string): Boolean;
var
  I: Integer;
begin
  // ��������� ���������� ���� ��� ���������� nil
  Result := False;

  for I := 0 to count - 1 do
  begin
    // ����������
    if Items[I].ListName <> AFieldName then Continue;

    // �����
    Result := True;
    Exit;
  end;
end;

function TConditions.GetItem(Index: Integer): TCondition;
begin
  Result := TCondition(inherited Items[Index]);
end;

function TConditions.GetOwner: TPersistent;
begin
  Result := FOwner;
end;

procedure TConditions.SetItem(Index: Integer; const Value: TCondition);
begin
  Items[Index].Assign(Value);
end;

procedure TConditions.Update(Item: TCollectionItem);
begin
  if Assigned(FOwner.OnConditionChanged) then
  begin
    FOwner.OnConditionChanged(TCondition(Item));
  end;
end;

procedure TConditions.AddIsNullFilter(const AFieldName: string);
var
  VField: TField;
  VCondition: TCondition;
begin
  VField := FOwner.FDataSet.FieldByName(AFieldName);

  VCondition := Add;
  VCondition.DisplayName := VField.DisplayName;
  VCondition.ListName := AFieldName;
  VCondition.Condition := dc08;
end;

procedure TConditions.AddNumbFilter(const AFieldName: string;
  const ACondition: TDisplayCondition; AValue: Double);
var
  VField: TField;
  VDisplayName: string;
  VCondition: TCondition;
  VValue: TValueItem;
begin
  // ���������� DisplayName
  VField := FOwner.FDataSet.FindField(AFieldName);
  if VField = nil then
    VDisplayName := AFieldName
  else
    VDisplayName := VField.DisplayName;

  VCondition := Add;
  VCondition.DisplayName := VDisplayName;
  VCondition.ListName := AFieldName;
  VCondition.Condition := ACondition;

  VValue := VCondition.ValueItems.Add;
  VValue.KeyValue.ValueType := vtNumber;
  VValue.KeyValue.AsFloat := AValue;
  VValue.ListValue.ValueType := vtNumber;
  VValue.ListValue.AsFloat := AValue;
end;

procedure TConditions.AddStrFilter(const AFieldName: string;
  const ACondition: TDisplayCondition; AValue: string);
var
  VField: TField;
  VDisplayName: string;
  VCondition: TCondition;
  VValue: TValueItem;
begin
  // ���������� DisplayName
  VField := FOwner.FDataSet.FindField(AFieldName);
  if VField = nil then
    VDisplayName := AFieldName
  else
    VDisplayName := VField.DisplayName;

  VCondition := Add;
  VCondition.DisplayName := VDisplayName;
  VCondition.ListName := AFieldName;
  VCondition.Condition := ACondition;

  VValue := VCondition.ValueItems.Add;
  VValue.KeyValue.ValueType := vtString;
  VValue.KeyValue.Value := AValue;
  VValue.ListValue.ValueType := vtString;
  VValue.ListValue.Value := AValue;
end;

procedure TConditions.AddFilter01(const AFieldName: string;
  AValue: Double);
begin
  AddNumbFilter(AFieldName, dc01, AValue);
end;

procedure TConditions.AddFilter02(const AFieldName: string;
  AValue: string);
begin
  AddStrFilter(AFieldName, dc02, AValue);
end;

procedure TConditions.AddLikeFilter(const AFieldName: string;
  AValue: string);
begin
  AddStrFilter(AFieldName, dc06, AValue);
end;

procedure TConditions.AddNumBetweenFilter(const AFieldName: string;
  AValue1, AValue2: Double);
var
  VField: TField;
  VCondition: TCondition;
  VValue: TValueItem;
begin
  VField := FOwner.FDataSet.FieldByName(AFieldName);

  VCondition := Add;
  VCondition.DisplayName := VField.DisplayName;
  VCondition.ListName := AFieldName;
  VCondition.Condition := dc07;

  VValue := VCondition.ValueItems.Add;
  VValue.KeyValue.ValueType := vtNumber;
  VValue.KeyValue.AsFloat := AValue1;
  VValue.ListValue.ValueType := vtNumber;
  VValue.ListValue.AsFloat := AValue1;

  VValue := VCondition.ValueItems.Add;
  VValue.KeyValue.ValueType := vtNumber;
  VValue.KeyValue.AsFloat := AValue2;
  VValue.ListValue.ValueType := vtNumber;
  VValue.ListValue.AsFloat := AValue2;
end;

procedure TConditions.AddNumOrNullFilter(const AFieldName: string;
  AValue: Double);
var
  VField: TField;
  VCondition: TCondition;
  VValue: TValueItem;
begin
  // ���������� Field
  VField := FOwner.FDataSet.FieldByName(AFieldName);

  VCondition := Add;
  VCondition.DisplayName := VField.DisplayName;
  VCondition.ListName := AFieldName;
  VCondition.Condition := dc29;

  VValue := VCondition.ValueItems.Add;
  VValue.KeyValue.ValueType := vtNumber;
  VValue.KeyValue.AsFloat := AValue;
  VValue.ListValue.ValueType := vtNumber;
  VValue.ListValue.AsFloat := AValue;

  VValue := VCondition.ValueItems.Add;
  VValue.KeyValue.ValueType := vtNumber;
  VValue.KeyValue.AsFloat := AValue;
  VValue.ListValue.ValueType := vtNumber;
  VValue.ListValue.AsFloat := AValue;
end;

procedure TConditions.AddStrOrNullFilter(const AFieldName: string;
  AValue: string);
var
  VField: TField;
  VCondition: TCondition;
  VValue: TValueItem;
begin
  // ���������� Field
  VField := FOwner.FDataSet.FieldByName(AFieldName);

  VCondition := Add;
  VCondition.DisplayName := VField.DisplayName;
  VCondition.ListName := AFieldName;
  VCondition.Condition := dc29;

  VValue := VCondition.ValueItems.Add;
  VValue.KeyValue.ValueType := vtString;
  VValue.KeyValue.Value := AValue;
  VValue.ListValue.ValueType := vtString;
  VValue.ListValue.Value := AValue;

  VValue := VCondition.ValueItems.Add;
  VValue.KeyValue.ValueType := vtString;
  VValue.KeyValue.Value := AValue;
  VValue.ListValue.ValueType := vtString;
  VValue.ListValue.Value := AValue;
end;

procedure TConditions.AddNumInFilter(const AFieldName: string;
  AFloatArray: TFloatArray);
var
  VField: TField;
  VDisplayName: string;
  VCondition: TCondition;
  VValue: TValueItem;
  i: Integer;
begin
  // ���������� DisplayName
  VField := FOwner.FDataSet.FindField(AFieldName);
  if VField = nil then
    VDisplayName := AFieldName
  else
    VDisplayName := VField.DisplayName;

  // ��������� �������
  VCondition := Add;
  VCondition.DisplayName := VDisplayName;
  VCondition.ListName := AFieldName;
  VCondition.Condition := dc24;

  // ��������� ��������
  for i := Low(AFloatArray) to High(AFloatArray) do
    begin
    VValue := VCondition.ValueItems.Add;
    VValue.KeyValue.ValueType := vtNumber;
    VValue.KeyValue.AsFloat := AFloatArray[i];
    VValue.ListValue.ValueType := vtNumber;
    VValue.ListValue.AsFloat := AFloatArray[i];
    end;
end;

procedure TConditions.AddStrInFilter(const AFieldName: string;
  AStringArray: TStrArray);
var
  VField: TField;
  VDisplayName: string;
  VCondition: TCondition;
  VValue: TValueItem;
  i: Integer;
begin
  // ���������� DisplayName
  VField := FOwner.FDataSet.FindField(AFieldName);
  if VField = nil then
    VDisplayName := AFieldName
  else
    VDisplayName := VField.DisplayName;

  // ��������� �������
  VCondition := Add;
  VCondition.DisplayName := VDisplayName;
  VCondition.ListName := AFieldName;
  VCondition.Condition := dc26;

  // ��������� ��������
  for i := Low(AStringArray) to High(AStringArray) do
    begin
    VValue := VCondition.ValueItems.Add;
    VValue.KeyValue.ValueType := vtString;
    VValue.KeyValue.Value := AStringArray[i];
    VValue.ListValue.ValueType := vtString;
    VValue.ListValue.Value := AStringArray[i];
    end;
end;

procedure TConditions.AddStrInFilterA(const AFieldName: string;
  AStrings: TStrings);
var
  VField: TField;
  VDisplayName: string;
  VCondition: TCondition;
  VValue: TValueItem;
  i: Integer;
begin
  // ���������� DisplayName
  VField := FOwner.FDataSet.FindField(AFieldName);
  if VField = nil then
    VDisplayName := AFieldName
  else
    VDisplayName := VField.DisplayName;

  // ��������� �������
  VCondition := Add;
  VCondition.DisplayName := VDisplayName;
  VCondition.ListName := AFieldName;
  VCondition.Condition := dc26;

  // ��������� ��������
  for i := 0 to AStrings.Count-1 do
    begin
    VValue := VCondition.ValueItems.Add;
    VValue.KeyValue.ValueType := vtString;
    VValue.KeyValue.Value := AStrings[i];
    VValue.ListValue.ValueType := vtString;
    VValue.ListValue.Value := AStrings[i];
    end;
end;

procedure TConditions.AddFilter04(const AFieldName: string;
  AValue: Double);
begin
  AddNumbFilter(AFieldName, dc04, AValue);
end;

procedure TConditions.AddDateEqualFilter(const AFieldName: string;
  AValue: TDateTime);
begin
  AddDateFilter(AFieldName, dc21, AValue);
end;

procedure TConditions.AddDateFilter(const AFieldName: string;
  const ACondition: TDisplayCondition; AValue: TDateTime);
var
  VField: TField;
  VDisplayName: string;
  VCondition: TCondition;
  VValue: TValueItem;
begin
  // ���������� DisplayName
  VField := FOwner.FDataSet.FindField(AFieldName);
  if VField = nil then
    VDisplayName := AFieldName
  else
    VDisplayName := VField.DisplayName;

  VCondition := Add;
  VCondition.DisplayName := VDisplayName;
  VCondition.ListName := AFieldName;
  VCondition.Condition := ACondition;

  VValue := VCondition.ValueItems.Add;
  VValue.KeyValue.ValueType := vtDate;
  VValue.KeyValue.AsDateTime := AValue;
  VValue.ListValue.ValueType := vtDate;
  VValue.ListValue.AsDateTime := AValue;
end;

procedure TConditions.AddDateBetweenFilter(const AFieldName: string;
  AValue1, AValue2: TDateTime);
var
  VField: TField;
  VDisplayName: string;
  VCondition: TCondition;
  VValue: TValueItem;
begin
  // ���������� DisplayName
  VField := FOwner.FDataSet.FindField(AFieldName);
  if VField = nil then
    VDisplayName := AFieldName
  else
    VDisplayName := VField.DisplayName;

  VCondition := Add;
  VCondition.DisplayName := VDisplayName;
  VCondition.ListName := AFieldName;
  VCondition.Condition := dc23;

  VValue := VCondition.ValueItems.Add;
  VValue.KeyValue.ValueType := vtDate;
  VValue.KeyValue.AsDateTime := AValue1;
  VValue.ListValue.ValueType := vtDate;
  VValue.ListValue.AsDateTime := AValue1;

  VValue := VCondition.ValueItems.Add;
  VValue.KeyValue.ValueType := vtDate;
  VValue.KeyValue.AsDateTime := AValue2;
  VValue.ListValue.ValueType := vtDate;
  VValue.ListValue.AsDateTime := AValue2;
 end;

procedure TConditions.AddDateEqualOrMore(const AFieldName: string;
  AValue: TDateTime);
var
  VField: TField;
  VDisplayName: string;
  VCondition: TCondition;
  VValue: TValueItem;
begin
  // ���������� DisplayName
  VField := FOwner.FDataSet.FindField(AFieldName);
  if VField = nil then
    VDisplayName := AFieldName
  else
    VDisplayName := VField.DisplayName;

  VCondition := Add;
  VCondition.DisplayName := VDisplayName;
  VCondition.ListName := AFieldName;
  VCondition.Condition := dc27;

  VValue := VCondition.ValueItems.Add;
  VValue.KeyValue.ValueType := vtDate;
  VValue.KeyValue.AsDateTime := AValue;
  VValue.ListValue.ValueType := vtDate;
  VValue.ListValue.AsDateTime := AValue;
end;

procedure TConditions.AddDateEqualOrLess(const AFieldName: string;
  AValue: TDateTime);
var
  VField: TField;
  VDisplayName: string;
  VCondition: TCondition;
  VValue: TValueItem;
begin
  // ���������� DisplayName
  VField := FOwner.FDataSet.FindField(AFieldName);
  if VField = nil then
    VDisplayName := AFieldName
  else
    VDisplayName := VField.DisplayName;

  VCondition := Add;
  VCondition.DisplayName := VDisplayName;
  VCondition.ListName := AFieldName;
  VCondition.Condition := dc28;

  VValue := VCondition.ValueItems.Add;
  VValue.KeyValue.ValueType := vtDate;
  VValue.KeyValue.AsDateTime := AValue;
  VValue.ListValue.ValueType := vtDate;
  VValue.ListValue.AsDateTime := AValue;
end;

{ TVirtualDataSet }

procedure TVirtualDataSet.CaptureDataSet;
begin
  if not Assigned(DataSet) or FDataSetCaptured then Exit;

  (*
  if not Assigned(DataSet) then
  begin
    TxxxDBGridErr.Error(SDataSetNil);
  end;
  *)

  // ��������� �������� �������� � ����������� ���� ���������� � BeforeOpen
  FBeforeOpen := DataSet.BeforeOpen;
  DataSet.BeforeOpen := DoBeforeOpen;
  FOldSQL.Text := SQL.Text;

  FDataSetCaptured := True;
end;

constructor TVirtualDataSet.Create(AOwner: TComponent);
const
  START_TEXT = '������� ����� ����� � ������� KeyFieldName=ListFieldName';
begin
  inherited Create(AOwner);
  FOldSQL := TStringList.Create;                                          // �������� SQL
  FIndexes := TIndexes.Create(Self);
  FConditions := TConditions.Create(Self);
  FDataSetCaptured := False;
  FLookUpField := TStringList.Create;
  FLookUpField.Text := START_TEXT;
end;

destructor TVirtualDataSet.Destroy;
begin
  FLookUpField.Free;
  FOldSQL.Free;
  inherited Destroy;
end;

procedure TVirtualDataSet.DoBeforeOpen(DataSet: TDataSet);
begin
  if not Enabled then Exit;

  PrepareSQL;

  if FDesignMode then showmessage(Sql.Text);

  if Assigned(FBeforeOpen) then FBeforeOpen(DataSet);
end;

function TVirtualDataSet.FindKeyFieldName(
  const AListFieldName: string): string;
begin
  Result := FLookUpField.Values[AListFieldName];
  if Result = '' then Result := AListFieldName;
end;

function TVirtualDataSet.GetSQL: TStrings;
begin
  Result := DataSetFactory.GetSQL(FDataSet);
end;

procedure TVirtualDataSet.Notification(AComponent: TComponent;
  Operation: TOperation);
begin
  inherited Notification(AComponent, Operation);

  if csFreeNotification in Self.ComponentState then Exit;

  if (Operation = opRemove) then
  begin
    if (AComponent is TDataSet) and (AComponent = DataSet) then
    begin
      DataSet := nil;
    end;
  end;
end;

procedure TVirtualDataSet.PrepareForClientSQL;
begin
  // ��� TClientSql ����� ������ �������������� DataSet
  if FDataSet.ClassName = 'TClientSql' then
  begin
    DataSetFactory.PrepareSql(FDataSet);
  end;
end;

procedure TVirtualDataSet.PrepareSQL;
const
  SQL_WHERE_POS = '1=1';
  SQL_WITH_HINT =
   ' SELECT %s * FROM (%s)';
  SQL_WITH_FILTER =
   ' %s WHERE %s ';
  SQL_WITH_ORDER_BY =
    ' %s ORDER BY %s ';
var
  i: integer;
  AddFilters: boolean;
  FilterStr: string;
  TagStr: string;
begin
  if not Enabled then Exit;

  SQL.Text := FOldSQL.Text;
  // ���� ������ ������ �� ���� �� ���������� �������������� SQL
  if (OptimizerHint = '') and  (FConditions.Count = 0) and  (FIndexes.Count = 0) then
    begin
    SQL.Text := FOldSQL.Text;
    end
  else
    begin
    SQL.Text := FOldSQL.Text;

    // ��������� ���������� ������-�������
    AddFilters := False;
    for i := 0 to FConditions.Count-1 do
      begin
      if FConditions.Items[i].FReplace <> '' then
        begin
        if Pos(FConditions.Items[i].FReplace, SQL.Text) <> 0 then
          begin
          FilterStr := Trim(StringReplace(FConditions.Items[i].FReplace, '--', '', [rfIgnoreCase]));
          TagStr := Copy(FilterStr, Pos('<', FilterStr), Pos('>', FilterStr) - Pos('<', FilterStr) + 1);
          FilterStr := ' ' + StringReplace(FilterStr, TagStr, FConditions.Items[i].BuildSQL, [rfIgnoreCase]) + ' ';
          SQL.Text := StringReplace(SQL.Text, FConditions.Items[i].FReplace, FilterStr, [rfIgnoreCase]);
          end;
        end
      else
        AddFilters := True;
      end;

    // ��������� ������ � HINT
    SQL.Text := Format(SQL_WITH_HINT, [OptimizerHint, SQL.Text]);

    if AddFilters then
      // ��������� ������� WHERE
      if FConditions.Count > 0 then
        begin
        if Pos(SQL_WHERE_POS, SQL.Text) > 0 then
          // ��������
          SQL.Text := StringReplace(SQL.Text, SQL_WHERE_POS, FConditions.BuildSQL, [rfReplaceAll, rfIgnoreCase])
        else
          // ���������
          SQL.Text := Format(SQL_WITH_FILTER, [SQL.Text, FConditions.BuildSQL]);
        end;

    // ��������� ������� ORDER BY
    if FIndexes.Count > 0 then
    begin
      SQL.Text := Format(SQL_WITH_ORDER_BY, [SQL.Text, FIndexes.BuildSQL]);
    end;
  end;

  PrepareForClientSQL;
end;

procedure TVirtualDataSet.Refresh;
var
  VOldCursor: TCursor;
begin
  if not Enabled then Exit;

  VOldCursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;
  try
    DataSet.DisableControls;
    try
      DataSet.Close;
      DataSet.Open;
    finally
      DataSet.EnableControls;
    end;
  finally
    Screen.Cursor := VOldCursor;
  end;
end;

procedure TVirtualDataSet.ReleaseDataSet;
begin
  if not Assigned(DataSet) or not FDataSetCaptured then Exit;

  // ��������������� �������� ��������
  DataSet.BeforeOpen := FBeforeOpen;
  SQL.Text := FOldSQL.Text;

  FDataSetCaptured := False;
end;

(*
procedure TVirtualDataSet.Set24Filter(const AFieldName: string;
  AFloatArray: TFloatArray);
begin

end;
*)

procedure TVirtualDataSet.SetDataSet(const Value: TDataSet);
var
  VEnabled: Boolean;
begin
  // ���� DataSet ��������� �� ������� ������ �� ����
  if Assigned(Value) and
     (FDataSet = Value) and
     (csDestroying in Value.ComponentState) then
  begin
    ReleaseDataSet;
    FDataSet := nil;
  end;

  if (FDataSet = Value) then Exit;

  VEnabled := Enabled;
  Enabled := False;
  FDataSet := Value;
  Enabled := VEnabled;

  // ����� ����� ��������� �� �������� DataSet'a
  if Value <> nil then
  begin
    Value.FreeNotification(Self);
  end;
end;

procedure TVirtualDataSet.SetDateBetweenFilter(const AFieldName: string;
  AValueStart, AValueEnd: TDateTime);
var
  VCondition: TCondition;
  VValue: TValueItem;
begin
  // ��������� ������� ����
  if FDataSet.FindField(AFieldName) = nil then
   TAppMessages.ShowError('���� ' + AFieldName + ' �����������.');

  // ������ ������
  VCondition := Conditions.Add;
  VCondition.DisplayName := AFieldName;
  VCondition.Condition := dc23;
  VCondition.ListName := AFieldName;

  VValue := VCondition.ValueItems.Add;
  VValue.KeyValue.ValueType := vtDate;
  VValue.KeyValue.AsDateTime := Trunc(AValueStart);
  VValue.ListValue.ValueType := vtDate;
  VValue.ListValue.AsDateTime := Trunc(AValueStart);

  VValue := VCondition.ValueItems.Add;
  VValue.KeyValue.ValueType := vtDate;
  VValue.KeyValue.AsDateTime := Trunc(AValueEnd);
  VValue.ListValue.ValueType := vtDate;
  VValue.ListValue.AsDateTime := Trunc(AValueEnd);
end;

procedure TVirtualDataSet.SetEnabled(const Value: Boolean);
begin
  if FEnabled = Value then Exit;

  // �������� (���������) VirtualDataSet ������ � RunTime'e
  if not (csLoading in ComponentState) and not (csDesigning in ComponentState) then
  begin
    if Value then
    begin
      CaptureDataSet;
    end else
    begin
      ReleaseDataSet;
    end;
  end;

  FEnabled := Value;
end;

procedure TVirtualDataSet.SetSQL(const Value: TStrings);
begin
  // �������� � ������� DataSet �������� SQL
  DataSetFactory.SetSQL(FDataSet, Value);
end;

procedure TVirtualDataSet.SetNumbEqualFilter(const AFieldName: string;
  AValue: Double; AReplace: string);
var
  VCondition: TCondition;
  VValue: TValueItem;
begin
  // ��������� ������� ����
  if AReplace = '' then
    if FDataSet.FindField(AFieldName) = nil then
      TAppMessages.ShowError('���� ' + AFieldName + ' �����������.');

  VCondition := Conditions.Add;
  VCondition.DisplayName := AFieldName;
  VCondition.Condition := dc01;
  VCondition.ListName := AFieldName;
  VCondition.FReplace := AReplace;

  VValue := VCondition.ValueItems.Add;
  VValue.KeyValue.ValueType := vtNumber;
  VValue.KeyValue.AsFloat := AValue;
  VValue.ListValue.ValueType := vtNumber;
  VValue.ListValue.AsFloat := AValue;
end;

procedure TVirtualDataSet.SetNumb03Filter(const AFieldName: string;
  AValue: Double);
begin

end;

procedure TVirtualDataSet.SetNumbBetweenFilter(const AFieldName: string;
  AValueStart, AValueEnd: Double);
begin

end;

procedure TVirtualDataSet.SetNumbFilter02(const AFieldName: string;
  AValue: Double);
begin

end;

procedure TVirtualDataSet.SetNumbFilter04(const AFieldName: string;
  AValue: Double);
begin

end;

procedure TVirtualDataSet.SetNumbInFilter(const AFieldName: string;
  AValues: TFloatArray; AReplace: string);
var
  VCondition: TCondition;
  VValue: TValueItem;
  J: Integer;
begin
  // ��������� ������� ����
  if AReplace = '' then
    if FDataSet.FindField(AFieldName) = nil then
      TAppMessages.ShowError('���� ' + AFieldName + ' �����������.');

  // ��������� �������
  VCondition := Conditions.Add;
  VCondition.DisplayName := AFieldName;
  VCondition.Condition := dc26;
  VCondition.ListName := AFieldName;
  VCondition.FReplace := AReplace;

  for J := Low(AValues) to High(AValues) do
    begin
    VValue := VCondition.ValueItems.Add;
    VValue.KeyValue.ValueType := vtNumber;
    VValue.KeyValue.AsFloat := AValues[J];
    VValue.ListValue.ValueType := vtNumber;
    VValue.ListValue.AsFloat := AValues[J];
    end;

end;

procedure TVirtualDataSet.SetStrFilter(const AFieldName, AValue: string);
begin
//
end;

procedure TVirtualDataSet.SetStrEqualFilter(const AFieldName: string;
  AValue: string; AReplace: string);
var
  VCondition: TCondition;
  VValue: TValueItem;
begin
  // ��������� ������� ����
  if AReplace = '' then
    if FDataSet.FindField(AFieldName) = nil then
      TAppMessages.ShowError('���� ' + AFieldName + ' �����������.');

  VCondition := Conditions.Add;
  VCondition.DisplayName := AFieldName;
  VCondition.Condition := dc01;
  VCondition.ListName := AFieldName;
  VCondition.FReplace := AReplace;

  VValue := VCondition.ValueItems.Add;
  VValue.KeyValue.ValueType := vtString;
  VValue.KeyValue.Value := AValue;
  VValue.ListValue.ValueType := vtString;
  VValue.ListValue.Value := AValue;
end;

procedure TVirtualDataSet.SetStrInFilter(const AFieldName: string;
  AValues: TStrings; AReplace: string);
var
  VCondition: TCondition;
  VValue: TValueItem;
  J: Integer;
begin
  // ��������� ������� ����
  if AReplace = '' then
    if FDataSet.FindField(AFieldName) = nil then
      TAppMessages.ShowError('���� ' + AFieldName + ' �����������.');

  // ��������� �������
  VCondition := Conditions.Add;
  VCondition.DisplayName := AFieldName;
  VCondition.Condition := dc26;
  VCondition.ListName := AFieldName;
  VCondition.FReplace := AReplace;

  for J := 0 to AValues.Count-1 do
    begin
    VValue := VCondition.ValueItems.Add;
    VValue.KeyValue.ValueType := vtString;
    VValue.KeyValue.Value := AValues[J];
    VValue.ListValue.ValueType := vtString;
    VValue.ListValue.Value := AValues[J];
    end;
end;

{ TValue }

procedure TValue.AssignTo(Dest: TPersistent);
begin
  if Dest is TValue then
  begin
    with TValue(Dest) do
    begin
      FValue := Self.FValue;
      FValueType := Self.FValueType;
    end;
  end else
  begin
    inherited AssignTo(Dest);
  end;
end;

constructor TValue.Create(AOwner: TPersistent);
begin
  inherited Create;
  FOwner := AOwner;
  FValueType := vtString;
end;

function TValue.GetAsDateTime: TDateTime;
begin
  Result := StrToDateTime(GetAsString);
end;

function TValue.GetAsFloat: Double;
begin
  Result := StrToFloat(GetAsString);
end;

function TValue.GetAsString: string;
begin
  Result := FValue;
end;

function TValue.GetAsVariant: Variant;
begin
  if FValue <> '' then Result := FValue else Result := Null;
end;

function TValue.GetDisplayValue: string;
begin
  // ���������� ����
  if FValueType = vtDate then
  begin
    Result := DateToStr(AsDateTime);
  end else
  begin
    Result := FValue;
  end;
end;

function TValue.GetOwner: TPersistent;
begin
  Result := FOwner;
end;

function TValue.GetSQLValue: string;
const
  TEXT = 'TO_DATE(''%s'', ''%s'')';
  MASK = 'DD.MM.YYYY';
begin
  if FValueType = vtDate then
  begin
    // ���������� ��� ����
    Result := Format(TEXT, [FormatDateTime(MASK, AsDateTime), MASK]);
  end else
  if FValueType = vtString then
  begin
    // �������� ��������� ������� �� �������
    Result := StringReplace(FValue, #39, #39 + #39, [rfReplaceAll]);
    // ��������� ������� �� �����     chr
    Result := Format('''%s''', [Result]);
  end else
  begin
    Result := FValue;
  end;
end;

procedure TValue.SetAsDateTime(const Value: TDateTime);
begin
  SetAsString(DateTimeToStr(Value));
end;

procedure TValue.SetAsFloat(const Value: Double);
begin
  SetAsString(FloatToStr(Value));
end;

procedure TValue.SetAsString(const Value: string);
begin
  FValue := Value;
end;

procedure TValue.SetAsVariant(const Value: Variant);
begin
  SetAsString(Value);
end;

function TValue.GetDisplayText: string;
begin
  if FDisplayFormat = '' then
  begin
    Result := FValue;
  end else
  if FValueType = vtDate then
  begin
    // ���������� ��� ����
    Result := Trim(FormatDateTime(FDisplayFormat, AsDateTime));
  end else
  if FValueType = vtNumber then
  begin
    // ���������� ��� xb
    Result := Trim(FormatFloat(FDisplayFormat, AsFloat));
  end else
  begin
    Result := FValue;
  end;
end;

{ TValueItem }

procedure TValueItem.AssignTo(Dest: TPersistent);
begin
  if Dest is TValueItem then
  begin
    with TValueItem(Dest) do
    begin
      KeyValue := Self.KeyValue;
      ListValue := Self.FListValue;
      Changed(False);
    end;
  end else
  begin
    inherited AssignTo(Dest);
  end;
end;

constructor TValueItem.Create(Collection: TCollection);
begin
  inherited Create(Collection);
  FKeyValue := TValue.Create(Self);
  FListValue := TValue.Create(Self);
end;

procedure TValueItem.SetKeyValue(const Value: TValue);
begin
  if FKeyValue <> Value then
  begin
    FKeyValue.Assign(Value);
    Changed(False);
  end;
end;

procedure TValueItem.SetListValue(const Value: TValue);
begin
  if FListValue <> Value then
  begin
    FListValue.Assign(Value);
    Changed(False);
  end;
end;

{ TValueItems }

function TValueItems.Add: TValueItem;
begin
  Result := TValueItem(inherited Add);
end;

constructor TValueItems.Create(Owner: TPersistent);
begin
  inherited Create(TValueItem);
  FOwner := Owner;
end;

function TValueItems.GetDisplayValues: string;
var
  I: Integer;
begin
  if Count = 1 then
  begin
    Result := Items[0].ListValue.DisplayValue;
  end else
  if Count = 2 then
  begin
    Result := Concat(
      Items[0].ListValue.DisplayValue,
      ' - ',
      Items[1].ListValue.DisplayValue
      );
  end else
  begin
    Result := '';
    for I := 0 to Count - 1 do
    begin
      if Result <> '' then Result := Concat(Result, ', ');
      Result := Concat(Result, Items[I].ListValue.DisplayValue);
    end;
  end;
end;

function TValueItems.GetItem(Index: Integer): TValueItem;
begin
  Result := TValueItem(inherited Items[Index]);
end;

function TValueItems.GetOwner: TPersistent;
begin
  Result := FOwner;
end;

(*
function TValueItems.GetSQLValues: string;
var
  I: Integer;
begin
  if Count = 1 then
  begin
    Result := Items[0].ListValue.SQLValue;
  end else
  if Count = 2 then
  begin
    Result := Concat(
      Items[0].ListValue.DisplayValue,
      ' � ',
      Items[1].ListValue.DisplayValue
      );
  end else
  begin
    Result := '';
    for I := 0 to Count - 1 do
    begin
      if Result <> '' then Result := Concat(Result, ', ');
      Result := Concat(Result, Items[I].ListValue.DisplayValue);
    end;
  end;
end;
*)

procedure TValueItems.SetItem(Index: Integer; const Value: TValueItem);
begin
  Items[Index].Assign(Value);
end;

procedure TValue.CopyFieldValue(const AFieldName: string;
  const AMain, AList: TDataSet);
var
  VField: TField;
begin
  if not (Assigned(AMain) and Assigned(AList)) then Exit;

  // �������� ��� ����
  VField := AMain.FindField(AFieldName);
  if not Assigned(VField) then Exit;
  ValueType := GetTypeForField(VField);

  // �������� �������� ����
  VField := AList.FindField(AFieldName);
  if not Assigned(VField) then Exit;
  if ValueType = vtNumber then
  begin
    AsFloat := VField.AsFloat;
  end else
  if ValueType = vtDate then
  begin
    AsDateTime := VField.AsDateTime;
  end else
  begin
    Value := VField.AsString;
  end;
end;

procedure TValue.SetValueType(const Value: TValueType);
begin
  FValueType := Value;
end;

{ TDataSetFactoryErr }

class procedure TDataSetFactoryErr.Error(const AMsg: string);
begin
  raise EDataSetFactory.Create(AMsg);
end;

initialization
finalization
  TDataSetFactory.DestroyDataSetFactory;        // ���������� �������

end.
