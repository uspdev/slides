Controller que monta o dhcp.conf:

    /**
     * @Route("/dhcpconf", name="dhcpconf")
     */
    public function dhcpconf()
    {
        $response = new Response('teste');
        $response->headers-> set('Content-Type', 'text/plain'); 
        return $response;
    }
