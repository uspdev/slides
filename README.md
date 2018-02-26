## Instalação dos pacotes

É necessário que tenha o node instalado na máquina.

## Prez globalmente instalado

Caso queira utilizar o `prez` globalmente instale com:

`sudo npm install -g prez`

### Gerar slides

```bash
    # Exemplo para o curso de symfony
    prez symfony docs/symfony --theme=league
```

### Gerar Slides com preview no Browser

```bash
    prez symfony docs/symfony --theme=league --watch --serve
```

## Utilizando o prez somente no projeto


Instalar dependências:

```bash
    npm install
```

Rodar o Lazy Presentator:

```bash
    # Exemplo do curso de symfony
    ./present.sh symfony
```

O seu broser deve abrir com sua apresentação já gerada
