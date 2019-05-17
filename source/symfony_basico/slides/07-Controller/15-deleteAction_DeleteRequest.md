Método HTTP DELETE 

    /**
     * @Route("/equipamento/{id}/delete", name="equipamento_delete",methods="DELETE")
     */
    public function deleteAction(Request $request, Equipamento $equipamento)
    {
        $form = $this->createDeleteForm($equipamento);
        $form->handleRequest($request);
        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->remove($equipamento);
            $em->flush();
    }
    return $this->redirectToRoute('equipamento_index');

