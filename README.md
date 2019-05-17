## Instalação dos pacotes

É necessário que tenha o node instalado na máquina.
Os slides são gerados usando:
 
 - [https://github.com/byteclubfr/prez](https://github.com/byteclubfr/prez)

Os arquivos markdown são criandos na pasta *source* e são processados
pelo *prez* e transformados em html para a apresentação em si na pasta *docs*.

## Instalado dependências

`npm install`

### Gerar slides

```bash
    # Exemplo para o curso de symfony
    ./node_modules/prez/bin/prez.js source/git docs/git --theme=league
```

### Gerar Slides com preview no Browser

```bash
    ./node_modules/prez/bin/prez.js source/git docs/git --theme=league --watch --serve
```

## Utilizando o prez somente no projeto

Rodar o Lazy Presentator:

```bash
    # Exemplo do curso de symfony
    ./present.sh git
```

O seu browser deve abrir com sua apresentação já gerada
