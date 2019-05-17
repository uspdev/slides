Criação, distribuição e pull/merge requests das issues entre os/as devs: 

 - Create editAction and template fir RedeController
 - Create deleteAction and template fir RedeController

Dica para deixar equipamentos órfãos:

    $equipamentos = $rede->getEquipamentos();
    foreach($equipamentos as $equipamento){
        $equipamento->setRede(null);
    }

