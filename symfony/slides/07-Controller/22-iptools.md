Array com IPs do range:

    $network = Network::parse('192.168.1.0/24');
    $ips = [];
    foreach($network as $ip) {
        array_push($ips,(string)$ip);
    }
    // todo: gateway,broadcast,range_begin,range_end

Issues: 

 - Allocate available IP to *Equipamento* in newAction/editAction
 - Generate dhcp.conf
