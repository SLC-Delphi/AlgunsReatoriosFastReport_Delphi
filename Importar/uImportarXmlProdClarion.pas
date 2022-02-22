unit uImportarXmlProdClarion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Buttons, ExtCtrls, Grids;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    SpBtn_Abrir: TSpeedButton;
    Stgr_Produtos: TStringGrid;
    REdit_Xml: TRichEdit;
    procedure SpBtn_AbrirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.SpBtn_AbrirClick(Sender: TObject);
VAR
  viContar, viTotalLinhas, viPosicaoFinal, viNumeroLinhas : Integer;
  vsLinha  : String;
  vsTagInicial, vsTagFinal, vsTagCapturada: array [1..7] of String;
  vbAchou : Boolean;
begin
  REdit_Xml.Lines.LoadFromFile('C:\DUPLAFACE_019\Importar\produtos_n.XML');
  viTotalLinhas := REdit_Xml.Lines.Count   ;
  Stgr_Produtos.ColWidths[0] := 41;
  Stgr_Produtos.ColWidths[1] := 99;
  Stgr_Produtos.ColWidths[2] := 60;
  Stgr_Produtos.ColWidths[3] := 299;
  Stgr_Produtos.ColWidths[4] := 60;
  Stgr_Produtos.ColWidths[5] := 79;
  Stgr_Produtos.ColWidths[6] := 70;
  Stgr_Produtos.ColWidths[7] := 79;

  Stgr_Produtos.Cells[1,0] := 'CodBarras';
  Stgr_Produtos.Cells[2,0] := 'Unid';
  Stgr_Produtos.Cells[3,0] := 'Produto';
  Stgr_Produtos.Cells[4,0] := 'ClassFis';
  Stgr_Produtos.Cells[5,0] := 'QTD';
  Stgr_Produtos.Cells[6,0] := 'PrecoUnit';
  Stgr_Produtos.Cells[7,0] := 'PrecoTotal';
  viNumeroLinhas := 1;
  for viContar :=1 to viTotalLinhas do
  begin
    vsLinha := TRIM(REdit_Xml.lines.Strings[viContar]);
    vsTagInicial [1] := '<qinv_codigo>';
    vsTagFinal [1]   :=  '</qinv_codigo>';
    vsTagCapturada[1] := copy(vsLinha,1,13) ;
    vsTagInicial [2] := '<qinv_unidade>';
    vsTagFinal [2]   :=  '</qinv_unidade>';
    vsTagCapturada[2] := copy(vsLinha,1,14) ;
    vsTagInicial [2] := '<qinv_unidade>';
    vsTagFinal [2]   :=  '</qinv_unidade>';
    vsTagInicial [3] := '<qinv_nome>';
    vsTagFinal [3]   :=  '</qinv_nome>';
    vsTagCapturada[3] := copy(vsLinha,1,11) ;
    vsTagInicial [4] := '<qinv_clas_fis>';
    vsTagFinal [4]   :=  '</qinv_clas_fis>';
    vsTagCapturada[4] := copy(vsLinha,1,15);
    vsTagInicial [5] := '<qinv_qtd>';
    vsTagFinal [5]   :=  '</qinv_qtd>';
    vsTagCapturada[5] := copy(vsLinha,1,10);
    vsTagInicial [6] := '<qinv_unitario>';
    vsTagFinal [6]   :=  '</qinv_unitario>';
    vsTagCapturada[6] := copy(vsLinha,1,15);
    vsTagInicial [7] := '<qinv_total>';
    vsTagFinal [7]   :=  '</qinv_total>';
    vsTagCapturada[7] := copy(vsLinha,1,12);
    vbAchou := False;
    if  vsTagCapturada[1] = vsTagInicial[1]  then
    begin
      viPosicaoFinal := pos(vsTagFinal[1], vsLinha);
      Stgr_Produtos.Cells[1,viNumeroLinhas] := trim(copy(vsLinha,14,viPosicaoFinal-14));
    end else
    if  vsTagCapturada[2] = vsTagInicial[2]  then
    begin
      viPosicaoFinal := pos(vsTagFinal[2], vsLinha);
      Stgr_Produtos.Cells[2,viNumeroLinhas] := trim(copy(vsLinha,15,viPosicaoFinal-15));
    end else
    if  vsTagCapturada[3] = vsTagInicial[3]  then
    begin
      viPosicaoFinal := pos(vsTagFinal[3], vsLinha);
      Stgr_Produtos.Cells[3,viNumeroLinhas] := trim(copy(vsLinha,12,viPosicaoFinal-12));
    end else
    if  vsTagCapturada[4] = vsTagInicial[4]  then
    begin
      viPosicaoFinal := pos(vsTagFinal[4], vsLinha);
      Stgr_Produtos.Cells[4,viNumeroLinhas] := trim(copy(vsLinha,16,viPosicaoFinal-16));
    end else
    if  vsTagCapturada[5] = vsTagInicial[5]  then
    begin
      viPosicaoFinal := pos(vsTagFinal[5], vsLinha);
      Stgr_Produtos.Cells[5,viNumeroLinhas] := trim(copy(vsLinha,11,viPosicaoFinal-11));
    end else
    if  vsTagCapturada[6] = vsTagInicial[6]  then
    begin
      viPosicaoFinal := pos(vsTagFinal[6], vsLinha);
      Stgr_Produtos.Cells[6,viNumeroLinhas] := trim(copy(vsLinha,16,viPosicaoFinal-16));
    end else
    if  vsTagCapturada[7] = vsTagInicial[7]  then
    begin
      viPosicaoFinal := pos(vsTagFinal[7], vsLinha);
      Stgr_Produtos.Cells[7,viNumeroLinhas] := trim(copy(vsLinha,13,viPosicaoFinal-13));
      vbAchou := True;
    end;
    Stgr_Produtos.Cells[0,viNumeroLinhas] := intTOstr(viNumeroLinhas);
    if vbAchou then
      viNumeroLinhas := viNumeroLinhas +1;
  end;
  Stgr_Produtos.RowCount := viNumeroLinhas;
  Stgr_Produtos.Repaint;
end;

end.
