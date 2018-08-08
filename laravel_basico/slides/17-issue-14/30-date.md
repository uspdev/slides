Classe para datapicker no cadastro de turma:

    $('.datepicker').datepicker({
        format: 'dd/mm/yyyy',
        language: 'pt-BR'
    });

dica de html: autocomplete="off"

Que tal ordernar turmas pela data de início?

    @foreach ($disciplina->turmas->sortByDesc('inicio') as $turma)

<div style="color:red;">!!! teste e commit !!!</div>

