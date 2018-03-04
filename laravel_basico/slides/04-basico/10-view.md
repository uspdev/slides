### Que tal retornar um template?

    return view('gritar');

### Template blade:

    <h1>OLLLLÁÁÁÁ</h1>

### Enviando variáveis para o template
    
    return view('gritar',['x'=>'OLLLÁÁÁ']);

### No template

    <h1> {{ $x }} </h1>
