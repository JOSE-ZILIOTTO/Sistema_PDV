# Sistema PDV

Aplicação de **frente de caixa** escrita em **Delphi (VCL)** para operações de ponto de venda.  
O sistema reúne telas para:

- Login de operador
- Identificação de cliente
- Abertura e fechamento de caixa
- Lançamento de itens de venda
- Fluxo de pagamento com suporte a **dinheiro**, **cartão** e **PIX**

A base do código está organizada em unidades Delphi (`.pas/.dfm`), separando **regras de negócio**, **componentes visuais** e **utilitários**.

---

## 🧱 Arquitetura do projeto

O projeto segue uma organização em camadas:

- **Controller**
  - Orquestra o fluxo entre as telas (view) e as regras de negócio (model).
  - Exemplos: controlador de operadores (`SistemaPDV.controller.operador`) e controladores de caixa/venda.

- **Model**
  - Entidades de negócio (Caixa, Operador, Venda, Itens, etc.).
  - Enums e tipos auxiliares, como:
    - `SistemaPDV.Model.Caixa`: controla informações de turno, status de abertura, hora de início/fim, operador responsável, etc.
    - `SistemaPDV.Model.Enum`: centraliza enums, incluindo os tipos de pagamento suportados.
  - Data modules de conexão e acesso a dados.

- **Model/DAO**
  - Objetos responsáveis pela comunicação com o banco de dados.
  - Cada DAO expõe métodos que retornam datasets usados pelas telas (por exemplo, consulta de caixas, operadores, itens fiscais).

- **Utils**
  - Helpers genéricos para reaproveitamento em várias telas, como:
    - `TFormHelper`: incorpora formulários dentro de `TPanel`, evitando múltiplas janelas.
    - `TException`/`TrataException`: captura exceções, grava log e exibe mensagens amigáveis ao operador.

- **view**
  - Formulários VCL que compõem a interface gráfica.
  - Exemplos:
    - `SistemaPDV.view.Principal`: tela principal da aplicação.
    - Telas de login, identificação de cliente, abertura/fechamento de caixa, pagamento, configuração, importação de clientes etc.

---

## 📁 Estrutura de pastas

```text
src/
├─ Controller/      # Controladores e orquestração de data modules
│   ├─ SistemaPDV.controller.operador.pas
│   └─ ...
├─ Model/           # Entidades, enums, DAOs e módulos de conexão
│   ├─ Caixa/
│   ├─ Enum/
│   ├─ Conexao/
│   └─ ...
├─ Utils/           # Utilidades de UI e tratamento de erros
│   ├─ SistemaPDV.Utils.FormHelper.pas
│   ├─ SistemaPDV.Utils.TrataException.pas
│   └─ ...
└─ view/            # Formulários VCL (telas e componentes visuais)
    ├─ SistemaPDV.view.Principal.pas/dfm
    ├─ SistemaPDV.view.Login.pas/dfm
    ├─ SistemaPDV.view.Pagamento.pas/dfm
    └─ ...
