+# Sistema PDV
+
+Aplicação de frente de caixa escrita em Delphi (VCL) para operações de ponto de venda. O projeto reúne telas para login, identificação de cliente, abertura e fechamento de caixa, além do fluxo de pagamento com suporte a dinheiro, cartão e pix. A base do código está organizada em unidades Delphi (`.pas/.dfm`) e concentra regras de negócio, componentes visuais e utilidades.
+
+## Visão geral da arquitetura
+- **Controller**: orquestra o acesso às entidades de negócio expostas pelos data modules, como o controlador de operadores (`SistemaPDV.controller.operador`).
+- **Model**: entidades, enums e data modules de persistência. Destaque para `SistemaPDV.Model.Caixa`, que controla informações de turno e status de abertura do caixa, e `SistemaPDV.Model.Enum`, que centraliza os tipos de pagamento suportados.
+- **Model/DAO**: componentes de acesso a dados para cada entidade (caixa, operador, itens fiscais, etc.), responsáveis por retornar datasets usados pelas telas.
+- **Utils**: helpers genéricos, como o `TFormHelper` para incorporar formulários em painéis, e o `TException` para captura e exibição de exceções com gravação em log.
+- **view**: formulários VCL que compõem a UI, incluindo a tela principal (`SistemaPDV.view.Principal`) e páginas específicas de pagamento, login, identificação e importação de clientes.
+
+A estrutura de pastas abaixo resume a organização adotada:
+
+```
+src/
+├─ Controller/   # controladores e orquestração de data modules
+├─ Model/        # entidades, enums, DAOs e módulos de conexão
+├─ Utils/        # utilidades de UI e tratamento de erros
+└─ view/         # formulários VCL (telas e componentes visuais)
+```
+
+## Requisitos
+- **Ambiente**: Windows com Delphi VCL (RAD Studio) compatível com os componentes usados no projeto.
+- **Banco de dados**: as unidades DAO assumem a existência de uma camada de conexão (módulos em `Model/Conexao`). Configure os parâmetros de acesso antes de rodar.
+
+## Como executar
+1. Abra o repositório em uma instalação do **Delphi/RAD Studio** em Windows.
+2. Importe o conjunto de unidades (`.pas/.dfm`) e configure os caminhos de pesquisa para incluir as pastas `src/Controller`, `src/Model`, `src/Utils` e `src/view`.
+3. Ajuste as configurações de conexão no módulo de configuração (consultar unidades em `src/Model/Conexao`) para apontar para o banco de dados do PDV.
+4. Compile e execute a aplicação. A tela principal (`SistemaPDV.view.Principal`) será iniciada e permitirá navegar pelos fluxos de venda, login e pagamento.
+
+## Pontos de atenção
+- O helper `TTipoPagamentoHelper` em `SistemaPDV.Model.Enum` disponibiliza conversão prática entre enumeração e `string`, garantindo consistência na escolha do método de pagamento.
+- O tratamento de exceções (`SistemaPDV.Utils.TrataException`) grava logs na pasta `Logs` e exibe mensagens ao operador; mantenha permissões de escrita no diretório da aplicação.
+- A tela principal controla ajustes de UI e configuração inicial de banco via formulário embutido; revise o código em `SistemaPDV.view.Principal` para personalizar atalhos, responsividade e ações de caixa.
+
+## Manutenção
+- Prefira criar novos componentes visuais na pasta `view/` para manter a separação de responsabilidades.
+- Reutilize os helpers de `Utils` para incorporar formulários e padronizar mensagens de erro.
+- Centralize enums e tipos comuns em `Model` para evitar duplicação entre telas e controladores.
