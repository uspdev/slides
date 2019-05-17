Edição dos registros de equipamento:

    /**
      * @Route("/equipamento/{id}/edit", name="equipamento_edit")
      */
    public function editAction(Request $request, Equipamento $equipamento)
    {
        $form = $this->createForm(EquipamentoType::class,$equipamento);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $this->getDoctrine()->getManager()->flush();
            return $this->redirectToRoute('equipamento_show',['id' => $equipamento->getId()]);
        }

        return $this->render('equipamento/edit.html.twig', array(
            'equipamento' => $equipamento,
            'form' => $form->createView(),
        ));
    }

Colocar link em equipamento/show.html.twig:

    <a href="{{ path('equipamento_edit', { 'id': equipamento.id }) }}">Editar</a>
