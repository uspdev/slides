Relacionamento inverso na entidade de Rede: 

    use Doctrine\Common\Collections\ArrayCollection;

    public function __construct()
    {
        $this->equipamentos = new ArrayCollection();
    }

    /**
     * @ORM\OneToMany(targetEntity="Equipamento",mappedBy="rede")
     */
    private $equipamentos;


    /* get e set */
    public function setEquipamentos($equipamentos)
    {
        $this->equipamentos = $equipamentos;
    }

    public function getEquipamentos()
    {
        return $this->equipamentos;
    }

<div style="font-size: 16px;"> *Documentação:* http://symfony.com/doc/current/form/form_collections.html </div>



