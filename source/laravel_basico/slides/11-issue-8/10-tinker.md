tinker:

    $d = new Disciplina;
    $d->ementa = 'Filosofia Grega e Romana'
    $d->titulo = "Filosofia I"
    $d->save()

    $t = new Turma;
    $t->ministrante = 'Pedro'
    $t->inicio = '2015-10-10'
    $t->fim = '2016-10-10'
    $t->disciplina_id = $d->id
    $t->save()

    $d->turmas
    $d->turmas[0]->ministrante
    $t->disciplina
    $t->disciplina->ementa

<div style="color:red;">!!! teste e commit !!!</div>
