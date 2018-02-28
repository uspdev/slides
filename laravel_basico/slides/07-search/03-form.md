Campo de busca:

    <form method="POST" action="{{ action('DisciplinaController@search') }}">
        {{ csrf_field() }}
        <input name="text" type="text">
        <button type="submit"> Search </button>
    </form>
