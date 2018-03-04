Implementar o método show para disciplina:

    return view('disciplinas.show',compact('disciplina'));

Template para show:

    <h1>{{ $disciplina->titulo }}</h1>
    <p>{{ $disciplina->ementa }}</p>

Colocar link para vizualização de disciplina no index.blade.php

    <li><a href="/disciplinas/{{ $disciplina->id }}"> {{ $disciplina->titulo }} </a></li>

<div style="color:red;">!!! please commit this !!!</div>
