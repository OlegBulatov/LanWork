inherited frm45_DoubleList: Tfrm45_DoubleList
  Left = 84
  Top = 195
  Caption = 'frm45_DoubleList'
  ClientHeight = 661
  ClientWidth = 956
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter [0]
    Left = 0
    Top = 325
    Width = 956
    Height = 2
    Cursor = crVSplit
    Align = alBottom
  end
  inherited Panel2: TPanel
    Top = 628
    Width = 956
    TabOrder = 2
    inherited Panel3: TPanel
      Left = 791
      inherited CancelBtn: TButton [0]
      end
      inherited OKBtn: TButton [1]
        Left = 85
      end
    end
  end
  object paTop: TPanel [2]
    Left = 0
    Top = 0
    Width = 956
    Height = 325
    Align = alClient
    BevelOuter = bvNone
    Caption = 'paTop'
    TabOrder = 0
    object paCaptionTop: TPanel
      Left = 0
      Top = 0
      Width = 956
      Height = 20
      Hint = 
        'Выберите резидента. Из левого списка в правый перенесите вариант' +
        'ы возможного написания выбранного резидента.'
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object Label1: TLabel
        Left = 5
        Top = 5
        Width = 138
        Height = 13
        Caption = 'Название верхнего списка'
      end
    end
    object ToolBar1: TToolBar
      Left = 0
      Top = 298
      Width = 956
      Height = 27
      Align = alBottom
      ButtonWidth = 148
      Caption = 'ToolBar1'
      EdgeBorders = [ebTop, ebBottom]
      Flat = True
      Images = dm02_Picters.ilCommonPictures
      List = True
      ParentShowHint = False
      ShowCaptions = True
      ShowHint = True
      TabOrder = 1
      object ToolButton1: TToolButton
        Left = 0
        Top = 0
        Action = actMoveToBottom
      end
      object ToolButton2: TToolButton
        Left = 148
        Top = 0
        Action = actMoveAllToBottom
      end
      object ToolButton3: TToolButton
        Left = 296
        Top = 0
        Action = actMoveAllToTop
      end
      object ToolButton4: TToolButton
        Left = 444
        Top = 0
        Action = actMoveToTop
      end
    end
  end
  object paBottom: TPanel [3]
    Left = 0
    Top = 327
    Width = 956
    Height = 301
    Align = alBottom
    BevelOuter = bvNone
    Caption = 'paBottom'
    TabOrder = 1
    object Panel1: TPanel
      Left = 0
      Top = 0
      Width = 956
      Height = 20
      Hint = 
        'Выберите резидента. Из левого списка в правый перенесите вариант' +
        'ы возможного написания выбранного резидента.'
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object Label2: TLabel
        Left = 5
        Top = 5
        Width = 135
        Height = 13
        Caption = 'Название нижнего списка'
      end
    end
  end
  inherited ActionList1: TActionList
    inherited actSave: TAction
      Caption = 'Закрыть'
    end
    inherited actCancel: TAction
      Enabled = False
      Visible = False
    end
    object actMoveToBottom: TAction
      Caption = 'Переместить вниз'
      Hint = 'Переместить элемент верхнего списка в нижний список'
      ImageIndex = 14
      OnExecute = actMoveToRightExecute
      OnUpdate = actMoveToBottom_Update
    end
    object actMoveAllToBottom: TAction
      Caption = 'Переместить все вниз'
      Hint = 'Переместить все элементы верхнего списка в нижний список'
      ImageIndex = 16
      OnExecute = actMoveAllToRightExecute
      OnUpdate = actMoveToBottom_Update
    end
    object actMoveAllToTop: TAction
      Caption = 'Переместить все вверх'
      Hint = 'Переместить все элементы нижнего списка в вверхний список'
      ImageIndex = 15
      OnExecute = actMoveAllToLeftExecute
      OnUpdate = actMoveAllToTop_Update
    end
    object actMoveToTop: TAction
      Caption = 'Переместить вверх'
      Hint = 'Переместить элемент нижнего списка в вверхний список'
      ImageIndex = 17
      OnExecute = actMoveToLeftExecute
      OnUpdate = actMoveAllToTop_Update
    end
  end
  object oqToBottom: TOracleQuery
    Session = dmMain.OracleSession
    Left = 459
    Top = 200
  end
  object oqToTop: TOracleQuery
    Session = dmMain.OracleSession
    Left = 491
    Top = 200
  end
end
