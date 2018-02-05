### Rota para cadastrar novos *equipamentos*:

    use App\Entity\Equipamento; 
    use App\Form\EquipamentoType; 

Controler:
    
    /**
     * @Route("/equipamento/new", name="equipamento_new")
     */
    public function newAction()
    {
        $equipamento = new Equipamento();
        $form = $this->createForm(EquipamentoType::class,$equipamento);
        return $this->render('equipamento/new.html.twig', array(
            'form' => $form->createView(),
        ));
    }
