### Meu primeiro controller:

    <?php 
    namespace App\Http\Controllers;
    class OlaController
    {
        public function gritar()
        { 
            return 'OLLLLLÁÁÁÁ';
        }
    }

### Minha primeira rota:

    Route::get('/gritar','OlaController@gritar');

