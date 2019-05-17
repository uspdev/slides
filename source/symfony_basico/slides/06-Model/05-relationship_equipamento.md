Um equipamento pode pertencer a uma rede, certo? Então, na entidade Equipamento:

    /**
     * @ORM\ManyToOne(targetEntity="Rede", inversedBy="equipamentos")
     * @ORM\JoinColumn(nullable=true)
     */
    private $rede;

    /* get e set */
    public function setRede($rede)
    {
        $this->rede = $rede;
    }

    public function getRede()
    {
        return $this->rede;
    }

<div style="font-size: 16px;"> *Documentação:* https://symfony.com/doc/current/doctrine/associations.html </div>





