🦇 Batman Counter - Flutter + BloC

Aplicativo simples criado para aprender mais sobre o uso do Flutter BloC na gestão de estado, com base no video: https://www.youtube.com/watch?v=3bEkaRUVOeU.
O contador controla quantos Batarangs aparecem aleatoriamente na tela, com base nas ações do usuário.

🚀 Funcionalidades

Incrementar → Adiciona um Batarang à tela.
Decrementar → Remove um Batarang.
Resetar → Zera a contagem e remove todos os Batarangs.

🛠️ Tecnologias Utilizadas

Flutter
flutter_bloc

📂 Estrutura do Projeto
lib/
 ├── bloc/
 │    ├── counter_bloc.dart   # Lógica do contador
 │    ├── counter_event.dart  # Definição dos eventos
 │    └── counter_state.dart  # Definição do estado
 ├── pages/
 │    └── counter_page.dart   # Tela principal com UI
 ├── myapp.dart               # Configuração principal
 └── main.dart                # Ponto de entrada

🔄 Fluxo do BloC

Eventos (CounterEvent) → Representam as ações que o usuário pode realizar:
-CounterIncrementPressed → Incrementa o contador.
-CounterDecrementPressed → Decrementa o contador.
-CounterResetPressed → Reseta o contador para zero.

Estado (CounterState) → 
-Guarda a informação atual do contador (count). 
-Cada vez que o estado muda, a UI é reconstruída.

Bloc (CounterBloc) →
-Começa com CounterState(0).
-Escuta os eventos enviados.
-Processa o evento e emite um novo estado usando emit().

UI (BlocBuilder) → 
-Observa o estado do CounterBloc.
-Sempre que o estado muda, redesenha a tela mostrando a nova quantidade de Batarangs distribuídos aleatoriamente.

📌 Fluxo resumido:
Botão clicado → Evento enviado → Bloc processa → Novo estado emitido → UI atualizada automaticamente.

O BlocBuilder reconstrói a UI com base no estado atualizado.
