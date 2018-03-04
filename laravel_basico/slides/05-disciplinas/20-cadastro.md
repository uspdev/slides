Criar um formumário html para cadastro de disciplina:

    <form method="POST" action="/disciplinas">
        {{ csrf_field() }}
        Nome: <input name="titulo">
        Ementa: <textarea name="ementa"> </textarea>
        <button type="submit"> Salvar </button>
    </form>

Rota para cadastro de Disciplinas:

    Route::get('/disciplinas/create','DisciplinaController@create');

No método create retornar o formulário:

    return view('disciplinas.create');
