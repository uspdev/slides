## Instalação dos pacotes

É necessário que tenha o node instalado na máquina.

## Prez globalmente instalado

Caso queira utilizar o `prez` globalmente instale com:

`sudo npm install -g prez`

### Gerar slides

```bash
    # Exemplo para o curso de symfony
    prez git docs/git --theme=league
```

### Gerar Slides com preview no Browser

```bash
    prez git docs/git --theme=league --watch --serve
```

## Utilizando o prez somente no projeto


Instalar dependências:

```bash
    npm install
```

Rodar o Lazy Presentator:

```bash
    # Exemplo do curso de symfony
    ./present.sh git
```

O seu browser deve abrir com sua apresentação já gerada

## Para geração de pdf:

    sudo apt install phantomjs
    prez git --print
