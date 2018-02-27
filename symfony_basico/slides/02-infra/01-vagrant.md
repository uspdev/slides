### Dica para começar:
<img src="./images/vagrant.png" height="130px">

    mkdir vmsymfony
    vagrant init bento/ubuntu-16.04

Adicionar IP para acesso externo:

    config.vm.network :private_network, ip: "192.168.100.200"
 
Logar na nova VM:

    vagrant up
    vagrant ssh
