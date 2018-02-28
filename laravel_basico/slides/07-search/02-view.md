Template para resultado da busca:

    @extends ('layouts.master')

    Resultados da busca:
    @section ('content')
    <ul>
        @foreach ($disciplinas as $disciplina)
               <li><a href="/disciplinas/{{ $disciplina->id }}"> {{ $disciplina->titulo }} </a></li>
               @endforeach
        </ul>

    @endsection
