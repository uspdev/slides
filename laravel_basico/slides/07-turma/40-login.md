Inserir botão de login no master.blade.php

    @auth
        <form id="logout-form" action="{{ route('logout') }}" method="POST"> 
            {{ csrf_field() }}
            <button type="submit">Sair </button>
        </form>
    @else
        <a href="{{ route('login') }}">Login</a>
        <a href="{{ route('register') }}">Register</a>
    @endauth

Nas views geradas na pasta resources/views/auth 
extender layout padrão:

    @extends('layouts.master')

