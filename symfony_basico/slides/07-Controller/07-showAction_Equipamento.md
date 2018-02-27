nova issue: showAction e indexAction para EquipamentoController:

    /**
     * @Route("/equipamento/{id}", name="equipamento_show")
     */
    public function showAction(Equipamento $equipamento)
    {
        return $this->render('equipamento/show.html.twig', array(
            'equipamento' => $equipamento,
        ));
    }

Criar arquivo *equipamento/show.html.twig*: 

    <html><body> 
        {{ equipamento.macaddress}}
        {{ equipamento.vencimento|date('d/m/Y') }}
    </body></html>
