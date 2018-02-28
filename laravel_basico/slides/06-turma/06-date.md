Qua tal formatar as datas no blade?

    Carbon\Carbon::parse($turma->inicio)->format('d/m/Y') 

Que tal usar um calendário no cadastrato da turma?

    $('.datepicker').datepicker({
        format: 'dd/mm/yyyy',
        language: 'pt-BR'
    });

No controller:

    Carbon::createFromFormat('d/m/Y', $request->inicio)

Que tal, ordernar pela da de início?

    @foreach ($disciplina->turmas->sortByDesc('inicio') as $turma)

