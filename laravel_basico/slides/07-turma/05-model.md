No model de disciplina:

    public function turmas()
    {
        return $this->hasMany('App\Turma');
    }

No model Turma:

    public function disciplina()
    {   
        return $this->belongsTo('App\Disciplina');
    }
