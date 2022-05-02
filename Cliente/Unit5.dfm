object FrmFactura: TFrmFactura
  Left = 0
  Top = 0
  Caption = 'FrmFactura'
  ClientHeight = 445
  ClientWidth = 753
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 753
    Height = 105
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 49
      Height = 13
      Caption = 'Cliente:'
    end
    object Label2: TLabel
      Left = 16
      Top = 56
      Width = 49
      Height = 17
      Caption = 'Total:'
    end
    object Label3: TLabel
      Left = 64
      Top = 56
      Width = 113
      Height = 16
      Caption = 'Label3'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBComboBox1: TDBComboBox
      Left = 64
      Top = 13
      Width = 145
      Height = 21
      TabOrder = 0
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 105
    Width = 753
    Height = 243
    Align = alClient
    TabOrder = 1
    ExplicitLeft = 296
    ExplicitTop = 216
    ExplicitWidth = 185
    ExplicitHeight = 41
    object DBGridEh1: TDBGridEh
      Left = 1
      Top = 1
      Width = 751
      Height = 241
      Align = alClient
      DataSource = DataSource1
      DynProps = <>
      TabOrder = 0
      Columns = <
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'PRODUCTO'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'CANTIDAD'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'VALOR'
          Footers = <>
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 348
    Width = 753
    Height = 97
    Align = alBottom
    TabOrder = 2
    ExplicitTop = 354
  end
  object MemFacturaDet: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 368
    Top = 232
    object MemFacturaDetPRODUCTO: TIntegerField
      FieldName = 'PRODUCTO'
      OnChange = MemFacturaDetPRODUCTOChange
    end
    object MemFacturaDetCANTIDAD: TFloatField
      FieldName = 'CANTIDAD'
    end
    object MemFacturaDetVALOR: TFloatField
      FieldName = 'VALOR'
    end
  end
  object DataSource1: TDataSource
    DataSet = MemFacturaDet
    Left = 512
    Top = 216
  end
  object RESTClient1: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'utf-8, *;q=0.8'
    BaseURL = 'http://localhost/datasnap/rest/TTMetodos/getproductos'
    Params = <>
    RaiseExceptionOn500 = False
    Left = 208
    Top = 120
  end
  object RESTResponseDataSetAdapter1: TRESTResponseDataSetAdapter
    Dataset = MemFacturaDet
    FieldDefs = <>
    Response = RESTResponse1
    Left = 200
    Top = 240
  end
  object RESTRequest1: TRESTRequest
    Client = RESTClient1
    Params = <>
    Response = RESTResponse1
    SynchronizedEvents = False
    Left = 312
    Top = 88
  end
  object RESTResponse1: TRESTResponse
    ContentType = 'application/json'
    Left = 376
    Top = 128
  end
end
