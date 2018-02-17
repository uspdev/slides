Para deletar, *sério*, nunca faça isso:

    /**
     * @Route("/equipamento/{id}/delete", name="equipamento_delete")
     */
    public function deleteAction(equipamento $equipamento) {
        $em = $this->getDoctrine()->getManager();
        $em->remove($equipamento);
        $em->flush();
        return $this->redirectToRoute('equipamento_index');
    }
