Criar controller para Equipamento: 

    php bin/console make:controller EquipamentoController

Subir um server local:

    php -S 0.0.0.0:8888 -t public/
    php bin/console server:run *:8888

Form para cadastro de equipamentos:

    php bin/console make:form EquipamentoType

Adicionar os campos no form criado:

    $builder->add('patrimonio')->add('macaddress')->add('local')
            ->add('vencimento');

<div style="font-size: 16px;"> *Documentação:* https://symfony.com/doc/current/controller.html
<br> http://symfony.com/doc/current/forms.html</div>

