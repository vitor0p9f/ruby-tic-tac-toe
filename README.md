<div align = "center">
  <p>This README is available in the following languages:</p>
  <br/>
  
  <a href = "https://github.com/vitor0p9f/ruby-tic-tac-toe/blob/main/README.en.md" target="_blank">
    <img src="https://img.shields.io/badge/Language-English-blue"/>
  </a>
</div>

<div align="center">
  
  # Repositório de estudo - Ruby tic-tac-toe
</div>

<p align="justify">
  Este projeto foi desenvolvido visando aprender mais sobre a linguagem de programação Ruby e seus conceitos, por meio da aplicação dos mesmos na construção do famoso jogo da velha. O programa imprime na tela um tabuleiro e pede pelas entradas do usuário, a cada entrada, o tabuleiro é atualizado com a respectiva forma do jogador. Assim que uma das condições de vitória é atingida, o programa imprime quem foi o vencedor, ou se foi empate, e oferece ao usuário a possibilidade de reiniciar o jogo ou de sair do programa.
</p>

## :movie_camera: Demonstração do projeto

https://github.com/vitor0p9f/ruby-tic-tac-toe/assets/153991573/6e351bc9-9634-4f77-9ea7-f7fe32e3d101

## :page_facing_up: Padrões de projeto / Paradigmas utilizados

* OOP(_Object Oriented Programming_)
* Conventional commits

## :pushpin: Conhecimentos adquiridos

* Encapsulamento
* Escrevendo melhores mensagens de commit com os padrões do conventional commits.
* Loops em Ruby.
* Manipulação de strings com _regex_.
* Heredoc
* Manipulação de arrays.

## :triangular_flag_on_post: Desafios encontrados

* No início do projeto, atualizar o estado do tabuleiro antes de exibi-lo no terminal. Isso ocorreu devido ao mau planejamento de como seria armazenado os caracteres que compunham o tabuleiro e dos números que definiriam as posições onde as formas dos jogadores seriam colocadas quando uma jogada fosse realizada.

## :rocket: Executando o projeto 

### 1. Clone o repositório em sua máquina

Após o repositório estar em sua máquina, entre no diretório recém clonado.

Para executar este projeto em sua própria máquina, você pode escolher entre as opções:

* Executar o projeto usando Docker.
* Executar o projeto instalando as dependências.

### :whale2: Utilizando o Docker

#### :construction: Requisitos

* Ter o Docker instalado e configurado em sua máquina.

#### 2. Monte uma imagem do projeto utilizando o seguinte comando:

```bash
docker build -t ruby-tic-tac-toe .
```

A imagem criada terá o mesmo nome do projeto.

#### 3. Crie um contêiner com base na imagem recém criada utilizando o comando:

```bash
docker run -it --name ruby-tic-tac-toe ruby-tic-tac-toe
```

O comando acima utilizará a imagem criada anteriormente para criar um contêiner com o nome do projeto.

Após rodar o comando acima, o terminal do contêiner deve abrir automaticamente, já executando o código do projeto.

Para executar o projeto novamente, sem criar um novo contêiner, basta rodar o seguinte comando:

```bash
docker start -i ruby-tic-tac-toe
```

### :link: Instalando as dependências

#### :construction: Requisitos

* Ter o Ruby instalado em sua máquina
* Aconselho a utilizar ferramentas como RVM ou rbenv para permitir a instalação de Gems sem permissão de administrador.

#### 2. Execute o projeto rodando o comando:

```bash
ruby tic_tac_toe.rb
```
