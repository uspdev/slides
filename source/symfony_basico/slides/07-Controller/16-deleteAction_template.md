Tela de confirmação:

    /**
     * @Route("/equipamento/{id}/delete/confirm", name="equipamento_delete_confirm")
     */
    public function confirmDeleteAction(Equipamento $equipamento)
    {
        $form = $this->createDeleteForm($equipamento);
        return $this->render('equipamento/delete.html.twig', array(
            'equipamento' => $equipamento,
            'form' => $form->createView(),
        ));
    }

No template:

    {{ form_start(form) }}
        <button type="submit">Deletar</button>
    {{ form_end(form) }}
