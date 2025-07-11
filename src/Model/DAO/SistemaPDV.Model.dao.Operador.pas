unit SistemaPDV.Model.dao.Operador;

interface

uses
  System.SysUtils,
  system.Generics.Collections,
  Data.DB,
  Vcl.Dialogs,
  SistemaPDV.Model.dao.interfaces,
  SistemaPDV.Model.conexao,
  acpdv.Model.Entidade.Operador;

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
    class function new : TDAOOperador;
    function Listar : iDAO<TOperador>;
    function ListarPorId(Id: Variant): iDAO<TOperador>;
    function Excluir(aId: Variant): iDAO<TOperador>; overload;
    function Excluir: iDAO<TOperador>; overload;
    function Atualizar: iDAO<TOperador>;
    function Inserir: iDAO<TOperador>;
    function DataSource(var DataSource: TDataSource): iDAO<TOperador>;
    function DataSet: TDataSet;
    function This: TOperador;
    function These: TObjectList<TOperador>;
  end;

implementation

constructor TDAOOperador.Create;
begin
  FOperador := TOperador.New;
  FOperadors := TObjectList<TOperador>.Create;
  FConexao := TConexao.New;
end;

destructor TDAOOperador.Destroy;
begin
  FOperador.Free;
  FOperadors.Free;
  FConexao.Free;
  inherited;
end;

function TDAOOperador.Listar : iDAO<TOperador>;
begin

  FDataSet := FConexao.SQL('select * from OPERADOR').Open.DataSet;

  if FDataSet.IsEmpty then
  ShowMessage('Tabela Operador est� vazia ou query falhou.');

  FDataSet.First;
  while not FDataSet.Eof do
  begin
    FOperador.SetId(FDataSet.FieldByName('ID').AsInteger)
      .SetNome(FDataSet.FieldByName('NOME').AsString)
      .SetSenha(FDataSet.FieldByName('SENHA').AsString);

    FDataSet.Next;
  end;

  Result := Self;
end;

function TDAOOperador.ListarPorId(Id: Variant): iDAO<TOperador>;
begin
  Result := Self;
  FDataSet := FConexao.SQL('select * from Operador where id=?')
  .Params(0, Id)
    .Open.DataSet;

  FOperador.SetId(FDataSet.FieldByName('ID').AsInteger)
    .SetNome(FDataSet.FieldByName('nome').AsString)
    .SetSenha(FDataSet.FieldByName('senha').AsString);
end;


class function TDAOOperador.new: TDAOOperador;
begin
result := self.Create;
end;

function TDAOOperador.Excluir(aId: Variant): iDAO<TOperador>;
begin
  Result := Self;
  FConexao.SQL('Delete from Operador where id=?').Params(0, aId).ExecSQL;
end;

function TDAOOperador.Excluir: iDAO<TOperador>;
begin
  Result := Self;
  FConexao.SQL('Delete from Operador where id=?')
    .Params(0, FOperador.GetId).ExecSQL;
end;

function TDAOOperador.Atualizar: iDAO<TOperador>;
begin
  Result := Self;
  FConexao.SQL('update operador set nome=?, senha=? where id=?')
    .Params(0, FOperador.GetNome)
    .Params(1, FOperador.GetSenha)
    .Params(2, FOperador.GetId)
    .ExecSQL;
end;

function TDAOOperador.Inserir: iDAO<TOperador>;
begin
  Result := Self;
  FDataSet :=
   FConexao.SQL('insert into operador (nome,senha) value (?,?)')
   .ExecSQL
   .SQL('select * from operador where id=(select max(id) from operador)')
   .Open.DataSet;

  FOperador.SetId(FDataSet.FieldByName('id').AsInteger)
  .SetNome(FDataSet.FieldByName('nome').AsString)
  .SetSenha(FDataSet.FieldByName('senha').AsString);
end;

function TDAOOperador.DataSet: TDataSet;
begin
  Result := FDataSet;
end;

function TDAOOperador.DataSource(var DataSource: TDataSource): iDAO<TOperador>;
begin
  Result := Self;
  DataSource.DataSet := FDataSet;
end;

function TDAOOperador.This: TOperador;
begin
  Result := FOperador;
end;

function TDAOOperador.These: TObjectList<TOperador>;
begin
  Result := FOperadors;
end;

end.
