object frm11_SelectionLists: Tfrm11_SelectionLists
  Left = 132
  Top = 155
  Width = 800
  Height = 600
  ActiveControl = BtnOk
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'Выбор'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 525
    Width = 792
    Height = 41
    Align = alBottom
    TabOrder = 0
    object BtnOk: TButton
      Left = 708
      Top = 10
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Выбрать'
      ModalResult = 1
      TabOrder = 0
      OnClick = BtnOkClick
    end
    object Button2: TButton
      Left = 626
      Top = 10
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Отменить'
      ModalResult = 2
      TabOrder = 1
    end
  end
  inline Lists: Tfm037_SelectLists
    Width = 792
    Height = 525
    Align = alClient
    TabOrder = 1
    inherited paRight: TPanel
      Width = 370
      Height = 525
      inherited paTopRight: TPanel
        Width = 370
      end
      inherited fmGridRight: TfmGrid
        Width = 370
        Height = 497
        inherited xxxDBGrid: TxxxDBGrid
          Width = 370
          Height = 472
        end
        inherited paToolButton: TPanel
          Width = 370
          inherited tlbList: TToolBar
            inherited tbSeparator02: TToolButton
              Visible = False
            end
          end
        end
      end
    end
    inherited paCenter: TPanel
      Height = 525
      inherited paButtons: TPanel
        inherited sbToRight: TSpeedButton
          OnClick = ListssbToRightClick
        end
        inherited sbAllToRight: TSpeedButton
          OnClick = ListssbAllToRightClick
        end
        inherited sbAllToLeft: TSpeedButton
          OnClick = ListssbAllToLeftClick
        end
        inherited sbToLeft: TSpeedButton
          OnClick = ListssbToLeftClick
        end
      end
    end
    inherited paLeft: TPanel
      Height = 525
      inherited fmGridLeft: TfmGrid
        Height = 497
        inherited xxxDBGrid: TxxxDBGrid
          Height = 472
        end
        inherited paToolButton: TPanel
          BevelInner = bvNone
          inherited tlbNav: TToolBar
            Left = 0
            Top = 0
            Height = 25
          end
          inherited tlbList: TToolBar
            Left = 77
            Top = 0
            Height = 25
            inherited tbSeparator02: TToolButton
              Visible = False
            end
          end
          inherited tlbExcel: TToolBar
            Left = 319
            Top = 0
            Height = 25
          end
          inherited tlbSeach: TToolBar
            Left = 353
            Top = 0
            Height = 25
          end
          inherited tlbFilter: TToolBar
            Left = 420
            Top = 0
            Height = 25
          end
          inherited tlbSelect: TToolBar
            Left = 501
            Top = 0
            Height = 25
          end
        end
      end
    end
  end
end
