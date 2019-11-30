inherited A06_CountryGroupMembersEdit: TA06_CountryGroupMembersEdit
  Width = 993
  inherited PanelLeft: TPanel
    Width = 447
    inherited Panel1: TPanel
      Width = 445
    end
    inline ListLeft: TA06_CountryGroupMembersEditLeft
      Left = 1
      Top = 23
      Width = 445
      Height = 609
      Align = alClient
      TabOrder = 1
      inherited xxxDBGrid: TxxxDBGrid
        Width = 445
        Height = 584
        Columns = <
          item
            Expanded = False
            FieldName = 'CO_ISO_DIG'
            PickList.Strings = ()
            Title.Caption = 'Цифровой код'
            Width = 92
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CO_LAT2'
            PickList.Strings = ()
            Title.Caption = 'Буквенный код'
            Width = 92
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CO_NAME_LONG'
            PickList.Strings = ()
            Title.Caption = 'Наименование'
            Width = 222
            Visible = True
          end>
      end
      inherited paToolButton: TPanel
        Width = 445
      end
    end
  end
  inherited Splitter1: TRxSplitter
    Left = 447
  end
  inherited PanelRight: TPanel
    Left = 500
    Width = 446
    inherited Panel2: TPanel
      Width = 444
    end
    inline ListRight: TA06_CountryGroupMembersEditRight
      Left = 1
      Top = 23
      Width = 444
      Height = 609
      Align = alClient
      TabOrder = 1
      inherited xxxDBGrid: TxxxDBGrid
        Width = 444
        Height = 584
        Columns = <
          item
            Expanded = False
            FieldName = 'POSITION'
            PickList.Strings = ()
            Title.Caption = '№ п.п'
            Width = 38
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CO_ISO_DIG'
            PickList.Strings = ()
            Title.Caption = 'Цифровой код'
            Width = 92
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CO_LAT2'
            PickList.Strings = ()
            Title.Caption = 'Буквенный код'
            Width = 92
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CO_NAME_LONG'
            PickList.Strings = ()
            Title.Caption = 'Наименование'
            Width = 182
            Visible = True
          end>
      end
      inherited paToolButton: TPanel
        Width = 444
      end
    end
  end
  inherited Splitter2: TRxSplitter
    Left = 497
  end
  inherited PanelB: TPanel
    Left = 450
  end
  inherited PanelC: TPanel
    Left = 946
  end
  inherited actList: TActionList
    Left = 480
    Top = 32
    inherited actLeft: TAction
      OnExecute = actLeftExecute
    end
    inherited actLeftAll: TAction
      OnExecute = actLeftAllExecute
    end
    inherited actRight: TAction
      OnExecute = actRightExecute
    end
    inherited actRightAll: TAction
      OnExecute = actRightAllExecute
    end
    inherited actUp: TAction
      OnExecute = actUpExecute
    end
    inherited actDn: TAction
      OnExecute = actDnExecute
    end
  end
  inherited oqLeft: TOracleQuery
    SQL.Strings = (
      'begin'
      
        '  Pk_410_HandCorrect.p_CountryGroupMembers_Add(:CO_ISO_DIG, :CHI' +
        'LD_ID);'
      'end;')
    Variables.Data = {
      03000000020000000B0000003A434F5F49534F5F444947040000000000000000
      000000090000003A4348494C445F4944040000000000000000000000}
  end
  inherited oqLeftAll: TOracleQuery
    SQL.Strings = (
      'begin'
      '  Pk_410_HandCorrect.p_CountryGroupMembers_AddAll;'
      'end;')
  end
  inherited oqRightAll: TOracleQuery
    SQL.Strings = (
      'begin'
      '  Pk_410_HandCorrect.p_CountryGroupMembers_DelAll;'
      'end;')
  end
  inherited oqRight: TOracleQuery
    SQL.Strings = (
      'begin'
      '  Pk_410_HandCorrect.p_CountryGroupMembers_Delete(:CO_ISO_DIG);'
      'end;')
    Variables.Data = {
      03000000010000000B0000003A434F5F49534F5F444947040000000000000000
      000000}
  end
  object oqUp: TOracleQuery
    SQL.Strings = (
      'begin'
      '  Pk_410_HandCorrect.p_CountryGroupMembers_Up(:CO_ISO_DIG);'
      'end;')
    Session = dmMain.OracleSession
    Variables.Data = {
      03000000010000000B0000003A434F5F49534F5F444947040000000000000000
      000000}
    Left = 384
    Top = 88
  end
  object oqDn: TOracleQuery
    SQL.Strings = (
      'begin'
      '  Pk_410_HandCorrect.p_CountryGroupMembers_Dn(:CO_ISO_DIG);'
      'end;')
    Session = dmMain.OracleSession
    Variables.Data = {
      03000000010000000B0000003A434F5F49534F5F444947040000000000000000
      000000}
    Left = 384
    Top = 120
  end
end
