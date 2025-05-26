unit SistemaPDV.Model.DAO.interfaces;

interface

uses
  data.DB,
  system.Generics.Collections;

type
  iDAO<T: class> = interface
    function listar: iDAO<T>;
    function ListarPorId(aid: variant): iDAO<T>;
    function excluir(aid: variant): iDAO<T>; overload;
    function excluir: iDAO<T>; overload;
    function Atualizar: iDAO<T>;
    function inserir: iDAO<T>;
    function datasource(var datasource: Tdatasource): iDAO<T>;
    function Dataset : TDataset;
    function This: T;
    function These: TObjectList<T>;
  end;

implementation

end.
