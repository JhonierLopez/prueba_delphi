object FrmMain: TFrmMain
  Left = 0
  Top = 0
  Caption = 'FrmMain'
  ClientHeight = 172
  ClientWidth = 543
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 543
    Height = 172
    Align = alClient
    Caption = 'Panel2'
    TabOrder = 0
    ExplicitWidth = 553
    ExplicitHeight = 219
    object SpeedButton1: TSpeedButton
      Left = 0
      Top = 0
      Width = 169
      Height = 156
      Caption = 'CLIENTES'
      OnClick = SpeedButton1Click
    end
    object SpeedButton2: TSpeedButton
      Left = 175
      Top = 0
      Width = 169
      Height = 156
      Caption = 'PRODUCTOS'
      OnClick = SpeedButton2Click
    end
    object SpeedButton3: TSpeedButton
      Left = 350
      Top = 0
      Width = 169
      Height = 156
      Caption = 'FACTURAS'
    end
  end
  object RESTClient1: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'utf-8, *;q=0.8'
    Params = <
      item
        Name = 'body'
      end>
    RaiseExceptionOn500 = False
    Left = 288
    Top = 8
  end
  object RESTRequest1: TRESTRequest
    Client = RESTClient1
    Params = <
      item
        Kind = pkREQUESTBODY
        Name = 'body'
        ContentType = ctAPPLICATION_JSON
      end>
    Response = RESTResponse1
    SynchronizedEvents = False
    Left = 368
    Top = 48
  end
  object RESTResponse1: TRESTResponse
    Left = 304
    Top = 88
  end
  object RESTResponseDataSetAdapter1: TRESTResponseDataSetAdapter
    Dataset = MemClientes
    FieldDefs = <>
    Response = RESTResponse1
    Left = 432
    Top = 96
  end
  object MemClientes: TFDMemTable
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    StoreDefs = True
    Left = 416
    Top = 8
    object MemClientesCLIENTE: TWideStringField
      FieldName = 'CLIENTE'
      Size = 10
    end
    object MemClientesNOMBRE_CLIENTE: TWideStringField
      FieldName = 'NOMBRE_CLIENTE'
      Size = 50
    end
    object MemClientesDIRECCION: TWideStringField
      FieldName = 'DIRECCION'
      Size = 50
    end
    object MemClientesSELECCIONAR: TStringField
      FieldName = 'SELECCIONAR'
      Size = 30
    end
  end
  object DataSource1: TDataSource
    DataSet = MemClientes
    Left = 224
    Top = 80
  end
end
