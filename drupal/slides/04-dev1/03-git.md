## git

    git config --global user.name "Thiago Gomes Veríssimo"
    git config --global user.email "thiago.verissimo@usp.br"

Enviar o projeto para o github (criar conta):

    cd fatec
    git init 
    git add --all
    git status
    git commit -m 'projeto em drupal 8 fatec'
    git remote add origin https://github.com/thiagogomesverissimo/fatec.git
    git push -u origin master
