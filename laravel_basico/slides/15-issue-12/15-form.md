Campo de busca no template master:

    <form method="POST" action="/disciplinas/search">
        {{ csrf_field() }}
        <input name="text" type="text">
        <button type="submit"> Buscar </button>
    </form>

<div style="color:red;">!!! please commit this !!!</div>
