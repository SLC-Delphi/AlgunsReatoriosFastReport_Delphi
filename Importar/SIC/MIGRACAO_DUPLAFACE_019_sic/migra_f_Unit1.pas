unit migra_f_Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, DBTables, Grids, DBGrids, IBDatabase,
  IBCustomDataSet, IBQuery;

type
  Tmigra = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    TTb_PRO: TTable;
    DS_PRO: TDataSource;
    TTB_LINHA: TTable;
    DS_LINHA: TDataSource;
    TTB_FORNECEDORES: TTable;
    DS_FORNECEDORES: TDataSource;
    TTb_CLIENTE: TTable;
    DS_CLIENTES: TDataSource;
    Label2: TLabel;
    ED_ORIGEM: TEdit;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    DBGrid4: TDBGrid;
    BitBtn5: TBitBtn;
    Label1: TLabel;
    DBG_REC: TDBGrid;
    IBQ_CONTAS_RECEBER: TIBQuery;
    IBDatabase1: TIBDatabase;
    IBTransaction1: TIBTransaction;
    TABLE_REC: TTable;
    DS_REC: TDataSource;
    Button1: TButton;
    Button2: TButton;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  migra: Tmigra;

implementation

uses DM;

{$R *.dfm}

procedure Tmigra.BitBtn2Click(Sender: TObject);
begin
    TTB_LINHA.DatabaseName:=ED_ORIGEM.Text;
          TTB_LINHA.Open;
         DM1.IB_DF_LINHA.Open;
            DS_LINHA.Enabled:=true;

          DS_LINHA.DataSet.First;
          WHILE NOT (DS_LINHA.DataSet.Eof) DO
          BEGIN
              DM1.IB_DF_LINHA.SQL.Clear;
                  DM1.IB_DF_LINHA.sql.add (' insert into LINHA_PRODUTOS ( CODEMPRESA, LINHA_PRODUTOS )');
                  DM1.IB_DF_LINHA.sql.add (' values (  :CODEMPRESA, :LINHA_PRODUTOS )');

                  DM1.IB_DF_LINHA.parambyname('CODEMPRESA').asstring   := '1';
                  DM1.IB_DF_LINHA.parambyname('LINHA_PRODUTOS').asstring   := DS_LINHA.DataSet.FIELDBYNAME('LIN_PROD').AsString;

                 DM1.IB_DF_LINHA.execsql;
              DS_LINHA.DataSet.Next;
          END;   // WHILE NOT(DM1.IBQ_TC.Eof) DO
          DM1.IB_DF_LINHA.SQL.CLEAR;
          DM1.IB_DF_LINHA.SQL.Add('COMMIT');
          DM1.IB_DF_LINHA.execsql;
          SHOWMESSAGE('LINHA DE PRODUTOS - OK');
end;

procedure Tmigra.BitBtn4Click(Sender: TObject);
begin
         TTB_PRO.DatabaseName:=ED_ORIGEM.Text;
          TTb_PRO.Open ;
          DM1.IBQ_DF_PRODUTOS.Open;
          DS_PRO.Enabled:=true;
          DS_PRO.DataSet.First;

          WHILE NOT(DS_PRO.DataSet.Eof) DO
          BEGIN
          try
              DM1.IBQ_DF_PRODUTOS.SQL.Clear;


                            DM1.IBQ_DF_PRODUTOS.sql.add (' insert into PRODUTOS ( CODEMPRESA, CODLINHA,  LINHA, PRODUTO, ESTOQUE, UNIDADE, CUSTO, VENDA, OBSERVACAO, ');
                            DM1.IBQ_DF_PRODUTOS.sql.add (' CODPROD , LIBERACAO , PROMOCAO ,  MARGEN, PRECO_PROMOCIONAL  , DESCONTO, COR , TAMANHO, EXTENDIDA,  ');
                            DM1.IBQ_DF_PRODUTOS.sql.add ('  QTD_EXTENDIDA, DESMENBRAMENTO, KIT_PRODUTO, TIPO_PRODUTO, QTD_FAB, QTD_LOJ, QTD_DEP, ATACADO,  MARCA, FORNECEDOR, COMISSAO,');
                            DM1.IBQ_DF_PRODUTOS.sql.add (' FOTO, FORMULA, END_FABRICA , END_LOJA, END_DEPOSITO,  PRAZO_V, BALANCA, ETIQUETA) ');

                            DM1.IBQ_DF_PRODUTOS.sql.add (' values (  :CODEMPRESA, :CODLINHA, :LINHA, :PRODUTO, :ESTOQUE, :UNIDADE, :CUSTO, :VENDA, :OBSERVACAO ,  ');
                            DM1.IBQ_DF_PRODUTOS.sql.add (' :CODPROD , :LIBERACAO , :PROMOCAO ,  :MARGEN, :PRECO_PROMOCIONAL  , :DESCONTO, :COR , :TAMANHO,     ');
                            DM1.IBQ_DF_PRODUTOS.sql.add (' :EXTENDIDA, :QTD_EXTENDIDA, :DESMENBRAMENTO, :KIT_PRODUTO, :TIPO_PRODUTO, :QTD_FAB, :QTD_LOJ, :QTD_DEP, :ATACADO, :MARCA, :FORNECEDOR, :COMISSAO,');
                            DM1.IBQ_DF_PRODUTOS.sql.add ('  :FOTO , :FORMULA, :END_FABRICA , :END_LOJA, :END_DEPOSITO,  :PRAZO_V, :BALANCA, :ETIQUETA )    ');

                            DM1.IBQ_DF_PRODUTOS.parambyname('CODEMPRESA').asstring        := '1';
                            DM1.IBQ_DF_PRODUTOS.parambyname('CODLINHA').asstring          := '';
                            DM1.IBQ_DF_PRODUTOS.parambyname('LINHA').asstring             := '';
                            DM1.IBQ_DF_PRODUTOS.parambyname('PRODUTO').asstring           := UPPERCASE(TRIM(COPY(DS_PRO.DataSet.FIELDBYNAME('PRODUTO').AsString,0,80)));
                            DM1.IBQ_DF_PRODUTOS.parambyname('ESTOQUE').asstring           := STRINGREPLACE(DS_PRO.DataSet.FIELDBYNAME('QUANTIDADE').AsString,',','.',[rfReplaceAll]);
                            DM1.IBQ_DF_PRODUTOS.parambyname('UNIDADE').asstring           := (DS_PRO.DataSet.FIELDBYNAME('UNIDADE').AsString);
                            DM1.IBQ_DF_PRODUTOS.parambyname('CUSTO').asstring             := STRINGREPLACE(DS_PRO.DataSet.FIELDBYNAME('PRECOCUSTO').AsString,',','.',[rfReplaceAll]);
//                            DM1.IBQ_DF_PRODUTOS.parambyname('VENDA').asstring             := STRINGREPLACE(DS_PRO.DataSet.FIELDBYNAME('VL_VEND').AsString,',','.',[rfReplaceAll]);
                            DM1.IBQ_DF_PRODUTOS.parambyname('VENDA').asstring             := STRINGREPLACE(DS_PRO.DataSet.FIELDBYNAME('PRECOVENDA').AsString,',','.',[rfReplaceAll]);
                            DM1.IBQ_DF_PRODUTOS.parambyname('OBSERVACAO').asstring        := '' ;
                            DM1.IBQ_DF_PRODUTOS.parambyname('CODPROD').asstring           := (FORMATFLOAT('00000',DS_PRO.DataSet.FIELDBYNAME('CODIGO').ASFLOAT));
                            DM1.IBQ_DF_PRODUTOS.parambyname('LIBERACAO').asstring         := 'ATIVO' ;
                            DM1.IBQ_DF_PRODUTOS.parambyname('PROMOCAO').asstring          := 'NÃO' ;
                            DM1.IBQ_DF_PRODUTOS.parambyname('MARGEN').asstring            := STRINGREPLACE(FLOATTOSTR((DS_PRO.DataSet.FIELDBYNAME('PRECOCUSTO').asfloat/DS_PRO.DataSet.FIELDBYNAME('PRECOVENDA').asfloat)*100),',','.',[rfReplaceAll]); ;
                            DM1.IBQ_DF_PRODUTOS.parambyname('PRECO_PROMOCIONAL').asstring := '0' ;
                            DM1.IBQ_DF_PRODUTOS.parambyname('DESCONTO').asstring          := '0' ;
                            DM1.IBQ_DF_PRODUTOS.parambyname('COR').asstring               := '' ;
                            DM1.IBQ_DF_PRODUTOS.parambyname('TAMANHO').asstring           := '' ;

                            DM1.IBQ_DF_PRODUTOS.parambyname('EXTENDIDA').asstring         := 'SIMPLES' ;
                            DM1.IBQ_DF_PRODUTOS.parambyname('QTD_EXTENDIDA').asstring     := '0' ;

                            DM1.IBQ_DF_PRODUTOS.parambyname('DESMENBRAMENTO').asstring     := 'NÃO' ;
                            DM1.IBQ_DF_PRODUTOS.parambyname('KIT_PRODUTO').asstring        := 'NÃO' ;
                            DM1.IBQ_DF_PRODUTOS.parambyname('TIPO_PRODUTO').asstring       := 'VENDA NORMAL' ;

                            DM1.IBQ_DF_PRODUTOS.parambyname('QTD_FAB').asstring       := '0';
                            DM1.IBQ_DF_PRODUTOS.parambyname('QTD_LOJ').asstring       := STRINGREPLACE(DS_PRO.DataSet.FIELDBYNAME('QUANTIDADE').AsString,',','.',[rfReplaceAll]); ;
                            DM1.IBQ_DF_PRODUTOS.parambyname('QTD_DEP').asstring       := '0' ;
//                            DM1.IBQ_DF_PRODUTOS.parambyname('ATACADO').asstring       :=  '0';
                            DM1.IBQ_DF_PRODUTOS.parambyname('ATACADO').asstring       := STRINGREPLACE(DS_PRO.DataSet.FIELDBYNAME('PRECOVENDA').AsString,',','.',[rfReplaceAll]);
                            DM1.IBQ_DF_PRODUTOS.parambyname('MARCA').asstring         :=  UPPERCASE(TRIM(DS_PRO.DataSet.FIELDBYNAME('FABRICANTE').AsString));
                            DM1.IBQ_DF_PRODUTOS.parambyname('FORNECEDOR').asstring    := '';
                            DM1.IBQ_DF_PRODUTOS.parambyname('COMISSAO').asstring      := '0';
                            DM1.IBQ_DF_PRODUTOS.ParamByName('FOTO').ASSTRING          := '';
                            DM1.IBQ_DF_PRODUTOS.ParamByName('FORMULA').ASSTRING       := 'NÃO';
                            DM1.IBQ_DF_PRODUTOS.ParamByName('END_FABRICA').ASSTRING   := '' ;
                            DM1.IBQ_DF_PRODUTOS.ParamByName('END_LOJA').ASSTRING      := '' ;
                            DM1.IBQ_DF_PRODUTOS.ParamByName('END_DEPOSITO').ASSTRING  := '' ;
                            DM1.IBQ_DF_PRODUTOS.ParamByName('PRAZO_V').ASSTRING       := STRINGREPLACE(floattostr(DS_PRO.DataSet.FIELDBYNAME('precovenda').asfloat*1.1),',','.',[rfReplaceAll]);  ;
                            DM1.IBQ_DF_PRODUTOS.ParamByName('BALANCA').ASSTRING  := '0'  ;
                            DM1.IBQ_DF_PRODUTOS.ParamByName('ETIQUETA').ASSTRING  := '0'  ;

                           DM1.IBQ_DF_PRODUTOS.execsql;
                except end;
              DS_PRO.DataSet.Next;
          END;   // WHILE NOT(DM1.IBQ_TC.Eof) DO
          DM1.IBQ_DF_PRODUTOS.SQL.CLEAR;
          DM1.IBQ_DF_PRODUTOS.SQL.Add('COMMIT');
          DM1.IBQ_DF_PRODUTOS.execsql;
        SHOWMESSAGE('PRODUTOS - OK');
end;

procedure Tmigra.BitBtn1Click(Sender: TObject);
begin
 TTB_CLIENTE.DatabaseName:=ED_ORIGEM.Text;
            TTb_CLIENTE.open;
            DS_CLIENTES.Enabled:=true;

          DM1.IBQ_DF_CLIENTES.Open;
          DS_CLIENTES.DataSet.First;
          WHILE NOT (DS_CLIENTES.DataSet.Eof) DO
          BEGIN
          try
                    DM1.IBQ_DF_CLIENTES.SQL.Clear;
                    DM1.IBQ_DF_CLIENTES.sql.add (' insert into CLIENTES (CLIENTE, CODEMPRESA, FANTASIA, ENDERECO, NUMERO, COMPLEMENTO, BAIRRO,  CIDADE,  ESTADO, CEP,   ');
                    DM1.IBQ_DF_CLIENTES.sql.add ('  TELEFONE, CELULAR, FAX, MAIL, CNPJ, INSC_EST, INSC_MUN, OBSERVACAO, RESPONSAVEL, NIVER_RESP, CPF_RESP,  ');
                              DM1.IBQ_DF_CLIENTES.sql.add ('  RG_RESP, CONTATO, TEL_CONTATO, MAIL_CONTATO, NIVER_CONTATO, LIMITE, ATIVO, SINTEGRA  , PERCENTUAL , TABELA , VENDEDOR, CODBUSC,   ');
                              DM1.IBQ_DF_CLIENTES.sql.add ('  END_ENTREGA,NUM_ENTREGA , COMPL_ENTREGA , BAIR_ENTREGA, CID_ENTREGA, EST_ENTREGA, CEP_ENTREGA , ENTREGA , COBRANCA ,    ');
                              DM1.IBQ_DF_CLIENTES.sql.add ('  END_COBRA, NUM_COBRA, COMPL_COBRA, BAIR_COBRA , CID_COBRA, EST_COBRA , CEP_COBRA      ) ');

                              DM1.IBQ_DF_CLIENTES.sql.add (' values (  :CLIENTE, :CODEMPRESA, :FANTASIA, :ENDERECO, :NUMERO, :COMPLEMENTO, :BAIRRO, :CIDADE, :ESTADO, :CEP,        ');
                              DM1.IBQ_DF_CLIENTES.sql.add ('           :TELEFONE, :CELULAR, :FAX, :MAIL, :CNPJ, :INSC_EST, :INSC_MUN, :OBSERVACAO , :RESPONSAVEL,     ');
                              DM1.IBQ_DF_CLIENTES.sql.add ('           :NIVER_RESP, :CPF_RESP,  :RG_RESP,  :CONTATO, :TEL_CONTATO, :MAIL_CONTATO,  :NIVER_CONTATO, :LIMITE  ,     ');
                              DM1.IBQ_DF_CLIENTES.sql.add ('           :ATIVO, :SINTEGRA, :PERCENTUAL, :TABELA , :VENDEDOR, :CODBUSC ,     ');
                              DM1.IBQ_DF_CLIENTES.sql.add ('           :END_ENTREGA,:NUM_ENTREGA , :COMPL_ENTREGA , :BAIR_ENTREGA, :CID_ENTREGA, :EST_ENTREGA, :CEP_ENTREGA , :ENTREGA , :COBRANCA , ');
                              DM1.IBQ_DF_CLIENTES.sql.add ('           :END_COBRA, :NUM_COBRA, :COMPL_COBRA, :BAIR_COBRA , :CID_COBRA, :EST_COBRA , :CEP_COBRA      )  ');

                             DM1.IBQ_DF_CLIENTES.parambyname('CODEMPRESA').asstring   := '1';
                             DM1.IBQ_DF_CLIENTES.parambyname('CLIENTE').asstring      := UPPERCASE(TRIM(DS_CLIENTES.DataSet.FIELDBYNAME('NOME').AsString));
                             DM1.IBQ_DF_CLIENTES.parambyname('FANTASIA').asstring     := UPPERCASE(TRIM(DS_CLIENTES.DataSet.FIELDBYNAME('NOME').AsString));
                             DM1.IBQ_DF_CLIENTES.parambyname('ENDERECO').asstring     := UPPERCASE(TRIM(DS_CLIENTES.DataSet.FIELDBYNAME('ENDERECO').AsString));
                             DM1.IBQ_DF_CLIENTES.parambyname('NUMERO').asstring       := '0';
                             DM1.IBQ_DF_CLIENTES.parambyname('COMPLEMENTO').asstring  := '';
                             DM1.IBQ_DF_CLIENTES.parambyname('BAIRRO').asstring       := COPY((DS_CLIENTES.DataSet.FIELDBYNAME('BAIRRO').AsString),1,40);
                             DM1.IBQ_DF_CLIENTES.parambyname('CIDADE').asstring       := UPPERCASE(TRIM(DS_CLIENTES.DataSet.FIELDBYNAME('CIDADE').AsString));
                             DM1.IBQ_DF_CLIENTES.parambyname('ESTADO').asstring       := UPPERCASE(TRIM(DS_CLIENTES.DataSet.FIELDBYNAME('ESTado').AsString));
                             DM1.IBQ_DF_CLIENTES.parambyname('CEP').asstring          := TRIM(DS_CLIENTES.DataSet.FIELDBYNAME('CEP').AsString);
                             DM1.IBQ_DF_CLIENTES.parambyname('TELEFONE').asstring     := COPY(TRIM(DS_CLIENTES.DataSet.FIELDBYNAME('TELEFONE').AsString),1,20);
                             DM1.IBQ_DF_CLIENTES.parambyname('CELULAR').asstring      := COPY(TRIM(DS_CLIENTES.DataSet.FIELDBYNAME('TELEFONE').AsString),1,20);
                             DM1.IBQ_DF_CLIENTES.parambyname('FAX').asstring          := COPY(TRIM(DS_CLIENTES.DataSet.FIELDBYNAME('FAX').AsString),1,20);
                             DM1.IBQ_DF_CLIENTES.parambyname('MAIL').asstring         := TRIM(DS_CLIENTES.DataSet.FIELDBYNAME('EMAIL').AsString);
                             DM1.IBQ_DF_CLIENTES.parambyname('CNPJ').asstring         := TRIM(DS_CLIENTES.DataSet.FIELDBYNAME('CGC').AsString);
                             DM1.IBQ_DF_CLIENTES.parambyname('INSC_EST').asstring     := TRIM(DS_CLIENTES.DataSet.FIELDBYNAME('INSC').AsString);
                             DM1.IBQ_DF_CLIENTES.parambyname('INSC_MUN').asstring     := '';
                             DM1.IBQ_DF_CLIENTES.parambyname('OBSERVACAO').asstring   := UPPERCASE(TRIM(DS_CLIENTES.DataSet.FIELDBYNAME('OBS').AsString));
                             DM1.IBQ_DF_CLIENTES.parambyname('RESPONSAVEL').asstring  := UPPERCASE(TRIM(DS_CLIENTES.DataSet.FIELDBYNAME('nome').AsString));
                             DM1.IBQ_DF_CLIENTES.parambyname('NIVER_RESP').asstring   := '01/01/01';
                             DM1.IBQ_DF_CLIENTES.parambyname('CPF_RESP').asstring     := '';
                             DM1.IBQ_DF_CLIENTES.parambyname('RG_RESP').asstring      := '';
                             DM1.IBQ_DF_CLIENTES.parambyname('CONTATO').asstring      := UPPERCASE(TRIM(DS_CLIENTES.DataSet.FIELDBYNAME('CONTATO').AsString));
                             DM1.IBQ_DF_CLIENTES.parambyname('TEL_CONTATO').asstring  := '';
                             DM1.IBQ_DF_CLIENTES.parambyname('MAIL_CONTATO').asstring := '';
                             DM1.IBQ_DF_CLIENTES.parambyname('NIVER_CONTATO').asstring:= '01/01/2001';
                             DM1.IBQ_DF_CLIENTES.parambyname('LIMITE').AsFloat       := 1000;

                            DM1.IBQ_DF_CLIENTES.parambyname('ATIVO').ASFLOAT :=  1;


                            DM1.IBQ_DF_CLIENTES.parambyname('SINTEGRA').ASFLOAT :=  1;

                             DM1.IBQ_DF_CLIENTES.parambyname('PERCENTUAL').asstring    := '100';


                             DM1.IBQ_DF_CLIENTES.parambyname('TABELA').asstring        := 'VAREJO';




                             DM1.IBQ_DF_CLIENTES.parambyname('VENDEDOR').asstring      := '';;
                             DM1.IBQ_DF_CLIENTES.parambyname('CODBUSC').asstring       := '0';

//                             DM1.IBQ_DF_CLIENTES.parambyname('END_ENTREGA').ASSTRING    := (DS_CLIENTES.DataSet.FIELDBYNAME('END_ENTREGA').AsString) ;
                             DM1.IBQ_DF_CLIENTES.parambyname('END_ENTREGA').ASSTRING    := '' ;
                             DM1.IBQ_DF_CLIENTES.parambyname('NUM_ENTREGA').ASSTRING    := ''     ;
                             DM1.IBQ_DF_CLIENTES.parambyname('COMPL_ENTREGA').ASSTRING  := ''   ;
                             DM1.IBQ_DF_CLIENTES.parambyname('BAIR_ENTREGA').ASSTRING   := ''    ;
                             DM1.IBQ_DF_CLIENTES.parambyname('CID_ENTREGA').ASSTRING    := ''     ;
                             DM1.IBQ_DF_CLIENTES.parambyname('EST_ENTREGA').ASSTRING    := ''    ;
                             DM1.IBQ_DF_CLIENTES.parambyname('CEP_ENTREGA').ASSTRING    := ''      ;

                              DM1.IBQ_DF_CLIENTES.parambyname('ENTREGA').ASFLOAT :=  1;


                              DM1.IBQ_DF_CLIENTES.parambyname('COBRANCA').ASFLOAT :=  1;


//                             DM1.IBQ_DF_CLIENTES.parambyname('END_COBRA').ASSTRING     := (DS_CLIENTES.DataSet.FIELDBYNAME('END_COBRANCA').AsString)    ;
                             DM1.IBQ_DF_CLIENTES.parambyname('END_COBRA').ASSTRING     := ''    ;
                             DM1.IBQ_DF_CLIENTES.parambyname('NUM_COBRA').ASSTRING     := ''     ;
                             DM1.IBQ_DF_CLIENTES.parambyname('COMPL_COBRA').ASSTRING   := ''  ;
                             DM1.IBQ_DF_CLIENTES.parambyname('BAIR_COBRA').ASSTRING    := ''   ;
                             DM1.IBQ_DF_CLIENTES.parambyname('CID_COBRA').ASSTRING     := ''    ;
                             DM1.IBQ_DF_CLIENTES.parambyname('EST_COBRA').ASSTRING     := ''    ;
                             DM1.IBQ_DF_CLIENTES.parambyname('CEP_COBRA').ASSTRING     := ''     ;


                             DM1.IBQ_DF_CLIENTES.execsql;
                         except
                         end;

                    DS_CLIENTES.DataSet.Next;
          END;   // WHILE NOT(DM1.IBQ_TC.Eof) DO
          DM1.IBQ_DF_CLIENTES.SQL.CLEAR;
          DM1.IBQ_DF_CLIENTES.SQL.Add('COMMIT');
          DM1.IBQ_DF_CLIENTES.execsql;
          SHOWMESSAGE('CLIENTES - OK');
end;

procedure Tmigra.BitBtn3Click(Sender: TObject);
begin
  TTB_FORNECEDORES.DatabaseName:=ED_ORIGEM.Text;
          TTB_FORNECEDORES.Open;
          DS_FORNECEDORES.Enabled:=true;
          DM1.IBQ_DF_FORNECEDORES.Open;
          DS_FORNECEDORES.DataSet.First;
          
          WHILE NOT (DS_FORNECEDORES.DataSet.Eof) DO
          BEGIN
                    DM1.IBQ_DF_FORNECEDORES.SQL.Clear;


                        DM1.IBQ_DF_FORNECEDORES.sql.add (' insert into FORNECEDORES ( CODEMPRESA, FORNECEDOR, FANTASIA, ENDERECO, NUMERO, COMPLEMENTO, BAIRRO,  CIDADE,  ESTADO, CEP,   ');
                        DM1.IBQ_DF_FORNECEDORES.sql.add ('  TELEFONE, CELULAR, FAX, MAIL, CNPJ, INSC_EST, INSC_MUN, CONTATO, TEL_CONTATO, MAIL_CONTATO, OBSERVACAO  )  ');

                        DM1.IBQ_DF_FORNECEDORES.sql.add (' values (  :CODEMPRESA, :FORNECEDOR,  :FANTASIA, :ENDERECO, :NUMERO, :COMPLEMENTO, :BAIRRO, :CIDADE, :ESTADO, :CEP,        ');
                        DM1.IBQ_DF_FORNECEDORES.sql.add ('           :TELEFONE, :CELULAR, :FAX, :MAIL, :CNPJ, :INSC_EST, :INSC_MUN, :CONTATO, :TEL_CONTATO, :MAIL_CONTATO, :OBSERVACAO )    ');

                        DM1.IBQ_DF_FORNECEDORES.parambyname('CODEMPRESA').asstring   := '1';
                        DM1.IBQ_DF_FORNECEDORES.parambyname('FORNECEDOR').asstring   := COPY(UPPERCASE(TRIM(DS_FORNECEDORES.DataSet.FIELDBYNAME('EMPRESA').AsString)),1,80);
                        DM1.IBQ_DF_FORNECEDORES.parambyname('FANTASIA').asstring     := COPY(UPPERCASE(TRIM(DS_FORNECEDORES.DataSet.FIELDBYNAME('EMPRESA').AsString)),1,80);
                        DM1.IBQ_DF_FORNECEDORES.parambyname('ENDERECO').asstring     := COPY(UPPERCASE(TRIM(DS_FORNECEDORES.DataSet.FIELDBYNAME('ENDERECO').AsString)),1,80);
                        DM1.IBQ_DF_FORNECEDORES.parambyname('NUMERO').asstring       := ''   ;
                        DM1.IBQ_DF_FORNECEDORES.parambyname('COMPLEMENTO').asstring  := ''  ;
                        DM1.IBQ_DF_FORNECEDORES.parambyname('BAIRRO').asstring       := UPPERCASE(TRIM((DS_FORNECEDORES.DataSet.FIELDBYNAME('BAIRRO').AsString)));
                        DM1.IBQ_DF_FORNECEDORES.parambyname('CIDADE').asstring       := UPPERCASE(TRIM((DS_FORNECEDORES.DataSet.FIELDBYNAME('CIDADE').AsString)));
                        DM1.IBQ_DF_FORNECEDORES.parambyname('ESTADO').asstring       := (DS_FORNECEDORES.DataSet.FIELDBYNAME('ESTado').AsString);
                        DM1.IBQ_DF_FORNECEDORES.parambyname('CEP').asstring          := COPY((DS_FORNECEDORES.DataSet.FIELDBYNAME('CEP').AsString),1,10);
                        DM1.IBQ_DF_FORNECEDORES.parambyname('TELEFONE').asstring     := COPY((DS_FORNECEDORES.DataSet.FIELDBYNAME('TELEFONE').AsString),1,20);
                        DM1.IBQ_DF_FORNECEDORES.parambyname('CELULAR').asstring      := '';
                        DM1.IBQ_DF_FORNECEDORES.parambyname('FAX').asstring          := COPY((DS_FORNECEDORES.DataSet.FIELDBYNAME('Fax').AsString),1,20);
                        DM1.IBQ_DF_FORNECEDORES.parambyname('MAIL').asstring         := (DS_FORNECEDORES.DataSet.FIELDBYNAME('EMAIL').AsString);
                        DM1.IBQ_DF_FORNECEDORES.parambyname('CNPJ').asstring         := (DS_FORNECEDORES.DataSet.FIELDBYNAME('CGC').AsString);
                        DM1.IBQ_DF_FORNECEDORES.parambyname('INSC_EST').asstring     := (DS_FORNECEDORES.DataSet.FIELDBYNAME('INSC').AsString);
                        DM1.IBQ_DF_FORNECEDORES.parambyname('INSC_MUN').asstring     := '' ;
                        DM1.IBQ_DF_FORNECEDORES.parambyname('CONTATO').asstring      := (DS_FORNECEDORES.DataSet.FIELDBYNAME('CONTATO').AsString);
                        DM1.IBQ_DF_FORNECEDORES.parambyname('TEL_CONTATO').asstring  := '';
                        DM1.IBQ_DF_FORNECEDORES.parambyname('MAIL_CONTATO').asstring := ''  ;
                        DM1.IBQ_DF_FORNECEDORES.parambyname('OBSERVACAO').asstring   := '';//(DS_FORNECEDORES.DataSet.FIELDBYNAME('OBSERVACAO').AsString)   ;

                        DM1.IBQ_DF_FORNECEDORES.execsql;

                    DS_FORNECEDORES.DataSet.Next;
          END;   // WHILE NOT(DM1.IBQ_TC.Eof) DO
          DM1.IBQ_DF_FORNECEDORES.SQL.CLEAR;
          DM1.IBQ_DF_FORNECEDORES.SQL.Add('COMMIT');
          DM1.IBQ_DF_FORNECEDORES.execsql;
          SHOWMESSAGE('FORNECEDORES - OK');
end;

procedure Tmigra.BitBtn5Click(Sender: TObject);
VAR
    VC_QUERY: STRING;
    VI_CONTAR: INTEGER;
begin
    IBQ_CONTAS_RECEBER.Close;
    IBQ_CONTAS_RECEBER.Open;
    TABLE_REC.Close;
    TABLE_REC.Open;
    TABLE_rEC.First;
    DS_REC.DataSet.First;
    VI_CONTAR :=0;
    WHILE NOT(DS_REC.DataSet.Eof) DO
    BEGIN
          {
          CODEMPRESA = 1
          DT_VENCIMENTO   =         VENCIMENTO
          DT_VENDA        =         DATA
          NOTA            =         '____Nº'+ORCAMENTO
          DOCUMENTO       =         '____Nº'+ORCAMENTO
          VALOR_NOTA      =          VALOR
          VALOR_VENCIMENTO=          VALOR
          TIPO            =           'DADOS ANTIGOS'
          HISTORICO       =           DOCUMENTO
          CODCL           =           '_____ANTIGO____'
          CLIENTE         =           NOME
          ORIGEM_TIPO     =           'ANTIGO'
          ORIGEM_NUMERO   =           ORCAMENTO
          }

          TRY

          IF  ((DS_REC.DataSet.FIELDBYNAME('sit').AsString)<> 'RECEBIDAS' )  
           and (not(DS_REC.DataSet.FIELDBYNAME('CLIENTE').AsString='')) THEN
          BEGIN
                  VI_CONTAR := VI_CONTAR+1;
                  LABEL1.Caption:= INTTOSTR(VI_CONTAR);
                  LABEL1.Refresh;
                 // FORM1.Refresh;
                VC_QUERY:=  'INSERT INTO CONTAS_RECEBER (CODEMPRESA, DT_VENCIMENTO, DT_VENDA, NOTA, DOCUMENTO, VALOR_NOTA, VALOR_VENCIMENTO'
                            +', TIPO, HISTORICO, CODCL, CLIENTE, ORIGEM_TIPO, ORIGEM_NUMERO ) '
                            + ' VALUES (1'
                            +' , ' +CHR(39)+ STRINGREPLACE(DS_REC.DataSet.FIELDBYNAME('DT_VENC').AsString,'/','.',[rfReplaceAll, rfIgnoreCase])       +CHR(39)
                            +' , ' +CHR(39)+ STRINGREPLACE(DS_REC.DataSet.FIELDBYNAME('DT_VENC').AsString,'/','.',[rfReplaceAll, rfIgnoreCase])       +CHR(39)
                            +' , ' + CHR(39)+  '____Nº'+DS_REC.DataSet.FIELDBYNAME('NUM_OR').AsString + CHR(39)
                            +' , ' + CHR(39)+  '____Nº'+DS_REC.DataSet.FIELDBYNAME('NUM_OR').AsString + CHR(39)
                            +' , ' + CHR(39)+ STRINGREPLACE(DS_REC.DataSet.FIELDBYNAME('VL_VENC').AsString,',','.',[rfReplaceAll, rfIgnoreCase])       +CHR(39)
                            +' , ' + CHR(39)+ STRINGREPLACE(DS_REC.DataSet.FIELDBYNAME('VL_VENC').AsString,',','.',[rfReplaceAll, rfIgnoreCase])       +CHR(39)
                            +' , ' + CHR(39)+  'DADOS ANTIGOS' + CHR(39)
                            +' , ' + CHR(39)+ DS_REC.DataSet.FIELDBYNAME('CODDOC').AsString + CHR(39)
                            +' , ' + CHR(39)+  '_____ANTIGO____' + CHR(39)
                            +' , ' + CHR(39)+ DS_REC.DataSet.FIELDBYNAME('CLIENTE').AsString + CHR(39)
                            +' , ' + CHR(39)+  'ANTIGO' + CHR(39)
                            +' , ' + CHR(39)+ DS_REC.DataSet.FIELDBYNAME('NUM_OR').AsString + CHR(39)
                            +' );' ;
                IBQ_CONTAS_RECEBER.SQL.Clear;
                IBQ_CONTAS_RECEBER.SQL.Add(VC_QUERY);

                IBQ_CONTAS_RECEBER.ExecSQL;



          END; //          IF  (DS_REC.DataSet.FIELDBYNAME(TIPO).AsString)='A' THEN

           EXCEPT END;

           
           DS_REC.DataSet.Next;
    END; //   WHILE NOT(DS_REC.DataSet.Eof) DO


    IBQ_CONTAS_RECEBER.SQL.Clear;
    IBQ_CONTAS_RECEBER.SQL.Add('COMMIT');
    IBQ_CONTAS_RECEBER.ExecSQL;
    SHOWMESSAGE ('DADOS MIGRADOS');

end;

procedure Tmigra.Button1Click(Sender: TObject);
begin
BitBtn1Click(SENDER);
BitBtn2Click(Sender);
BitBtn3Click(Sender);
BitBtn4Click(Sender);
BitBtn5Click(Sender);
SHOWMESSAGE('FINAL');
CLOSE;
APPLICATION.TERMINATE;

end;

procedure Tmigra.Button2Click(Sender: TObject);
begin
 DM1.IBQ_DF_PRODUTOS.SQL.CLEAR;
          DM1.IBQ_DF_PRODUTOS.SQL.Add('rollback');
          DM1.IBQ_DF_PRODUTOS.execsql;
end;

end.
