Autenticação:

    php artisan make:auth

Deixar os métodos index e show publico e os demais privados.

    public function __construct()
    {
        $this->middleware('auth')->except(['index','show']);
    }
