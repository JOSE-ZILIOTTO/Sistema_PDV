unit SistemaPDV.Model.DAO.Adquirente;

interface

uses
  SistemaPDV.Model.DAO.Entidade.Adquirente, Data.DB,
  SistemaPDV.Model.DAO.interfaces, System.Generics.Collections,
  SistemaPDV.Model.Conexao;

type

  TDAOAdquirente = class(TinterfacedObject, iDAO<TAdquirente>)
  private
    FAdquirente: TAdquirente;
    FAdquirentes: TobjectList<TAdquirente>;
    FConexao: TConexao;
    FDataset: TDataset;

  public
    constructor Create;
    destructor Destroy; override;
    Class function new: iDAO<TAdquirente>;
    function listar: iDAO<TAdquirente>;
    function ListarPorId(aid: variant): iDAO<TAdquirente>;
    function excluir(aid: variant): iDAO<TAdquirente>; overload;
    function excluir: iDAO<TAdquirente>; overload;
    function Atualizar: iDAO<TAdquirente>;
    function inserir: iDAO<TAdquirente>;
    function datasource(var datasource: Tdatasource): iDAO<TAdquirente>;
    function Dataset : TDataset;
    function This: TAdquirente;
    function These: TobjectList<TAdquirente>;
  end;

implementation

function TDAOAdquirente.Atualizar: iDAO<TAdquirente>;
begin
  result := self;
  FConexao.SQL('UPDATE ADQUIRENTE SET ID_POS=? , DESCRICAO=? , CNPJ=? , MERCHANTID=?' +
    ',CHAVE_REQUISICAO=?, WHERE ID=?')
    .Params(0, FAdquirente.GetId)
    .Params(1, FAdquirente.GetIdPos)
    .Params(2, FAdquirente.Getdescricao)
    .Params(3, FAdquirente.GetCNPJ)
    .Params(4, FAdquirente.GetMerchantId)
    .Params(5, FAdquirente.GetChaveRequisicao).ExecSql;

end;

Constructor TDAOAdquirente.Create;
begin
  FAdquirente := TAdquirente.new;
  FAdquirentes := TobjectList<TAdquirente>.Create;
  FConexao := TConexao.new;
end;

function TDAOAdquirente.Dataset: TDataset;
begin
result := FDataset;
end;

function TDAOAdquirente.datasource(var datasource: Tdatasource): iDAO<TAdquirente>;
begin
  result := self;
  datasource.DataSet := FDataset;
end;

Destructor TDAOAdquirente.Destroy;
begin
  FAdquirente.Free;
  FAdquirentes.Free;
  FConexao.Free;
  Inherited
end;

function TDAOAdquirente.excluir: iDAO<TAdquirente>;
begin
  result := self;
  FConexao.SQL('DELETE FROM ADQUIRENTE WHERE ID=:ID ').Params('ID', FAdquirente.GetId).ExecSql;
end;

function TDAOAdquirente.excluir(aid: variant): iDAO<TAdquirente>;
begin
  result := self;
  FConexao.SQL('DELETE FROM ADQUIRENTE WHERE ID=:ID ').Params('ID', aid).ExecSql;
end;

function TDAOAdquirente.inserir: iDAO<TAdquirente>;
begin
  result := self;
  FDataset := FConexao.SQL('INSERT INTO ADQUIRENTE ' + '(ID_POS,DESCRICAO,CNPJ,MERCHANTID,CHAVE_REQUISICAO) ' +
    'VALUES(:ID_POS,:DESCRICAO,:CNPJ,:MERCHANTID,:CHAVE_REQUISICAO) ').

    Params('ID_POS', FAdquirente.GetIdPos).Params('DESCRICAO', FAdquirente.Getdescricao)
    .Params('CNPJ', FAdquirente.GetCNPJ).Params('MERCHANTID', FAdquirente.GetMerchantId)
    .Params('CHAVE_REQUISICAO', FAdquirente.GetChaveRequisicao)
    .ExecSql.SQL('select * from ADQUIRENTE where id = (select max(id) from ADQUIRENTE)').Open.DataSet;

  FAdquirente.SetId(FDataset.FieldByName('ID').AsInteger);
end;

function TDAOAdquirente.listar: iDAO<TAdquirente>;
begin
  result := self;
  FDataset := FConexao.SQL('select * from ADQUIRENTE').Open.DataSet;

  FDataset.First;

  while not FDataset.Eof do
  begin

    FAdquirentes.Add(TAdquirente.new
    .SetId(FDataset.FieldByName('id').AsInteger)
    .SetIdPos(FDataset.FieldByName('id_pos').AsInteger)
    .Setdescricao(FDataset.FieldByName('descricao').AsString)
    .SetCNPJ(FDataset.FieldByName('cnpj').AsString)
    .SetMerchantId(FDataset.FieldByName('merchantid').AsString)
    .SetChaveRequisicao(FDataset.FieldByName('chave_requisicao').AsString));

    FDataset.Next;

  end;

end;

function TDAOAdquirente.ListarPorId(aid: variant): iDAO<TAdquirente>;
begin
  result := self;

  FDataset :=
  FConexao.SQL('select * from ADQUIRENTE WHERE ID = :ID ')
  .Params('id', aid).Open.DataSet;

  FAdquirente
    .SetId(FDataset.FieldByName('id').AsInteger)
    .SetIdPos(FDataset.FieldByName('id_pos').AsInteger)
    .Setdescricao(FDataset.FieldByName('descricao').AsString)
    .SetCNPJ(FDataset.FieldByName('cnpj').AsString)
    .SetMerchantId(FDataset.FieldByName('merchantid').AsString)
    .SetChaveRequisicao(FDataset.FieldByName('chave_requisicao').AsString);
end;

Class function TDAOAdquirente.new: iDAO<TAdquirente>;
begin
  result := self.Create;

end;

function TDAOAdquirente.These: TobjectList<TAdquirente>;
begin
  result := FAdquirentes;
end;

function TDAOAdquirente.This: TAdquirente;
begin
 result := FAdquirente;
end;

end.
