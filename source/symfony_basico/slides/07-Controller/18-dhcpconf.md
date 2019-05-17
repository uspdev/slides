Modelo para dhcp.conf para múltiplas networks:

    ddns-update-style none;
    default-lease-time 86400;
    max-lease-time 86400;
    authoritative;
    option domain-name-servers 143.107.253.3,143.107.253.5;

    shared-network "default" {

        subnet 10.0.184.0 netmask 255.255.255.0 {
            range 10.0.184.2 10.0.184.254;
            option routers 10.0.184.1;          
            option broadcast-address 10.0.184.255;
            deny unknown-clients;
            host cliente1 {
                hardware ethernet 00:1C:C0:99:0A:04;
                fixed-address 10.0.184.51;
            }
        }

       subnet 10.0.188.0 netmask 255.255.255.0 {
            range 10.0.188.2 10.0.188.254;
            option routers 10.0.188.1;
            option broadcast-address 10.0.188.255;
            deny unknown-clients;
            host cliente2 {
                hardware ethernet 00:1C:C0:98:FB:3C;
                fixed-address 10.0.188.69;
            }
        }
    }
