No formulário de show disciplina, criar botão para inserir turma e 
enviar id da disciplina:

    <a href="{{ action('DisciplinaController@createTurma',$disciplina->id) }}">Inserir Turma</a>

No formulário de cadastro de turma, enviar disciplina_id como campo oculto:

    <form method="POST" action="{{ action('DisciplinaController@storeTurma') }}">
        {{ csrf_field() }}
        <br>Ministrante:
        <input name="ministrante">

        <br>Data início:
        <input name="inicio">

        <br>Data fim:
        <input name="fim">

        <br>Bibliografia:
        <input name="bibliografia">
        <input type="hidden" name="disciplina_id" value="{{ $disciplina_id }}">
    <br>
    <button type="submit" class="btn btn-success"> Salvar </button>

    </form>
