Implementar o método show para disciplina:

    return view('disciplinas.show',compact('disciplina'));

Template para show:

    <h1>{{ $disciplina->titulo }}</h1>
    <p>{{ $disciplina->ementa }}</p>

Link em index.blade.php

    <a href="/disciplinas/{{ $disciplina->id }}">

<div style="color:red;">!!! please commit this !!!</div>
