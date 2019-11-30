inherited frm17_LoadParentList: Tfrm17_LoadParentList
  Left = 413
  Top = 232
  Width = 933
  Caption = 'frm17_LoadParentList'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Splitter1: TSplitter
    Top = 378
    Width = 917
  end
  inherited spRight: TSplitter
    Left = 914
    Height = 345
  end
  inherited Panel2: TPanel
    Top = 345
    Width = 917
    inherited Panel3: TPanel
      Left = 752
    end
  end
  inherited paRight: TPanel
    Left = 917
    Height = 345
  end
  inherited Panel1: TPanel
    Top = 381
    Width = 917
    Height = 167
    inherited pc01: TPageControl
      Width = 915
      Height = 165
      inherited ts01: TTabSheet
        Caption = 'Загрузить данные из файла'
        object ToolBar3: TToolBar
          Left = 0
          Top = 0
          Width = 907
          Height = 23
          ButtonWidth = 108
          Caption = 'ToolBar2'
          EdgeBorders = []
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Images = dm02_Picters.ilCommonPictures
          List = True
          ParentFont = False
          ParentShowHint = False
          ShowCaptions = True
          ShowHint = True
          TabOrder = 0
          Wrapable = False
          object tbSelectFile: TToolButton
            Left = 0
            Top = 0
            Action = actSelect
            AutoSize = True
          end
          object tbViewFile: TToolButton
            Left = 112
            Top = 0
            Action = actView
            AutoSize = True
          end
          object tbLoadFile: TToolButton
            Left = 194
            Top = 0
            Action = actLoad
            AutoSize = True
          end
        end
        object ListView: TListView
          Left = 0
          Top = 23
          Width = 907
          Height = 114
          Align = alClient
          Checkboxes = True
          Columns = <
            item
              Caption = 'Файл'
              Width = 500
            end
            item
              Caption = 'Результат загрузки'
              Width = 350
            end>
          HideSelection = False
          ReadOnly = True
          RowSelect = True
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          ViewStyle = vsReport
        end
      end
    end
  end
  inherited paMain: TPanel
    Width = 914
    Height = 345
    inherited paToolBars: TPanel
      Width = 914
      inherited ToolBar2: TToolBar
        Width = 914
        inherited ToolButton4: TToolButton
          Enabled = False
          Visible = False
        end
        inherited tbExcel: TToolButton
          AutoSize = True
        end
        inherited ToolButton7: TToolButton
          Left = 680
          AutoSize = True
        end
        object ToolButton9: TToolButton
          Left = 767
          Top = 0
          Width = 8
          Caption = 'ToolButton9'
          ImageIndex = 3
          Style = tbsSeparator
        end
        object ToolButton10: TToolButton
          Left = 775
          Top = 0
          Action = actDelAll
        end
      end
    end
    inherited xxxDBGrid: TxxxDBGrid
      Width = 914
      Height = 280
    end
    inherited fmSeach: TfmSeachFrame
      Width = 914
      inherited Panel1: TPanel
        Left = 887
      end
    end
    inherited fm31_Filter: Tfm31_Filter
      Width = 914
      inherited Panel1: TPanel
        Left = 887
      end
    end
  end
  inherited StatusBar: TStatusBar
    Width = 917
  end
  inherited ActionList: TActionList
    inherited actAddAttributes: TAction
      Enabled = False
      Visible = False
    end
    inherited actDeleteAttributes: TAction
      Enabled = False
      Visible = False
    end
    inherited actEditAttributes: TAction
      Enabled = False
      Visible = False
    end
    inherited actShowDetail: TAction
      Caption = 'Загрузка...'
      Hint = 'Показать/скрыть панель загрузки...'
    end
    object actSelect: TAction
      Category = 'DBF'
      Caption = 'Выбрать файлы'
      Hint = 'Выбрать файлы для загрузки'
      ImageIndex = 12
      OnExecute = actSelectExecute
    end
    object actView: TAction
      Category = 'DBF'
      Caption = 'Просмотр'
      Enabled = False
      Hint = 'Просмотр файла'
      ImageIndex = 11
      Visible = False
      OnExecute = actViewExecute
      OnUpdate = actViewUpdate
    end
    object actLoad: TAction
      Category = 'DBF'
      Caption = 'Загрузить'
      Hint = 'Загрузить файлы в базу данных'
      ImageIndex = 13
      OnUpdate = actLoadUpdate
    end
    object actDelAll: TAction
      Category = 'DBF'
      Caption = 'Удалить все'
      Hint = 'Удалить все записи из таблицы'
      ImageIndex = 2
      OnExecute = actDelAllExecute
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'select 1 from dual')
  end
  object OpenDialog: TOpenDialog
    Options = [ofHideReadOnly, ofAllowMultiSelect, ofPathMustExist, ofFileMustExist, ofEnableSizing]
    Left = 47
    Top = 80
  end
  object oqLoad: TOracleQuery
    Session = dmMain.OracleSession
    Left = 136
    Top = 216
  end
  object PkDBF: TOraclePackage
    Session = dmMain.OracleSession
    PackageName = 'PK_LOAD_DBF'
    Left = 168
    Top = 147
  end
end
