inherited frmDetalheNotaEntradaDocReferenciado: TfrmDetalheNotaEntradaDocReferenciado
  Caption = 'Nota Fiscal de Entrada - Documento Referenciado'
  ClientHeight = 218
  ClientWidth = 335
  ExplicitWidth = 341
  ExplicitHeight = 247
  PixelsPerInch = 96
  TextHeight = 16
  inherited pnPrincipal: TAdvPanel
    Width = 335
    Height = 169
    ExplicitWidth = 335
    ExplicitHeight = 169
    FullHeight = 200
    object Label1: TLabel
      Left = 16
      Top = 62
      Width = 141
      Height = 16
      Caption = 'Chave SAT / NFe / NFCe'
      FocusControl = edChave
    end
    object Label2: TLabel
      Left = 16
      Top = 114
      Width = 89
      Height = 16
      Caption = 'N'#250'mero do ECF'
      FocusControl = edNumeroECF
    end
    object Label3: TLabel
      Left = 172
      Top = 114
      Width = 147
      Height = 16
      Caption = 'N'#250'mero do Cupom (COO)'
      FocusControl = edNumeroCupomECF
    end
    object Label4: TLabel
      Left = 16
      Top = 10
      Width = 26
      Height = 16
      Caption = 'Item'
      FocusControl = cxDBSpinEdit3
    end
    object Label5: TLabel
      Left = 143
      Top = 10
      Width = 179
      Height = 16
      Caption = 'Tipo de documento refrenciado'
      FocusControl = cxDBSpinEdit3
    end
    object edChave: TcxDBTextEdit
      Left = 16
      Top = 84
      DataBinding.DataField = 'chave_nfe'
      DataBinding.DataSource = dsCadastro
      TabOrder = 0
      Width = 306
    end
    object edNumeroECF: TcxDBSpinEdit
      Left = 16
      Top = 136
      DataBinding.DataField = 'numero_ecf'
      DataBinding.DataSource = dsCadastro
      Properties.SpinButtons.Visible = False
      TabOrder = 1
      Width = 150
    end
    object edNumeroCupomECF: TcxDBSpinEdit
      Left = 172
      Top = 136
      DataBinding.DataField = 'numero_cupom_ecf'
      DataBinding.DataSource = dsCadastro
      Properties.SpinButtons.Visible = False
      TabOrder = 2
      Width = 150
    end
    object JvDBComboBox1: TJvDBComboBox
      Left = 143
      Top = 32
      Width = 179
      Height = 24
      DataField = 'tipo_doc'
      DataSource = dsCadastro
      Items.Strings = (
        'SAT / NFe'
        'Cupom fiscal (ECF)')
      TabOrder = 3
      Values.Strings = (
        'NFE'
        'ECF')
      ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
      ListSettings.OutfilteredValueFont.Color = clRed
      ListSettings.OutfilteredValueFont.Height = -11
      ListSettings.OutfilteredValueFont.Name = 'Tahoma'
      ListSettings.OutfilteredValueFont.Style = []
    end
    object cxDBSpinEdit3: TcxDBSpinEdit
      Left = 16
      Top = 32
      TabStop = False
      DataBinding.DataField = 'item'
      DataBinding.DataSource = dsCadastro
      Properties.ReadOnly = True
      Properties.SpinButtons.Visible = False
      Style.Color = 14997705
      TabOrder = 4
      Width = 121
    end
  end
  inherited pnBotoes: TFlowPanel
    Top = 169
    Width = 335
    ExplicitTop = 169
    ExplicitWidth = 335
    inherited btCancelar: TAdvGlowButton
      Left = 228
      Appearance.BorderColor = clNavy
      ExplicitLeft = 228
    end
    inherited btSalvar: TAdvGlowButton
      Left = 121
      Appearance.BorderColor = clNavy
      ExplicitLeft = 121
    end
    inherited btExcluir: TAdvGlowButton
      Left = 14
      Appearance.BorderColor = clNavy
      ExplicitLeft = 14
    end
    inherited btEditar: TAdvGlowButton
      Left = 228
      Top = 50
      ExplicitLeft = 228
      ExplicitTop = 50
    end
    inherited btNovo: TAdvGlowButton
      Left = 121
      Top = 50
      ExplicitLeft = 121
      ExplicitTop = 50
    end
  end
  inherited qrCadastro: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO nota_entrada_doc_referenciado'
      
        '  (id_nota_entrada, id_empresa, item, tipo_doc, chave_nfe, numer' +
        'o_ecf, numero_cupom_ecf, id_situacao)'
      'VALUES'
      
        '  (:id_nota_entrada, :id_empresa, :item, :tipo_doc, :chave_nfe, ' +
        ':numero_ecf, :numero_cupom_ecf, :id_situacao)')
    SQLDelete.Strings = (
      'DELETE FROM nota_entrada_doc_referenciado'
      'WHERE'
      '  id_nota_entrada = :Old_id_nota_entrada AND item = :Old_item')
    SQLUpdate.Strings = (
      'UPDATE nota_entrada_doc_referenciado'
      'SET'
      
        '  id_nota_entrada = :id_nota_entrada, id_empresa = :id_empresa, ' +
        'item = :item, tipo_doc = :tipo_doc, chave_nfe = :chave_nfe, nume' +
        'ro_ecf = :numero_ecf, numero_cupom_ecf = :numero_cupom_ecf, id_s' +
        'ituacao = :id_situacao'
      'WHERE'
      '  id_nota_entrada = :Old_id_nota_entrada AND item = :Old_item')
    SQLLock.Strings = (
      'SELECT * FROM nota_entrada_doc_referenciado'
      'WHERE'
      '  id_nota_entrada = :Old_id_nota_entrada AND item = :Old_item'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT id_nota_entrada, id_empresa, item, tipo_doc, chave_nfe, n' +
        'umero_ecf, numero_cupom_ecf, id_situacao FROM nota_entrada_doc_r' +
        'eferenciado'
      'WHERE'
      '  id_nota_entrada = :id_nota_entrada AND item = :item')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM nota_entrada_doc_referenciado'
      ''
      ') t')
    SQL.Strings = (
      
        'select id_nota_entrada, id_empresa, item, tipo_doc, chave_nfe, n' +
        'umero_ecf, numero_cupom_ecf, id_situacao'
      'from nota_entrada_doc_referenciado'
      
        'where id_nota_entrada=:id_nota_entrada and id_empresa=:id_empres' +
        'a and item=:item ')
    OnNewRecord = qrCadastroNewRecord
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_nota_entrada'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'id_empresa'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'item'
        Value = nil
      end>
    object qrCadastroid_nota_entrada: TIntegerField
      FieldName = 'id_nota_entrada'
      Required = True
    end
    object qrCadastroid_empresa: TIntegerField
      FieldName = 'id_empresa'
      Required = True
    end
    object qrCadastroitem: TIntegerField
      FieldName = 'item'
      Required = True
    end
    object qrCadastrotipo_doc: TWideStringField
      FieldName = 'tipo_doc'
      Required = True
      Size = 3
    end
    object qrCadastrochave_nfe: TWideStringField
      FieldName = 'chave_nfe'
      Size = 100
    end
    object qrCadastronumero_ecf: TIntegerField
      FieldName = 'numero_ecf'
    end
    object qrCadastronumero_cupom_ecf: TIntegerField
      FieldName = 'numero_cupom_ecf'
    end
    object qrCadastroid_situacao: TIntegerField
      FieldName = 'id_situacao'
      Required = True
    end
  end
end
