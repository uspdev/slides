Fazer um formumlário de delete em index.blade.php:
  
    <form method="POST" action="{{ url('disciplinas') .'/' . $disciplina->id }}">
        {{ csrf_field() }} {{ method_field('delete') }}
        <button type="submit">Apagar</button>
    </form>

Implementar o método destroy:

    $disciplina->delete();
    return redirect()->route('disciplinas.index');

<div style="color:red;">!!! please commit this !!!</div>



