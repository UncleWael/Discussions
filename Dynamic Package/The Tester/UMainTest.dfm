object Form1: TForm1
  Left = 192
  Top = 124
  Caption = 'Form1'
  ClientHeight = 637
  ClientWidth = 1289
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1289
    Height = 65
    Align = alTop
    Caption = 'Dynamic Packages workout'
    TabOrder = 0
  end
  object lstLoadedPacks: TListBox
    Left = 0
    Top = 65
    Width = 185
    Height = 407
    Align = alLeft
    ItemHeight = 13
    TabOrder = 1
  end
  object btnLoadPacks: TButton
    Left = 520
    Top = 104
    Width = 113
    Height = 25
    Caption = 'btnLoadPacks'
    TabOrder = 2
    OnClick = btnLoadPacksClick
  end
  object LogMemo: TMemo
    Left = 0
    Top = 472
    Width = 1289
    Height = 165
    Align = alBottom
    Color = clBlack
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Lines.Strings = (
      'LogMemo')
    ParentFont = False
    TabOrder = 3
  end
  object lstRegPacks: TListBox
    Left = 185
    Top = 65
    Width = 200
    Height = 407
    Align = alLeft
    ItemHeight = 13
    TabOrder = 4
  end
end
