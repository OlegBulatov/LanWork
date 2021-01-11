inherited K001_ReestersGrid: TK001_ReestersGrid
  Width = 749
  Height = 764
  OnResize = FrameResize
  object paTop: TPanel [0]
    Left = 0
    Top = 0
    Width = 749
    Height = 395
    Align = alTop
    BevelOuter = bvNone
    Caption = 'paTop'
    TabOrder = 0
    object paTopLeft: TPanel
      Left = 0
      Top = 0
      Width = 305
      Height = 395
      Align = alLeft
      BevelOuter = bvNone
      Caption = 'paTopLeft'
      TabOrder = 0
      OnResize = paTopLeftResize
      inline GridIssuersAll: TK001_ReesterIssuersAll
        Top = 19
        Width = 305
        Height = 376
        Align = alClient
        inherited xxxDBGrid: TxxxDBGrid
          Width = 305
          Height = 218
        end
        inherited paToolButton: TPanel
          Width = 305
        end
        inherited PanelFilters: TPanel
          Width = 305
        end
        inherited fm031_Filter1: Tfm031_Filter
          Width = 305
          inherited Panel1: TPanel
            Left = 477
          end
        end
        inherited actList: TActionList
          Left = 40
          Top = 252
          inherited actLinkIssuer: TAction
            OnExecute = GridIssuersAllactLinkIssuerExecute
            OnUpdate = GridIssuersAllactLinkIssuerUpdate
          end
          inherited actUnlinkIssuer: TAction
            OnExecute = GridIssuersAllactUnlinkIssuerExecute
            OnUpdate = GridIssuersAllactUnlinkIssuerUpdate
          end
        end
        inherited dsList: TDataSource
          Left = 177
          Top = 231
        end
        inherited odsList: TOracleDataSet
          Left = 145
          Top = 229
        end
        inherited PopupMenu: TPopupMenu
          Left = 40
          Top = 215
        end
        inherited oqAdd: TOracleQuery
          Left = 215
          Top = 232
        end
        inherited oqUpdate: TOracleQuery
          Left = 215
          Top = 268
        end
        inherited oqDelete: TOracleQuery
          Left = 215
          Top = 300
        end
        inherited odsFetchRecord: TOracleDataSet
          Left = 145
          Top = 266
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 305
        Height = 19
        Align = alTop
        BevelOuter = bvNone
        Color = clActiveBorder
        TabOrder = 1
        object RxLabel1: TRxLabel
          Left = 8
          Top = 2
          Width = 68
          Height = 13
          Caption = 'Контрагенты'
          OnMouseDown = RxLabel1MouseDown
        end
      end
    end
    object RxSplitter2: TRxSplitter
      Left = 305
      Top = 0
      Width = 4
      Height = 395
      ControlFirst = paTopLeft
      ControlSecond = paTopRight
      Align = alLeft
      BevelOuter = bvNone
      Color = clInactiveCaptionText
      OnMouseMove = RxSplitter2MouseMove
      OnResize = RxSplitter2Resize
    end
    object paTopRight: TPanel
      Left = 309
      Top = 0
      Width = 440
      Height = 395
      Align = alClient
      BevelOuter = bvNone
      Caption = 'paTopRight'
      TabOrder = 2
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 440
        Height = 19
        Align = alTop
        BevelOuter = bvNone
        Color = clActiveBorder
        TabOrder = 0
        object RxLabel2: TRxLabel
          Left = 8
          Top = 2
          Width = 114
          Height = 13
          Caption = 'Главные контрагенты'
          OnMouseDown = RxLabel2MouseDown
        end
      end
      inline GridIssuersMain: TK001_ReesterIssuersMain
        Top = 19
        Width = 440
        Height = 376
        Align = alClient
        TabOrder = 1
        inherited xxxDBGrid: TxxxDBGrid
          Width = 440
          Height = 218
        end
        inherited paToolButton: TPanel
          Width = 440
        end
        inherited fm031_Filter1: Tfm031_Filter
          Width = 440
          inherited Panel1: TPanel
            Left = 477
          end
        end
        inherited paFilters: TPanel
          Width = 440
        end
        inherited actList: TActionList
          Left = 16
          Top = 259
        end
        inherited dsList: TDataSource
          Left = 153
          Top = 254
        end
        inherited odsList: TOracleDataSet
          Left = 121
          Top = 252
        end
        inherited PopupMenu: TPopupMenu
          Left = 72
          Top = 222
        end
        inherited oqAdd: TOracleQuery
          Left = 191
          Top = 255
        end
        inherited oqUpdate: TOracleQuery
          Left = 191
          Top = 291
        end
        inherited oqDelete: TOracleQuery
          Left = 191
          Top = 323
        end
        inherited odsFetchRecord: TOracleDataSet
          Left = 121
          Top = 289
        end
      end
    end
  end
  object RxSplitter1: TRxSplitter [1]
    Left = 0
    Top = 395
    Width = 749
    Height = 4
    ControlFirst = paTop
    Align = alTop
    BevelOuter = bvNone
    Color = clInactiveCaptionText
    OnMouseMove = RxSplitter1MouseMove
  end
  object paBottom: TPanel [2]
    Left = 0
    Top = 399
    Width = 749
    Height = 365
    Align = alClient
    BevelOuter = bvNone
    Caption = 'paBottom'
    TabOrder = 2
    object paBottomLeft: TPanel
      Left = 0
      Top = 0
      Width = 305
      Height = 365
      Align = alLeft
      BevelOuter = bvNone
      Caption = 'paBottomLeft'
      TabOrder = 0
      OnResize = paBottomLeftResize
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 305
        Height = 19
        Align = alTop
        BevelOuter = bvNone
        Color = clActiveBorder
        TabOrder = 0
        object RxLabel3: TRxLabel
          Left = 8
          Top = 2
          Width = 47
          Height = 13
          Caption = 'Эмиссии'
          OnMouseDown = RxLabel3MouseDown
        end
      end
      inline GridEmissionsAll: TK001_ReesterEmissionsAll
        Top = 19
        Width = 305
        Height = 346
        Align = alClient
        TabOrder = 1
        inherited xxxDBGrid: TxxxDBGrid
          Width = 305
          Height = 187
        end
        inherited paToolButton: TPanel
          Width = 305
        end
        inherited fm031_Filter1: Tfm031_Filter
          Width = 305
          inherited Panel1: TPanel
            Left = 477
          end
        end
        inherited paFilters: TPanel
          Width = 305
        end
        inherited actList: TActionList
          Left = 27
          Top = 241
          inherited actLinkEmission: TAction
            OnExecute = GridEmissionsAllactLinkEmissionExecute
            OnUpdate = GridEmissionsAllactLinkEmissionUpdate
          end
          inherited actUnlinkEmission: TAction
            OnExecute = GridEmissionsAllactUnlinkEmissionExecute
            OnUpdate = GridEmissionsAllactUnlinkEmissionUpdate
          end
        end
        inherited dsList: TDataSource
          Left = 196
          Top = 236
        end
        inherited odsList: TOracleDataSet
          Left = 156
          Top = 234
        end
        inherited PopupMenu: TPopupMenu
          Left = 27
          Top = 204
        end
        inherited oqAdd: TOracleQuery
          Left = 242
          Top = 237
        end
        inherited oqUpdate: TOracleQuery
          Left = 242
          Top = 265
        end
        inherited oqDelete: TOracleQuery
          Left = 242
          Top = 297
        end
        inherited odsFetchRecord: TOracleDataSet
          Left = 156
          Top = 271
        end
      end
    end
    object RxSplitter3: TRxSplitter
      Left = 305
      Top = 0
      Width = 4
      Height = 365
      ControlFirst = paBottomLeft
      ControlSecond = paBottomRight
      Align = alLeft
      BevelOuter = bvNone
      Color = clInactiveCaptionText
      OnMouseMove = RxSplitter3MouseMove
    end
    object paBottomRight: TPanel
      Left = 309
      Top = 0
      Width = 440
      Height = 365
      Align = alClient
      BevelOuter = bvNone
      Caption = 'paBottomRight'
      TabOrder = 2
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 440
        Height = 19
        Align = alTop
        BevelOuter = bvNone
        Color = clActiveBorder
        TabOrder = 0
        object RxLabel4: TRxLabel
          Left = 8
          Top = 2
          Width = 93
          Height = 13
          Caption = 'Главные эмиссии'
        end
      end
      inline GridEmissionsMain: TK001_ReesterEmissionsMain
        Top = 19
        Width = 440
        Height = 346
        Align = alClient
        TabOrder = 1
        inherited xxxDBGrid: TxxxDBGrid
          Width = 440
          Height = 186
        end
        inherited paToolButton: TPanel
          Width = 440
        end
        inherited fm031_Filter1: Tfm031_Filter
          Width = 440
          inherited Panel1: TPanel
            Left = 477
          end
        end
        inherited paFilters: TPanel
          Width = 440
        end
        inherited actList: TActionList
          Top = 244
        end
        inherited dsList: TDataSource
          Top = 223
        end
        inherited odsList: TOracleDataSet
          Top = 221
        end
        inherited PopupMenu: TPopupMenu
          Top = 207
        end
        inherited oqAdd: TOracleQuery
          Left = 287
          Top = 224
        end
        inherited oqUpdate: TOracleQuery
          Left = 287
          Top = 260
        end
        inherited oqDelete: TOracleQuery
          Left = 287
          Top = 292
        end
        inherited odsFetchRecord: TOracleDataSet
          Top = 258
        end
        inherited pmFilter: TPopupMenu
          Left = 384
          Top = 200
        end
      end
    end
  end
  inherited actList: TActionList
    Images = dm02_Picters.ilCommonPictures
    Left = 296
    Top = 224
    object actLinkTopToRight: TAction
      Hint = 'Показать главного эмитента'
      ImageIndex = 7
      OnExecute = actLinkTopToRightExecute
      OnUpdate = actLinkTopToRightUpdate
    end
    object actLinkTopToLeft: TAction
      Hint = 'Показать связанных эмитентов'
      ImageIndex = 8
      OnExecute = actLinkTopToLeftExecute
      OnUpdate = actLinkTopToLeftUpdate
    end
    object actLinkBtmToTopLeft: TAction
      Hint = 'Показать эмитента'
      ImageIndex = 17
      OnExecute = actLinkBtmToTopLeftExecute
      OnUpdate = actLinkBtmToTopLeftUpdate
    end
    object actLinkTopToBtmLeft: TAction
      Hint = 'Показать все эмиссии эмитента'
      ImageIndex = 16
      OnExecute = actLinkTopToBtmLeftExecute
      OnUpdate = actLinkTopToBtmLeftUpdate
    end
    object actLinkBtmToRight: TAction
      Hint = 'Показать главную эмиссию'
      ImageIndex = 7
      OnExecute = actLinkBtmToRightExecute
      OnUpdate = actLinkBtmToRightUpdate
    end
    object actLinkBtmToLeft: TAction
      Hint = 'Показать связанные эмиссии'
      ImageIndex = 8
      OnExecute = actLinkBtmToLeftExecute
      OnUpdate = actLinkBtmToLeftUpdate
    end
    object actLinkBtmToTopRight: TAction
      Hint = 'Показать главного эмитента'
      ImageIndex = 17
      OnExecute = actLinkBtmToTopRightExecute
      OnUpdate = actLinkBtmToTopRightUpdate
    end
    object actLinkTopToBtmRight: TAction
      Hint = 'Показать все главные эмиссии главного эмитента'
      ImageIndex = 16
      OnExecute = actLinkTopToBtmRightExecute
      OnUpdate = actLinkTopToBtmRightUpdate
    end
  end
end
