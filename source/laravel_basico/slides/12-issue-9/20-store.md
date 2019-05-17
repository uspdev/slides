Criar uma rota para store de turma:

    Route::post('/disciplinas/{disciplina}/turmas','DisciplinaController@storeTurma');

Criar o método store turma:

    public function storeTurma(Request $request,Disciplina $disciplina)
    {
        $turma = new \App\Turma;
        $turma->ministrante = $request->ministrante;
        $turma->inicio = $request->inicio; #desafio! Receber dd/mm/YYYY
        $turma->fim = $request->fim; #desafio: idem
        $turma->bibliografia = $request->bibliografia;
        $turma->disciplina_id = $disciplina->id;

        $disciplina->turmas()->save($turma);
        return redirect("/disciplinas/$disciplina->id");
    }
