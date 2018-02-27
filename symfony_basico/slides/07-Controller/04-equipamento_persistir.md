Tratar a requisição no controller:

    -> use Symfony\Component\HttpFoundation\Request;
    -> public function newAction(Request $request)

Persistir campos no banco de dados:

    $form->handleRequest($request);
    if ($form->isSubmitted() && $form->isValid()) {
        $em = $this->getDoctrine()->getManager();
        $em->persist($equipamento);
        $em->flush();
        return $this->redirectToRoute('equipamento_new');
    }

Persistiu?

    php bin/console doctrine:query:sql "select * from equipamento;"
