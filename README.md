# Calculadora Flutter

## Aluno
Barbara B. Simioni

## Disciplina
Desenvolvimento de Dispositivos Móveis

## Descrição da Atividade
Atividade prática da disciplina, com o objetivo de criar um projeto Flutter, executá-lo em um emulador/dispositivo Android, versioná-lo com Git e publicá-lo em um repositório público no GitHub.

## Descrição da Aplicação
Aplicativo de calculadora simples desenvolvido em Flutter. O usuário informa dois números, seleciona uma operação matemática e visualiza o resultado calculado diretamente na tela, sem sair do aplicativo.

## Funcionalidades Implementadas
- Entrada de dois números através de campos de texto (`TextField`)
- Seleção da operação matemática através de botões (soma, subtração, multiplicação, divisão, potência e resto da divisão)
- Cálculo do resultado ao clicar no botão "Calcular"
- Exibição do resultado atualizado na tela (interação que altera o conteúdo apresentado)
- Tratamento de erros: valores inválidos e divisão por zero
- Interface organizada com `AppBar`, `Column`, `Row` e `Text`

## Como Executar o Projeto
1. Clonar o repositório:
````bash
   git clone https://github.com/BarbaraSimioni/calculadora-flutter.git
````
3. Acessar a pasta do projeto:
````bash
   cd calculadora-flutter
````
4. Instalar dependências:
````bash
  flutter pub get
````
5. Rodar:
````bash
  flutter run
`````

### Pré-requisitos
- [Flutter SDK](https://docs.flutter.dev/get-started/install) instalado
- Android Studio com um emulador configurado, ou um dispositivo Android físico com depuração USB ativada

