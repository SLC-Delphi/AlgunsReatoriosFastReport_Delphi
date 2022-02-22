unit uMenuPedidoProdOrcVendas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, ExtCtrls, DB, IBDatabase,
  IBCustomDataSet, IBQuery, ImgList;

type
  T_F_PedidosProOrcVen = class(TForm)
    IBQ_TituloVendas: TIBQuery;
    DS_TituloVendas: TDataSource;
    DS_ProdutosNaVenda: TDataSource;
    IBQ_ProdutosNaVenda: TIBQuery;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    DBG_ProdutosNaVenda: TDBGrid;
    DBG_Titulo_Vendas: TDBGrid;
    BT_Ok: TButton;
    BTN_Todos: TButton;
    DBG_ListaDeProdutos: TDBGrid;
    BTN_Agrupa: TButton;
    BTN_Resumo: TButton;
    BTN_Limpa: TButton;
    IBQ_ListaDeTodosProdutos: TIBQuery;
    DS_ListaDeTodosProdutos: TDataSource;
    LA_NumeroVenda: TLabel;
    IBQ_PPOV_Resumo2: TIBQuery;
    DS_PPOVRseumo2: TDataSource;
    IBQ_PPOV_Agrupa: TIBQuery;
    DS_Agrupa: TDataSource;
    IBQ_Empresa: TIBQuery;
    DS_EMPRESA: TDataSource;
    DS_Orcamento: TDataSource;
    IBQ_Orcamento: TIBQuery;
    DS_PPOVRseumo1: TDataSource;
    IBQ_PPOV_Resumo1: TIBQuery;
    IBTransaction1: TIBTransaction;
    IBDatabase1: TIBDatabase;
    imgList_Check: TImageList;
    procedure AbrirOrcamentoRelat ();
    procedure MostaLista ();
    procedure OcultaLista (vs_Ocultar : String);
    procedure MostraProdutosNaVenda (vs_numero: string );
    procedure FormCreate(Sender: TObject);
    procedure DBG_Titulo_VendasCellClick(Column: TColumn);
    procedure BTN_LimpaClick(Sender: TObject);
    procedure BTN_TodosClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BTN_AgrupaClick(Sender: TObject);
    procedure BTN_ResumoClick(Sender: TObject);
    procedure DBG_Titulo_VendasDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  _F_PedidosProOrcVen: T_F_PedidosProOrcVen;

implementation

uses uRelatoriosPedProdOrcVendas{, DM_UNIT};

{$R *.dfm}
///-----------------------
///  BLOCO DE FUNÇÕES ----
procedure T_F_PedidosProOrcVen.AbrirOrcamentoRelat ();
begin
    IBQ_Orcamento.Close;
    IBQ_Orcamento.SQL.Clear;
    IBQ_Orcamento.SQL.Add('SELECT * '
                           + ' FROM Orcamento '
                           + ' WHERE (Situacao = ''ABERTA'') AND (flag_pedidoprodvendas=''SIM''); ' );
    IBQ_Orcamento.Prepare;
    IBQ_Orcamento.Open;
END;


procedure T_F_PedidosProOrcVen.MostaLista ();
VAR
    vs_QuerySql : String ;
begin
    IBQ_ListaDeTodosProdutos.Close;
    IBQ_ListaDeTodosProdutos.SQL.Clear;
    vs_QuerySql := 'SELECT ORCE.numero, PRO.produto, OP.quantidade, OP.cor '
                   + ' FROM ORCAMENTO_PROD as OP, produtos as PRO, orcamento as ORCE '
                   + ' WHERE (PRO.Codigo = OP.cod_prod_serv) and ( ORCE.flag_pedidoprodvendas=''SIM'') AND (ORCE.numero = OP.numero) '
                   + '  ORDER BY ORCE.numero;';
    IBQ_ListaDeTodosProdutos.SQL.Add(vs_QuerySql);
    IBQ_ListaDeTodosProdutos.Prepare;
    IBQ_ListaDeTodosProdutos.Open;
    DBG_ListaDeProdutos.Repaint;
end;


procedure T_F_PedidosProOrcVen.OcultaLista(vs_Ocultar: string) ;
var
    vsQuerySql : String ;
begin
    IBQ_TituloVendas.Close;
    IBQ_TituloVendas.SQL.Clear;
    IF vs_Ocultar = 'SIM' THEN
        vsQuerySql := 'UPDATE ORCAMENTO SET FLAG_PEDIDOPRODVENDAS = ''NAO'' WHERE (FLAG_PEDIDOPRODVENDAS = ''SIM'') AND (situacao = ''ABERTA'') ;'
    ELSE
        vsQuerySql := 'UPDATE ORCAMENTO SET FLAG_PEDIDOPRODVENDAS = ''SIM'' WHERE (FLAG_PEDIDOPRODVENDAS = ''NAO'') AND (situacao = ''ABERTA'') ;';
    IBQ_TituloVendas.SQL.Add(vsQuerySql);
    IBQ_TituloVendas.ExecSQL;
    IBQ_TituloVendas.SQL.Clear;
    IBQ_TituloVendas.SQL.Clear;
    vsQuerySql := 'Commit ;';
    IBQ_TituloVendas.SQL.Add(vsQuerySql);
    IBQ_TituloVendas.ExecSQL;
        IBQ_TituloVendas.SQL.Clear;
        IBQ_TituloVendas.SQL.Add('SELECT * FROM Orcamento WHERE Situacao = ''ABERTA'';');
        IBQ_TituloVendas.Prepare;
        IBQ_TituloVendas.Open;

        IBQ_ListaDeTodosProdutos.Close;
        IBQ_ListaDeTodosProdutos.SQL.Clear;
end;


procedure T_F_PedidosProOrcVen.MostraProdutosNaVenda (vs_numero: string );
begin
    IBQ_ProdutosNaVenda.Close;
    IBQ_ProdutosNaVenda.SQL.Clear;
    IBQ_ProdutosNaVenda.SQL.Add('SELECT PRO.produto, OP.quantidade, OP.cor  FROM ORCAMENTO_PROD as OP, produtos as PRO  WHERE (PRO.Codigo = OP.cod_prod_serv) and ( OP.Numero=' +#39+vs_Numero+#39+ ')   ORDER BY OP.Codigo ;'  );
    IBQ_ProdutosNaVenda.Prepare;
    IBQ_ProdutosNaVenda.Open;
end;

///--------------------------------------
///  BLOCO DE EVENTOS E PROPRIEDADES ----
procedure T_F_PedidosProOrcVen.FormCreate(Sender: TObject);
VAR
    vsQuerySql, vsNumero : String ;
begin
    IBDatabase1.ForceClose;
    IBDatabase1.Open;
    IBDatabase1.Connected := True;
    if (IBTransaction1.Active) = False then
        IBTransaction1.StartTransaction;


    IBQ_TituloVendas.Close;
    IBQ_TituloVendas.SQL.Clear;
    vsQuerySql := 'UPDATE ORCAMENTO SET FLAG_PEDIDOPRODVENDAS = ''NAO'' WHERE FLAG_PEDIDOPRODVENDAS IS NULL ;';
    IBQ_TituloVendas.SQL.Add(vsQuerySql);
    IBQ_TituloVendas.ExecSQL;
    IBQ_TituloVendas.SQL.Clear;
    vsQuerySql := 'Commit ;';
    IBQ_TituloVendas.SQL.Add(vsQuerySql);
    IBQ_TituloVendas.ExecSQL;
    IBQ_TituloVendas.SQL.Clear;
    IBQ_TituloVendas.SQL.Add('SELECT * FROM Orcamento WHERE Situacao = ''ABERTA'';');
    IBQ_TituloVendas.Prepare;
    IBQ_TituloVendas.Open;
    IBQ_TituloVendas.First;
    vsNumero := '' ;
    vsNumero := IBQ_TituloVendas.FieldByName('NUMERO').AsString;
    LA_NumeroVenda.Caption := 'Número: '+ vsNumero;
    Self.MostraProdutosNaVenda(vsNumero);
    IBQ_ProdutosNaVenda.First;
//    if (dm.IBTransaction1.Active) = False then
//        dm.IBTransaction1.StartTransaction;
    if (IBTransaction1.Active) = False then
        IBTransaction1.StartTransaction;
end;
  
procedure T_F_PedidosProOrcVen.FormActivate(Sender: TObject);
begin
    if (IBTransaction1.Active) = False then
        IBTransaction1.StartTransaction;
end;

procedure T_F_PedidosProOrcVen.FormShow(Sender: TObject);
begin
//    self.OcultaLista('SIM');
    self.MostaLista ();
end;


procedure T_F_PedidosProOrcVen.DBG_Titulo_VendasCellClick(Column: TColumn);
var
    vsQuerySql, vsNumero, vsFLAG_PEDIDOPRODVENDAS : String ;
begin
    try
        vsNumero := '' ;
        vsNumero := IBQ_TituloVendas.FieldByName('NUMERO').AsString;
        vsFLAG_PEDIDOPRODVENDAS := IBQ_TituloVendas.FieldByName('FLAG_PEDIDOPRODVENDAS').AsString;
        IBQ_TituloVendas.Close;
        IBQ_TituloVendas.SQL.Clear;
        if  TRIM(vsFLAG_PEDIDOPRODVENDAS) = 'NAO' THEN
            vsQuerySql := 'UPDATE ORCAMENTO SET FLAG_PEDIDOPRODVENDAS = ''SIM'' WHERE (Numero=' +#39+vsNumero+#39+ ');'
        ELSE
            vsQuerySql := 'UPDATE ORCAMENTO SET FLAG_PEDIDOPRODVENDAS = ''NAO'' WHERE (Numero=' +#39+vsNumero+#39+ ');';
        IBQ_TituloVendas.SQL.Add(vsQuerySql);
        IBQ_TituloVendas.ExecSQL;
        IBQ_TituloVendas.SQL.Clear;
        vsQuerySql := 'Commit ;';
        IBQ_TituloVendas.SQL.Add(vsQuerySql);
        IBQ_TituloVendas.ExecSQL;
        IBQ_TituloVendas.SQL.Clear;
        IBQ_TituloVendas.SQL.Add('SELECT * FROM Orcamento WHERE Situacao = ''ABERTA'';');
        IBQ_TituloVendas.Prepare;
        IBQ_TituloVendas.Open;
        IBQ_TituloVendas.Locate('NUMERO',vsNumero,[]);
       Self.MostraProdutosNaVenda(vsNumero);
        self.MostaLista ();
    except
        showmessage('Não há ítens nesta venda');
    end;
end;


procedure T_F_PedidosProOrcVen.BTN_LimpaClick(Sender: TObject);
begin
    self.OcultaLista('SIM');
    self.MostaLista ();
end;


procedure T_F_PedidosProOrcVen.BTN_TodosClick(Sender: TObject);
begin
    self.OcultaLista('NAO');
    self.MostaLista ();
end;


procedure T_F_PedidosProOrcVen.BTN_AgrupaClick(Sender: TObject);
begin
    self.AbrirOrcamentoRelat ();
    //
    //-- > PPOV = Pedido de Produção a partir de uma Orçamento de Venda
    //
    IBQ_PPOV_Agrupa.Close;
    IBQ_PPOV_Agrupa.SQL.Clear;
    IBQ_PPOV_Agrupa.SQL.Add('SELECT  PRO.produto, OP.quantidade, OP.qtd_un, OP.cor, ORCE.Cliente '
                            +' FROM ORCAMENTO_PROD as OP, produtos as PRO, orcamento as ORCE '
                            +' WHERE (PRO.Codigo = OP.cod_prod_serv) and ( ORCE.flag_pedidoprodvendas=''SIM'') AND (ORCE.numero = OP.numero) '
                            +' ORDER BY PRO.produto; ' );
    IBQ_PPOV_Agrupa.Prepare;
    IBQ_PPOV_Agrupa.Open;

    uRelatoriosPedProdOrcVendas._F_RelatorioPedProOrcVenda.FRX_PPOV_Agrupa.PrepareReport(True);
    uRelatoriosPedProdOrcVendas._F_RelatorioPedProOrcVenda.FRX_PPOV_Agrupa.ShowReport;
end;

procedure T_F_PedidosProOrcVen.BTN_ResumoClick(Sender: TObject);
begin
    self.AbrirOrcamentoRelat ();
    //
    //-- > PPOV = Pedido de Produção a partir de uma Orçamento de Venda
    //
    // > Baby
    IBQ_PPOV_Resumo1.Close;
    IBQ_PPOV_Resumo1.SQL.Clear;
    IBQ_PPOV_Resumo1.SQL.Add('SELECT count(PGRADE.produto) AS qtd'
     +' FROM  orcamento as ORCE, orcamento_prod_grade as PGRADE '
     +' WHERE ( ORCE.flag_pedidoprodvendas=''SIM'') '
     +'   AND (ORCE.NUMERO = PGRADE.NUMERO) '
     +'   AND(PGRADE.grade = '''') ');
    IBQ_PPOV_Resumo1.Prepare;
    IBQ_PPOV_Resumo1.Open;
    IF (IBQ_PPOV_Resumo1.FieldByName('qtd').AsInteger > 0) then
    begin
        IBQ_PPOV_Resumo1.Close;
        IBQ_PPOV_Resumo1.SQL.Clear;
        IBQ_PPOV_Resumo1.SQL.Add('SELECT PGRADE.produto, PGRADE.total, PGRADE.numero, '
         +'    PGRADE.N_PP, PGRADE.N_P, PGRADE.N_M, PGRADE.N_G, PGRADE.N_GG, PGRADE.N_GGEXP '
         +'    , PGRADE.N17_18, PGRADE.N19_20, PGRADE.N21_22, PGRADE.N23_24  '
         +'    , PGRADE.GRADE, PGRADE.TOTAL '
         +' FROM  orcamento as ORCE, orcamento_prod_grade as PGRADE '
         +' WHERE ( ORCE.flag_pedidoprodvendas=''SIM'') '
         +'   AND (ORCE.NUMERO = PGRADE.NUMERO) '
         +'   AND(PGRADE.grade = '''') '
         +' ORDER BY PGRADE.produto ' );
        IBQ_PPOV_Resumo1.Prepare;
        IBQ_PPOV_Resumo1.Open;
        uRelatoriosPedProdOrcVendas._F_RelatorioPedProOrcVenda.FRX_PPOV_ResumoBab.IniFile := 'C:\DUPLAFACE_019\RELATORIOS\PedidoProdVendas\PedidoProdVenda_ResumoBab1.fr3' ;
        uRelatoriosPedProdOrcVendas._F_RelatorioPedProOrcVenda.FRX_PPOV_ResumoBab.PrepareReport(True);
        uRelatoriosPedProdOrcVendas._F_RelatorioPedProOrcVenda.FRX_PPOV_ResumoBab.ShowReport;
    END;
    // > Infantil
    IBQ_PPOV_Resumo1.Close;
    IBQ_PPOV_Resumo1.SQL.Clear;
    IBQ_PPOV_Resumo1.SQL.Add('SELECT count(PGRADE.produto) AS qtd'
     +' FROM  orcamento as ORCE, orcamento_prod_grade as PGRADE '
     +' WHERE ( ORCE.flag_pedidoprodvendas=''SIM'') '
     +'   AND (ORCE.NUMERO = PGRADE.NUMERO) '
     +'   AND(PGRADE.grade = ''INFANTIL'') ' );
    IBQ_PPOV_Resumo1.Prepare;
    IBQ_PPOV_Resumo1.Open;
    IF (IBQ_PPOV_Resumo1.FieldByName('qtd').AsInteger > 0) then
    begin
        IBQ_PPOV_Resumo1.Close;
        IBQ_PPOV_Resumo1.SQL.Clear;
        IBQ_PPOV_Resumo1.SQL.Add('SELECT PGRADE.produto, PGRADE.total, PGRADE.numero, '
         +'    PGRADE.N_PP, PGRADE.N_P, PGRADE.N_M, PGRADE.N_G, PGRADE.N_GG, PGRADE.N_GGEXP '
         +'    , PGRADE.N_19, PGRADE.N_20, PGRADE.N_21, PGRADE.N_22, PGRADE.N_23, PGRADE.N_24, PGRADE.N_25, PGRADE.N_26 '
         +'    , PGRADE.N_27, PGRADE.N_28, PGRADE.N_29, PGRADE.N_30, PGRADE.N_31, PGRADE.N_32, PGRADE.N_33A '
         +'    , PGRADE.GRADE, PGRADE.TOTAL '
         +' FROM  orcamento as ORCE, orcamento_prod_grade as PGRADE '
         +' WHERE ( ORCE.flag_pedidoprodvendas=''SIM'') '
         +'   AND (ORCE.NUMERO = PGRADE.NUMERO) '
         +'   AND(PGRADE.grade = ''INFANTIL'') '
         +' ORDER BY PGRADE.produto ' );
        IBQ_PPOV_Resumo1.Prepare;
        IBQ_PPOV_Resumo1.Open;
        uRelatoriosPedProdOrcVendas._F_RelatorioPedProOrcVenda.FRX_PPOV_ResumoInf.IniFile := 'C:\DUPLAFACE_019\RELATORIOS\PedidoProdVendas\PedidoProdVenda_ResumoInf1.fr3' ;
        uRelatoriosPedProdOrcVendas._F_RelatorioPedProOrcVenda.FRX_PPOV_ResumoInf.PrepareReport(True);
        uRelatoriosPedProdOrcVendas._F_RelatorioPedProOrcVenda.FRX_PPOV_ResumoInf.ShowReport;
    END;
    // > Adulto
    IBQ_PPOV_Resumo1.Close;
    IBQ_PPOV_Resumo1.SQL.Clear;
    IBQ_PPOV_Resumo1.SQL.Add('SELECT count(PGRADE.produto) AS qtd'
     +' FROM  orcamento as ORCE, orcamento_prod_grade as PGRADE '
     +' WHERE ( ORCE.flag_pedidoprodvendas=''SIM'') '
     +'   AND (ORCE.NUMERO = PGRADE.NUMERO) '
     +'   AND(PGRADE.grade = ''ADULTO'')' );
    IBQ_PPOV_Resumo1.Prepare;
    IBQ_PPOV_Resumo1.Open;
    IF (IBQ_PPOV_Resumo1.FieldByName('qtd').AsInteger > 0) then
    begin
        IBQ_PPOV_Resumo1.Close;
        IBQ_PPOV_Resumo1.SQL.Clear;
        IBQ_PPOV_Resumo1.SQL.Add('SELECT PGRADE.produto, PGRADE.total, PGRADE.numero, '
         +'    PGRADE.N_PP, PGRADE.N_P, PGRADE.N_M, PGRADE.N_G, PGRADE.N_GG, PGRADE.N_GGEXP '
         +'    , PGRADE.N_33, PGRADE.N_34, PGRADE.N_35, PGRADE.N_36 , PGRADE.N_37, PGRADE.N_38, PGRADE.N_39, PGRADE.N_40 '
         +'    , PGRADE.N_41, PGRADE.N_42, PGRADE.N_43, PGRADE.N_44, PGRADE.N_45, PGRADE.N_46, PGRADE.N_47, PGRADE.N_48 '
         +'    , PGRADE.GRADE, PGRADE.TOTAL '
         +' FROM  orcamento as ORCE, orcamento_prod_grade as PGRADE '
         +' WHERE ( ORCE.flag_pedidoprodvendas=''SIM'') '
         +'   AND (ORCE.NUMERO = PGRADE.NUMERO) '
         +'   AND(PGRADE.grade = ''ADULTO'') '
         +' ORDER BY PGRADE.produto ' );
        IBQ_PPOV_Resumo1.Prepare;
        IBQ_PPOV_Resumo1.Open;
        uRelatoriosPedProdOrcVendas._F_RelatorioPedProOrcVenda.FRX_PPOV_ResumoAd.IniFile := 'C:\DUPLAFACE_019\RELATORIOS\PedidoProdVendas\PedidoProdVenda_ResumoAd1.fr3' ;
        uRelatoriosPedProdOrcVendas._F_RelatorioPedProOrcVenda.FRX_PPOV_ResumoAd.PrepareReport(False);
        uRelatoriosPedProdOrcVendas._F_RelatorioPedProOrcVenda.FRX_PPOV_ResumoAd.ShowReport;
    END;

end;

procedure T_F_PedidosProOrcVen.DBG_Titulo_VendasDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
   RCheckBox : TRect;
begin
   if (Column.Title.Caption='FLAG') then
   begin
      DBG_Titulo_Vendas.Canvas.FillRect(Rect);
      if (DS_TituloVendas.DataSet.FieldByName('FLAG_PEDIDOPRODVENDAS').AsString = 'SIM') THEN
         imgList_Check.Draw(DBG_Titulo_Vendas.Canvas, Rect.Left +10, Rect.Top +1,1)
      else
         imgList_Check.Draw(DBG_Titulo_Vendas.Canvas, Rect.Left +10, Rect.Top +1,0);
   end;
end;

end.

  

