Persistir mudança no método update:

        $disciplina->titulo = $request->titulo;
        $disciplina->ementa = $request->ementa;
        $disciplina->save();
        return redirect()->route('disciplinas.index');

Em index.blade.php inserir botão de edição de disciplina:

    <a href="/disciplinas/{{ $disciplina->id }}/edit"> Editar </a>

<div style="color:red;">!!! please commit this !!!</div>
