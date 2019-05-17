Adicionar bootstrap-datepicker em packages.json:

    npm install bootstrap-datepicker

Autoload para Jquery em *webpack.mix.js*:

    mix.autoload({
        'jquery': ['jQuery', '$'],
    })

Adicionar método datepicker em uma classe css:

    $('.datepicker').datepicker();

No controller, tratar data recebida:
    
    Carbon::createFromFormat('m/d/Y',$request->inicio);

Dica para input: autocomplete="off"


