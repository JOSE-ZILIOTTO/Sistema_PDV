unit acpdv.Model.dao.CAIXA;

interface

uses
   system.Generics.Collections,
   Data.DB,
   SistemaPDV.Model.dao.interfaces,
   SistemaPDV.Model.conexao, acpdv.Model.Entidade.CAIXA;

type
  TDAOCaixa = class(TInterfacedObject, iDAO<TCaixa>)
  private
    FCaixa: TCaixa;
    FCaixas: TObjectList<TCaixa>;
    FConexao: TConexao;
    FDataSet: TDataSet;
  public
    constructor Create;
    destructor Destroy; override;
    class function New: iDAO<TCaixa>;
    function Listar : iDAO<TCaixa>;
    function ListarPorId(aId : Variant) : iDAO<TCaixa>;
    function Excluir(aId : Variant) : iDAO<TCaixa>; overload;
    function Excluir : iDAO<TCaixa>; overload;
    function Atualizar : iDAO<TCaixa>;
    function Inserir : iDAO<TCaixa>;
    function DataSource(var DataSource : TDataSource) : iDAO<TCaixa>;
    function This : TCaixa;
    function These: TObjectList<TCaixa>;
  end;

implementation

constructor TDAOCaixa.Create;
begin
    FCaixa:= TCaixa.New;
    FCaixas:= TObjectList<TCaixa>.Create;
    FConexao:= TConexao.New;
end;

destructor TDAOCaixa.Destroy;
begin
    FCaixa.Free;
    FCaixas.Free;
    FConexao.Free;
    inherited;
end;

class function TDAOCaixa.New: iDAO<TCaixa>;
begin
  Result := Self.Create;
end;

function TDAOCaixa.Listar : iDAO<TCaixa>;
begin
    Result := Self;
    FDataSet :=
    FConexao.SQL('select * from Caixa')
      .Open.DataSet;

    FDataSet.First;
    while not FDataSet.Eof do
    begin
      FCaixas.Add(
        TCaixa.New.SetId(FDataSet.FieldByName('id').AsInteger)
        .SetNome(FDataSet.FieldByName('nome').AsString));
      FDataSet.Next;
    end;
end;

function TDAOCaixa.ListarPorId(aId : Variant) : iDAO<TCaixa>;
begin
    Result := Self;
    FDataSet :=
      FConexao.SQL('select * from Caixa where id=:id')
      .Params('id', aid)
      .Open.DataSet;

    FCaixa
      .SetId(FDataSet.FieldByName('id').AsInteger)
      .SetNome(FDataSet.FieldByName('nome').AsString);
end;

function TDAOCaixa.Excluir(aId : Variant) : iDAO<TCaixa>;
begin
    Result := Self;
      FConexao
      .SQL('Delete from Caixa where id=:id')
      .Params('id',aId)
      .ExecSQL;
end;

function TDAOCaixa.Excluir : iDAO<TCaixa>;
begin
    Result := Self;
      FConexao
      .SQL('Delete from Caixa where id=:id')
      .Params('id',FCaixa.GetId)
      .ExecSQL;
end;

function TDAOCaixa.Atualizar : iDAO<TCaixa>;
begin
    Result := Self;
    FConexao
     .SQL('UPDATE CAIXA SET NOME=:NOME WHERE ID=:ID')
     .Params('NOME', FCaixa.GetNome)
     .Params('ID', FCaixa.GetId)
     .ExecSQL;
end;

function TDAOCaixa.Inserir : iDAO<TCaixa>;
begin
    Result := Self;
    FDataSet :=
    FConexao.SQL('INSERT INTO CAIXA (NOME) VALUES(:NOME)')
      .Params('NOME', FCaixa.GetNome)
      .ExecSQL
      .SQL('select * from caixa where id=(select max(id) from caixa)')
      .Open.DataSet;

    FCaixa.SetId(FDataSet.FieldByName('id').AsInteger);
end;

function TDAOCaixa.DataSource(var DataSource : TDataSource) : iDAO<TCaixa>;
begin
    Result := Self;
    DataSource.DataSet := FDataSet;
end;

function TDAOCaixa.This : TCaixa;
begin
    Result := FCaixa;
end;

function TDAOCaixa.These: TObjectList<TCaixa>;
begin
    Result := FCaixas;
end;


end.

