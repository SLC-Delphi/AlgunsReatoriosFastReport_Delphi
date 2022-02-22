program Project2;

uses
  Forms,
  uMenuPedidoProdOrcVendas in 'uMenuPedidoProdOrcVendas.pas' {_F_PedidosProOrcVen},
  uRelatoriosPedProdOrcVendas in 'uRelatoriosPedProdOrcVendas.pas' {_F_RelatorioPedProOrcVenda};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(T_F_PedidosProOrcVen, _F_PedidosProOrcVen);
  Application.CreateForm(T_F_RelatorioPedProOrcVenda, _F_RelatorioPedProOrcVenda);
  Application.Run;
end.
