unit fm02_PrmParentFrame;

interface

uses
  Forms, untParams;

type
  Tfm02_PrmParent = class(TFrame)
  private
    FParam: TRepParam;
  public
    procedure GetParamsValues; virtual; abstract;
    procedure SetParamsValues; virtual; abstract;
    property Param: TRepParam read FParam write FParam;
  end;

  Tfm02_PrmParents = class of Tfm02_PrmParent;

implementation

{$R *.DFM}

end.
