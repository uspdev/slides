Inserir botão de login no master.blade.php

    @auth
        <form id="logout-form" action="/logout" method="POST"> 
            {{ csrf_field() }}
            <button type="submit">Sair </button>
        </form>
    @else
        <a href="/login">Login</a>
        <a href="/register">Register</a>
    @endauth

Nas views geradas na pasta resources/views/auth 
extender layout padrão:

    @extends('layouts.master')

