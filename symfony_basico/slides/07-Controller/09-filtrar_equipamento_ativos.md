Filtrando equipamentos ativos via repository:

    public function ativos()
    {
        $now = new \DateTime();
        return $this->createQueryBuilder('e')
            ->where('e.vencimento >= :now')
            ->setParameter('now', $now)
            ->getQuery()
            ->getResult();
    }

Corrigir controller

    $equipamentos = $repository->ativos();
