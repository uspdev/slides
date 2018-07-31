No model Turma:

    public function disciplina()
    {
        return $this->belongsTo('App\Disciplina');
    }

No model de Disciplina:

    public function turmas()
    {
        return $this->hasMany('App\Turma');
    }


