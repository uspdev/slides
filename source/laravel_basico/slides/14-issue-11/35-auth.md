Autenticação:

    php artisan make:auth

Deixar os métodos index e show públicos e os demais privados.

    public function __construct()
    {
        $this->middleware('auth')->except(['index','show']);
    }
