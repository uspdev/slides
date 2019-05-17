Necessidades: A partir do ip da rede e cidr:

 - Encontrar primeiro ip (gateway) e broadcast
 - Converter cidr para máscara
 - Encontrar range

Instalando e usando biblioteca externa: 

    #https://github.com/S1lentium/IPTools
    sudo apt-get install php7.2-bcmath
    composer require s1lentium/iptools

Classes disponíveis nessa lib:

    use IPTools\IP;
    use IPTools\Network;
