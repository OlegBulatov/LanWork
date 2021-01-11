{******************************************************************************
   Название:       frm003_DialogForm
   Назначение:	   форма диалога - предок всех форм диалогов

   ИСПРАВЛЕНИЯ:
   Версия     Дата        Автор            Описание
   ---------  ----------  ---------------  ------------------------------------
   1.0        17.09.2004  Долженко		   1. Создание модуля
*******************************************************************************}

unit frm003_DialogForm;

interface

uses
  Classes, Controls, Forms, StdCtrls, ActnList, ExtCtrls, frm000_ParentForm;

type
  TSelectEvent = function: Boolean of object;

  TChangeEvent = function: Boolean of object;  

  Tfrm003_Dialog = class(Tfrm000_Parent)
    ActionList: TActionList;
    actSave: TAction;
    actCancel: TAction;
    Panel2: TPanel;
    Panel3: TPanel;
    OKBtn: TButton;
    CancelBtn: TButton;
    actRefresh: TAction;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure actCancelUpdate(Sender: TObject);
    procedure actSaveUpdate(Sender: TObject);
    procedure actSaveExecute(Sender: TObject);
    procedure actCancelExecute(Sender: TObject);
  private
    FOnSelect: TSelectEvent;
    //
    FOnSaveChange: TChangeEvent;
    FOnCancelChange: TChangeEvent;
  protected
    //
    function GetIDFieldName: string; virtual;
    function DoSelect: Boolean; virtual;
    function GetSelected: Boolean; virtual;
    procedure SetSelected(const Value: Boolean); virtual;
    procedure SetSelectedID(const Value: Variant); virtual;
    function GetSelectedID: Variant; virtual;
    //
    function SaveChange: Boolean; virtual;
    function CancelChange: Boolean; virtual;
  public
    procedure SetFrame(AFrame: TFrame);
    procedure ShowFrame(AFrame: TFrame);
    //
    property OnSaveChange: TChangeEvent read FOnSaveChange write FOnSaveChange;
    property OnCancelChange: TChangeEvent read FOnCancelChange write FOnCancelChange;
    //
    property OnSelect: TSelectEvent read FOnSelect write FOnSelect;
    property Selected: Boolean read GetSelected write SetSelected;
    property SelectedID: Variant read GetSelectedID write SetSelectedID;
  end;

  Tfrm003_DialogClass = class of Tfrm003_Dialog;

var
  frm003_Dialog: Tfrm003_Dialog;

implementation

uses dm006_PictersData;

{$R *.DFM}

procedure Tfrm003_Dialog.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  // закрываем форму если не было сбоя при сохранении изменений
  // или отмене изменений
  CanClose := False;
  if ModalResult = mrOk then
  begin
    CanClose := SaveChange;
  end else
  begin
    CanClose := CancelChange;
  end;
end;

function Tfrm003_Dialog.CancelChange: Boolean;
begin
  if Assigned(FOnCancelChange) then
  begin
    Result := FOnCancelChange;
  end else
  begin
    Result := True;
  end;
end;

function Tfrm003_Dialog.SaveChange: Boolean;
begin
  if Assigned(FOnSaveChange) then
  begin
    Result := FOnSaveChange;
  end else
  begin
    Result := True;
  end;
end;

procedure Tfrm003_Dialog.actCancelUpdate(Sender: TObject);
begin
  actCancel.Enabled := True;
end;

procedure Tfrm003_Dialog.actSaveUpdate(Sender: TObject);
begin
  actSave.Enabled := True;
end;

function Tfrm003_Dialog.DoSelect: Boolean;
begin
  if Assigned(FOnSelect) then
  begin
    Result := FOnSelect;
  end else
  begin
    Result := True;  
  end;
end;

function Tfrm003_Dialog.GetIDFieldName: string;
begin
  Result := '';
end;

function Tfrm003_Dialog.GetSelected: Boolean;
begin
  Result := False;
end;

function Tfrm003_Dialog.GetSelectedID: Variant;
begin
  Result := -1;
end;

procedure Tfrm003_Dialog.SetSelected(const Value: Boolean);
begin
  // ничего не делаем
end;

procedure Tfrm003_Dialog.SetSelectedID(const Value: Variant);
begin
  // ничего не делаем
end;

procedure Tfrm003_Dialog.actSaveExecute(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure Tfrm003_Dialog.actCancelExecute(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure Tfrm003_Dialog.ShowFrame(AFrame: TFrame);
begin
  // кладем фрэйм
  SetFrame(AFrame);

  // показываем себя
  Self.ShowModal;
end;

procedure Tfrm003_Dialog.SetFrame(AFrame: TFrame);
begin
  // кладем фрэйм
  Self.ClientWidth := AFrame.Width;
  Self.ClientHeight :=  AFrame.Height + Panel2.Height;
  AFrame.Parent := Self;
  AFrame.Visible := True;
  AFrame.Align := alClient
end;

end.
