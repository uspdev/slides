Criar um arquivo de template <br> *templates/equipamento/new.html.twig*:

    <html><body>
    {{ form_start(form) }}
        {{ form_widget(form) }}
        <input type="submit" value="Cadastrar" />
    {{ form_end(form) }}
    </body></html>

Acessar rota no browser:

    http://127.0.0.1:8000/equipamento/new

*Sim, está horrível, mas aguardem!*
