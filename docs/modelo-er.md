# Modelo Entidade–Relacionamento (ER)

Este documento descreve o modelo de dados do sistema de gestão de bezerras.

O modelo foi projetado para suportar o controle individual dos animais,
automatização de rotinas (amamentação, desmame, tratamentos e descorna)
e geração de histórico para auditoria e relatórios.

## Entidades principais

- **Casinha**  
  Representa a posição física no bezerreiro, organizada em uma matriz 8x10.

- **Bezerra**  
  Identificada pelo número do brinco, associada a uma única casinha ativa.

- **Medicamento**  
  Entidade de catálogo que define regras de dosagem por intervalo de idade.

- **Tratamento**  
  Associação entre bezerra e medicamento, controlada por contagem regressiva.

- **Usuário**  
  Representa operadores e administradores do sistema.

- **Registro de Rotina**  
  Armazena o histórico de todas as ações realizadas no sistema.

## Observações importantes

- A idade da bezerra é um atributo derivado (calculado a partir da data de nascimento)
- Medicamentos não armazenam dosagens fixas, apenas regras
- As cores das casinhas refletem o estado atual da bezerra
- Todas as ações relevantes são registradas para auditoria

## Diagrama ER

O diagrama visual do modelo está disponível no arquivo:

`docs/modelo-er.png`
