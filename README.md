# Scratch for linux

Este repositório contém o código para executar o Scratch em uma Tv Box com arquitetura armhf que utiliza o Armbian como sistema operacional. O repositório é baseado no github abaixo:
[Repositório Scratch 3.0 para Linux](https://github.com/redshaderobotics/scratch3.0-linux)

Após a instalação do Armbian é necessário garantir que o sistema possui o NodeJS instalado.

## Gerar pacote deb

Para gerar um pacote deb é necessário executar o script:

```
$ sh create-deb.sh
```

O processo de geração do pacote leva um certo tempo e talvez a Tv Box utilizada não tenha memória e processamento suficiente para executar essa tarefa, sendo assim o ideal é fazer esse procedimento em um computador e passar o pacote pronto para a Tv Box. Para Instalar, é só executar com o comando abaixo:

```
$ sudo gdebi /tmp/scratch-desktop_3.29.1_armhf.deb
```

## Executar usando o Electron
É possível executar sem instalar um pacote deb usando diretamente o Electron. Para isso, basta executar o comando:


```
$ sh execute-scratch.sh
```
