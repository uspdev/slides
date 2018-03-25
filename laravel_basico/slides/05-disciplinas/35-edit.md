Rota para edição:

    Route::get('/disciplinas/{disciplina}/edit','DisciplinaController@edit');    

Formulário para editar disciplina:

    <form method="POST" action="/disciplinas/{{ $disciplina->id  }}">
        {{ csrf_field() }}
        {{ method_field('patch') }}
        Nome: <input name="titulo" value="{{ $disciplina->titulo }}">
        Ementa: <textarea name="ementa"> {{ $disciplina->ementa }} </textarea>
        <button type="submit"> Salvar </button>
    </form>

Renderizar formulário no método edit:

    return view('disciplinas.edit',compact('disciplina'));

