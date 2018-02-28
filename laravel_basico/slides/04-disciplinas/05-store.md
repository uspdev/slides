No método store, salvar no banco de dados:

     $disciplina = new Disciplina;
     $disciplina->titulo = $request->titulo;
     $disciplina->ementa = $request->ementa;
     $disciplina->save();
     return redirect()->route('disciplinas.index');

Agora podemos colocar um botão no index.blade.php para cadastrar nova disciplina. Do it!

<div style="color:red;">!!! please commit this !!!</div>
