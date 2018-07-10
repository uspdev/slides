Mostrar as turmas, no show da disciplina:

    @foreach ($disciplina->turmas as $turma)
        {{ $turma->ministrante }}
        {{ $turma->inicio }}
    @endforeach

<div style="color:red;">!!! please commit this !!!</div>
