Que tal ordernar turmas pela data de início?

    @foreach ($disciplina->turmas->sortByDesc('inicio') as $turma)

Usando carbon no blade:

    {{ Carbon\Carbon::parse($turma->inicio)->format('d/m/Y') }}

<div style="color:red;">!!! teste e commit !!!</div>
