Ok, você quer usar SQL na raça... 

    public function ativosSql()
    {
        $now_obj = new \DateTime();
        $now = $now_obj->format('Y-m-d H:i:s');
        $conn = $this->getEntityManager()->getConnection();
        $sql = 'SELECT * FROM equipamento e WHERE e.vencimento >= :now';
        $stmt = $conn->prepare($sql);
        $stmt->execute(['now' => $now]);
        return $stmt->fetchAll();
    }

No Controller:

    $equipamentos = $repository->ativosSql();


