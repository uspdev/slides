The Right Way: Criar um formulário para enviar requisição HTTP DELETE

    use Symfony\Component\Form\Extension\Core\Type\CheckboxType;
    ...
    private function createDeleteForm(Equipamento $equipamento)
    {
        $id = $equipamento->getId();
        return $this->createFormBuilder()
            ->setAction($this->generateUrl('equipamento_delete', ['id' => $id]))
            ->setMethod('DELETE')
            ->add('message',CheckboxType::class, [
                 'label'    => "Quer mesmo deletar ?",
                 'required' => true,])
            ->getForm();
    }

<div style="font-size: 16px;"> *Documentação:*
https://symfony.com/doc/current/form/without_class.html
