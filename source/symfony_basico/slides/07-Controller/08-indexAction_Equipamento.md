Criação de página que lista todos equipamentos:

    /**
     * @Route("/equipamento", name="equipamento_index")
     */
    public function indexAction()
    {
        $repository = $this->getDoctrine()->getRepository(Equipamento::class);
        $equipamentos = $repository->findAll();
        return $this->render('equipamento/index.html.twig', array(
            'equipamentos' => $equipamentos,
        ));
    }

Criar arquivo *equipamento/index.html.twig*: 

    <html><body><ul> 
    {% for equipamento in equipamentos %} 
        <li> <a href="{{ path('equipamento_show', { 'id': equipamento.id }) }}"> {{equipamento.macaddress}}</a> </li>
    {% endfor %}
    </ul></body></html>
