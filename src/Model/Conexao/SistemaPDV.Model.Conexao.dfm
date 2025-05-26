object Conexao: TConexao
  OnCreate = DataModuleCreate
  Height = 136
  Width = 287
  object FDConnection1: TFDConnection
    Params.Strings = (
      'LockingMode=Normal'
      
        'Database=C:\Users\SRP2\Documents\JoseProjects\JoseSistemaPDV\db\' +
        'database.db'
      'DriverID=SQLite')
    Connected = True
    LoginPrompt = False
    Left = 112
    Top = 48
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * From operador')
    Left = 208
    Top = 40
  end
end
