Em *src/Service/Dhcpconf.php*

    namespace App\Service;
    class Dhcpconf
    {
        public function build()
        {
            return "ok, I amworking";
        }
    }

No Controller:

    use App\Service\Dhcpconf;
    $dhcpconf = new Dhcpconf();
    $dhcpconf->build(); 
