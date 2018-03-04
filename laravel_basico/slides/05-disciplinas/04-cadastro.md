Criar um formumário html para cadastro de disciplina:

    <form method="POST" action="{{ url('disciplinas') }}">
        {{ csrf_field() }}
        Nome: <input name="titulo">
        Ementa: <textarea name="ementa"> </textarea>
        <button type="submit"> Salvar </button>
    </form>

Rotas para todas operações em Disciplinas:

    Route::resource('disciplinas','DisciplinaController');

No método create retornar o formulário:

    return view('disciplinas.create');
