inherited frm14_DBFParentList: Tfrm14_DBFParentList
  Left = 133
  Top = 74
  Width = 891
  Caption = 'frm14_DBFParentList'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Splitter1: TSplitter
    Top = 314
    Width = 883
  end
  inherited spRight: TSplitter
    Left = 880
    Top = 18
    Height = 296
  end
  inherited paRight: TPanel
    Left = 883
    Top = 18
    Height = 296
  end
  inherited paMain: TPanel
    Top = 18
    Width = 880
    Height = 296
    inherited ToolBar2: TToolBar
      Width = 880
      inherited ToolButton4: TToolButton
        Enabled = False
        Visible = False
      end
      inherited tbExcel: TToolButton
        AutoSize = True
      end
      inherited ToolButton5: TToolButton
        Left = 593
      end
      inherited ToolButton7: TToolButton
        Left = 601
        AutoSize = True
      end
      object ToolButton9: TToolButton
        Left = 688
        Top = 0
        Width = 8
        Caption = 'ToolButton9'
        ImageIndex = 3
        Style = tbsSeparator
      end
      object ToolButton10: TToolButton
        Left = 696
        Top = 0
        Action = actDelAll
      end
    end
    inherited xxxDBGrid: TxxxDBGrid
      Width = 880
      Height = 231
    end
    inherited fmSeach: TfmSeachFrame
      Width = 880
      inherited Panel1: TPanel
        Left = 853
      end
    end
    inherited fm31_Filter: Tfm31_Filter
      Width = 880
      inherited Panel1: TPanel
        Left = 853
      end
    end
  end
  object Panel2: TPanel [4]
    Left = 0
    Top = 0
    Width = 883
    Height = 18
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 5
    object Label1: TLabel
      Left = 7
      Top = 2
      Width = 110
      Height = 13
      Caption = 'Загруженные данные'
    end
  end
  inherited Panel1: TPanel
    Top = 317
    Width = 883
    Height = 167
    inherited pc01: TPageControl
      Width = 881
      Height = 165
      inherited ts01: TTabSheet
        Caption = 'Загрузить данные из файла'
        object ToolBar3: TToolBar
          Left = 0
          Top = 0
          Width = 873
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
          Width = 873
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
  inherited StatusBar: TStatusBar
    Width = 883
  end
  inherited pnlButtons: TPanel
    Width = 883
    inherited OKBtn: TButton
      Left = 725
    end
    inherited CancelBtn: TButton
      Left = 805
    end
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
      Hint = 'Просмотр файла'
      ImageIndex = 11
      OnExecute = actViewExecute
      OnUpdate = actViewUpdate
    end
    object actLoad: TAction
      Category = 'DBF'
      Caption = 'Загрузить'
      Hint = 'Загрузить файлы в базу данных'
      ImageIndex = 13
      OnExecute = actLoadExecute
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
    Filter = 'DBF files (*.dbf)|*.dbf|CSV files (*.csv)|*.csv'
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
