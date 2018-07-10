Template para listar disciplinas:

    # resources/views/disciplinas/index.blade.php

    <ul>
    @foreach ($disciplinas as $disciplina)
        <li>{{ $disciplina->titulo }} </li>
    @endforeach
    </ul>

Qual você prefere?

    1: ['disciplinas' => $disciplinas]
    2: compact('disciplinas')

<div style="color:red;">!!! please commit this !!!</div>
