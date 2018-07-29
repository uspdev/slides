Persistir mudança no método update:

        $disciplina->titulo = $request->titulo;
        $disciplina->ementa = $request->ementa;
        $disciplina->save();
        return redirect("/disciplinas/$disciplina->id");

Em index.blade.php inserir link de edição de disciplina:

    <a href="/disciplinas/{{ $disciplina->id }}/edit"> Editar </a>

<div style="color:red;">!!! teste e commit !!!</div>
