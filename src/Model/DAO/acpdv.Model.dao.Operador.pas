unit acpdv.Model.dao.Operador;

interface

uses
   system.Generics.Collections,
   Data.DB,
   acpdv.Model.dao.interfaces,
   acpdv.Model.conexao;

type
  TDAOOperador = class(TInterfacedObject, iDAO<TOperador>)
  private
    FOperador: TOperador;
    FOperadors: TObjectList<TOperador>;
    FConexao: TConexao;
    FDataSet: TDataSet;

  public
    constructor Create;
    destructor Destroy; override;
    class function New: iDAO<TOperador>;
    function Listar : iDAO<TOperador>;
    function ListarPorId(Id : Variant) : iDAO<TOperador>;
    function Excluir(aId : Variant) : iDAO<TOperador>; overload;
    function Excluir : iDAO<TOperador>; overload;
    function Atualizar : iDAO<TOperador>;
    function Inserir : iDAO<TOperador>;
    function DataSource(var DataSource : TDataSource) : iDAO<TOperador>;
    function This : TOperador;
    function These: TObjectList<TOperador>;

end;

implementation

constructor TDAOOperador.Create;
begin
    FOperador:= TOperador.New;
    FOperadors:= TObjectList<TOperador>.Create;
    FConexao:= TConexao.New;
end;

destructor TDAOOperador.Destroy;
begin
    FOperador.Free;
    FOperadors.Free;
    FConexao.Free;
    inherited;
end;

class function TDAOOperador.New: iDAO<TOperador>;
begin
  Result := Self.Create;
end;

function TDAOOperador.Listar : iDAO<TOperador>;
begin
    Result := Self;
    FDataSet :=
    FConexao.SQL('select * from Operador')
      .Open.DataSet;

    FDataSet.First;
    while not FDataSet.Eof do
    begin
      FDataSet.Next;
    end;
end;

function TDAOOperador.ListarPorId(Id : Variant) : iDAO<TOperador>;
begin
    Result := Self;
    FDataSet :=
      FConexao.SQL('select * from Operador where id=:id')
      .Params('id', id)
      .Open.DataSet;
end;

function TDAOOperador.Excluir(aId : Variant) : iDAO<TOperador>;
begin
    Result := Self;
      FConexao
      .SQL('Delete from Operador where id=:id')
      .Params('id',Id)
      .ExecSQL;
end;

function TDAOOperador.Excluir : iDAO<TOperador>;
begin
    Result := Self;
      FConexao
      .SQL('Delete from Operador where id=:id')
      .Params('id',FOperador.GetId)
      .ExecSQL;
end;

function TDAOOperador.Atualizar : iDAO<TOperador>;
begin
    Result := Self;
    FConexao
     .SQL()
     .Params()
     .ExecSQL;
end;

function TDAOOperador.Inserir : iDAO<TOperador>;
begin
    Result := Self;
      FDataSet :=
    FConexao.SQL()
      .ExecSQL
      .SQL()
      .Open.DataSet;
end;

function TDAOOperador.DataSource(var DataSource : TDataSource) : iDAO<TOperador>;
begin
    Result := Self;
    DataSource.DataSet := FDataSet;
end;

function TDAOOperador.This : TOperador;
begin
    Result := FOperador;
end;

function TDAOOperador.These: TObjectList<TOperador>;
begin
    Result := FOperadors;
end;


end.

