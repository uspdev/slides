Adicionar bootstrap-datepicker em packages.json:

    npm install bootstrap-datepicker

Classe css para datapicker no cadastro de turma e deve ser inserida nos inputs:

    $('.datepicker').datepicker({
        format: 'dd/mm/yyyy',
        language: 'pt-BR'
    });

Dica para input: autocomplete="off"

Que tal ordernar turmas pela data de início?

    @foreach ($disciplina->turmas->sortByDesc('inicio') as $turma)

<div style="color:red;">!!! teste e commit !!!</div>

