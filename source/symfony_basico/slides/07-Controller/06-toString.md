### Relacionamento entre equipamento e rede 

 - Adicionar campo *rede* no form de equipamento
 - Boom? Método *__toString* na entity Rede:

    public funtion __toString()
    {
        return $this->nome;
    }

 - Cadastrar novo equipamento
 - Mágica: verificar no banco de dados!
