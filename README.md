# Registreduca

Sistema de controle de ponto docente.

## Setup (front-end)

Após [clonar o projeto](https://thewebdev.com.br/git-clonar-repositorio.php), execute `npm install` na pasta do projeto. Note que é necessário [instalar o Node e o npm](https://balta.io/blog/node-npm-instalacao-configuracao-e-primeiros-passos) antes. Agora basta executar `npm start`. 

## Setup (back-end)

Instale o PHP, Apache, MySQL e phpMyAdmin. No Windows, você pode instalar o [WampServer](https://sourceforge.net/projects/wampserver/), que vem com todas essas ferramentas. Importe o arquivo `registreduca.sql` para o banco de dados local. Depois, crie um arquivo `config.php` no diretório `api` com a seguinte estrutura:

```php
<?php 

$host = "";
$user = "";
$password = "";
$database = "";
$port = "";
```

Insira o host (normalmente "localhost") e o usuário, senha e nome do banco de dados local. Por padrão, o nome do banco de dados é "registreduca".
