{******************************************************************************
   Название:       frm004_ListForm
   Назначение:	   форма отображения листа данных - предок форм 

   ИСПРАВЛЕНИЯ:
   Версия     Дата        Автор            Описание
   ---------  ----------  ---------------  ------------------------------------
   1.0        17.09.2004  Долженко	   1. Создание модуля
*******************************************************************************}

unit frm004_ListForm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Grids, DBGrids, ComCtrls, ActnList, ToolWin,
  Menus, frm000_ParentForm, Oracle, OracleData, Db,
  ExtCtrls,   frm003_DialogForm,
  fm004_ListFrame;

const
  IS_DELETE = 'Удалить запись?';

type
  TSelectEvent = function: Boolean of object;

  Tfrm004_List = class(Tfrm003_Dialog)
    StatusBar: TStatusBar;
    actSelectItem: TAction;
    paMain: TPanel;
    paRight: TPanel;
    spRight: TSplitter;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
  protected
    function GetList: TfmList; virtual;
  public
    class function Instance: Tfrm004_List;
    property List: TfmList read GetList;
  end;

  Tfrm004_ListClass = class of Tfrm004_List;

var
  frm004_List: Tfrm004_List;

implementation

uses untMessages;

{$R *.DFM}

{ Tfrm004_List }

class function Tfrm004_List.Instance: Tfrm004_List;
begin
  Result := Tfrm004_List(inherited Instance);
end;

procedure Tfrm004_List.FormShow(Sender: TObject);
begin
  (*
  if List.DataSet.Active then Exit;
  List.RefreshData('', Unassigned);
  *)
end;



procedure Tfrm004_List.FormCreate(Sender: TObject);
(*
var
  i: integer;
  action: TAction;
*)
begin
//  List.InitFrame(Self);
end;

function Tfrm004_List.GetList: TfmList;
begin
  // необходимо переопределить в наследниках  !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
  Result := nil;
end;

end.
