Checar rota para submissão (já criada):

    php artisan route:list

No método store, salvar no banco de dados:

     $disciplina = new Disciplina;
     $disciplina->titulo = $request->titulo;
     $disciplina->ementa = $request->ementa;
     $disciplina->save();
     return redirect('/');

Agora podemos colocar um botão no index.blade.php para cadastrar nova disciplina. Do it!

<div style="color:red;">!!! teste e commit !!!</div>
