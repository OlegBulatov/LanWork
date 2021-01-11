inherited E001_Step01: TE001_Step01
  Width = 1020
  Height = 694
  inherited Bevel: TBevel
    Width = 1020
  end
  inherited PanelStepCaption: TPanel
    Width = 1020
    inherited Label1: TLabel
      Width = 335
      Caption = 'Шаг 1 - Выбор типа ценной бумаги и отчетного периода'
    end
    inherited Label2: TLabel
      Width = 384
      Caption = 
        'Выберите тип ценной бумаги, отчетный период и нажмите кнопку "Да' +
        'лее".'
    end
  end
  inherited PanelStepBody: TPanel
    Width = 1020
    Height = 642
    object Panel1: TPanel
      Left = 0
      Top = 115
      Width = 1020
      Height = 161
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object pc01: TPageControl
        Left = 0
        Top = 0
        Width = 729
        Height = 161
        ActivePage = ts01
        TabOrder = 0
        object ts01: TTabSheet
          Caption = 'Загрузить данные из файла'
          object ToolBar1: TToolBar
            Left = 0
            Top = 0
            Width = 721
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
            object ToolButton1: TToolButton
              Left = 0
              Top = 0
              Hint = 'Выбрать файлы для загрузки'
              AutoSize = True
              Caption = 'Выбрать файлы'
              ImageIndex = 12
              OnClick = actSelectExecute
            end
            object ToolButton2: TToolButton
              Left = 112
              Top = 0
              Hint = 'Просмотр файла'
              AutoSize = True
              Caption = 'Просмотр'
              Enabled = False
              ImageIndex = 11
              OnClick = actViewExecute
            end
            object ToolButton3: TToolButton
              Left = 194
              Top = 0
              Hint = 'Загрузить файлы в базу данных'
              AutoSize = True
              Caption = 'Загрузить'
              Enabled = False
              ImageIndex = 13
              OnClick = actLoadExecute
            end
          end
          object ListView: TListView
            Left = 0
            Top = 23
            Width = 705
            Height = 110
            Align = alLeft
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
            OnChange = ListViewChange
          end
        end
      end
    end
    object Panel2: TPanel
      Left = 0
      Top = 0
      Width = 1020
      Height = 54
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      inline E001_Time1: TE001_Time
        Top = 8
        Width = 497
        inherited lcb: TxxxDBLookupCheckCombo
          Left = 128
          Width = 263
        end
      end
      inline E001_TypeSec1: TE001_TypeSec
        Top = 29
        Width = 481
        TabOrder = 1
        inherited lcb: TxxxDBLookupCheckCombo
          Left = 128
          Width = 263
        end
      end
      object Button1: TButton
        Left = 400
        Top = 8
        Width = 112
        Height = 25
        Caption = 'Настройки расчета'
        TabOrder = 2
        OnClick = Button1Click
      end
    end
    object Panel3: TPanel
      Left = 0
      Top = 54
      Width = 1020
      Height = 61
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 2
    end
    inline E001_LogMIP1: TE001_LogMIP
      Top = 295
      Width = 1020
      Height = 347
      Align = alClient
      TabOrder = 3
      Visible = False
      inherited Splitter1: TSplitter
        Width = 1003
      end
      inherited xxxDBGrid: TxxxDBGrid
        Width = 1003
      end
      inherited paToolButton: TPanel
        Width = 1003
      end
      inherited fm031_Filter1: Tfm031_Filter
        Width = 1003
        inherited Panel1: TPanel
          Left = 976
        end
      end
      inherited Panel1: TPanel
        Width = 1003
      end
      inherited Panel2: TPanel
        Width = 1003
      end
    end
    object Panel4: TPanel
      Left = 0
      Top = 276
      Width = 1020
      Height = 19
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 4
      object ToolBar2: TToolBar
        Left = 0
        Top = 0
        Width = 1020
        Height = 17
        ButtonWidth = 167
        Caption = 'ToolBar2'
        TabOrder = 0
      end
    end
  end
  inherited actList: TActionList
    Left = 392
    Top = 80
  end
  object OpenDialog: TOpenDialog
    Filter = 'XLS files (*.xls)|*.xls|XLS files (*.xlsx)|*.xlsx'
    Options = [ofHideReadOnly, ofAllowMultiSelect, ofPathMustExist, ofFileMustExist, ofEnableSizing]
    Left = 79
    Top = 232
  end
  object ActionList: TActionList
    Images = dm02_Picters.ilCommonPictures
    Left = 16
    Top = 235
    object actSelect: TAction
      Category = 'XLS'
      Caption = 'Выбрать файлы'
      Hint = 'Выбрать файлы для загрузки'
      ImageIndex = 12
      OnExecute = actSelectExecute
    end
    object actView: TAction
      Category = 'XLS'
      Caption = 'Просмотр'
      Hint = 'Просмотр файла'
      ImageIndex = 11
      OnExecute = actViewExecute
      OnUpdate = actViewUpdate
    end
    object actLoad: TAction
      Category = 'XLS'
      Caption = 'Загрузить'
      Hint = 'Загрузить файлы в базу данных'
      ImageIndex = 13
      OnExecute = actLoadExecute
      OnUpdate = actLoadUpdate
    end
    object actDelAll: TAction
      Category = 'XLS'
      Caption = 'Удалить все'
      Hint = 'Удалить все записи из таблицы'
      ImageIndex = 2
    end
  end
  object oqBeforeLoad: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      
        '  PK_405_SHS_IIP.p_load_mip_INIT_VAR (:i_MIP_T055_ID,:i_MIP_USER' +
        '_NAME,:i_MIP_SEC_TYPE,:i_MIP_FILE_NAME);'
      'END;')
    Session = dmMain.OracleSession
    Variables.Data = {
      03000000040000000E0000003A495F4D49505F543035355F4944040000000000
      000000000000100000003A495F4D49505F555345525F4E414D45050000000000
      0000000000000F0000003A495F4D49505F5345435F5459504505000000000000
      0000000000100000003A495F4D49505F46494C455F4E414D4505000000000000
      0000000000}
    Left = 144
    Top = 232
  end
  object oqArray: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  PK_405_SHS_IIP.p_load_mip_INIT_ARRAY (:I_LIST_FIELDS_CHECK);'
      'END;')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000001000000140000003A495F4C4953545F4649454C44535F434845434B
      050000000000000000000000}
    Left = 204
    Top = 235
  end
end
