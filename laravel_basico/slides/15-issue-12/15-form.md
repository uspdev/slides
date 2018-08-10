Campo de busca no template master:

    <form method="POST" action="/disciplinas/search">
        {{ csrf_field() }}
        <input name="text" type="text">
        <button type="submit"> Buscar </button>
    </form>

Deixar  método *search* público.

<div style="color:red;">!!! teste e commit !!!</div>
