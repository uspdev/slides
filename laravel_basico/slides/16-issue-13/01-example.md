Vamos usar o exemplo do bootstrap:

    sticky-footer-navbar

Adaptar o layout para nosso projeto:

 - Criar master.blade.php
 - Copiar o css do tema para public/css/app.css (BAD PRACTICE)
 - Colocar link de app.css no master.blade.php
 - Limpar conteúdo e criar uma seção *content*:
 - Inserir CDN para bootstrap e jquery

    @section ('content')
    @show

