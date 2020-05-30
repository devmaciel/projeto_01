# .Projeto//0.1.
## Começando
É recomendado primeiramente instalar o [Composer](https://github.com/composer/composer "Composer") se você não tiver instalado anteriormente.

Logo após, instalar o [PHPMailer](https://github.com/PHPMailer/PHPMailer "PHPMailer") na pasta **classes** do projeto. <br>
*obs: namespace em arquivos definido para esta pasta*

> composer require phpmailer/phpmailer`

Segue o exemplo na imagem a seguir:<br>

[![](https://i.imgur.com/QZ80h1N.jpg "a")](https://i.imgur.com/QZ80h1N.jpg "a")


------------
Recomendado deixar o projeto na pasta raiz da aplicação. Onde não será necessário fazer nenhuma alteração na definição do caminho, porém você pode mudar no arquivo de **config.php**
[![](https://i.imgur.com/laShzSH.jpg)](https://i.imgur.com/laShzSH.jpg)

------------

Agora só falta você importar o **arquivo SQL** para a sua database.
1. Crie uma nova database
2. Importe o arquivo SQL para dentro
3. Pronto!

------------

### Algumas Imagens do projeto
Página HOME.[![Página HOME](https://i.imgur.com/m5wKGOk.jpg)](https://i.imgur.com/m5wKGOk.jpg)

<br />

Formulário Contato sendo disparado.[![Formulário Contato sendo disparado](https://i.imgur.com/zDutQex.jpg "Formulário Contato sendo disparado")](http://https://i.imgur.com/zDutQex.jpg "Formulário Contato sendo disparado")

<br />

Painel de Controle do Administrador.[![Painel de Controle do Administrador](https://i.imgur.com/AAcZ1wA.jpg "Painel de Controle do Administrador")](http://https://i.imgur.com/AAcZ1wA.jpg "Painel de Controle do Administrador")

<br /><br />



#### Tecnologias Utilizadas
- HTML5
- CSS3
- Javascript
- JQuery
- PHP
- MariaDB

#### Ferramentas Utilizadas
- Composer [Aqui](https://github.com/composer/composer "Aqui")
- JQuery Mask [Aqui](https://github.com/igorescobar/jQuery-Mask-Plugin "Aqui")
- JQuery Form [Aqui](https://github.com/jquery-form/form "Aqui")
- TinyMCE [Aqui](https://github.com/tinymce/tinymce "Aqui")
- PHPMailer [Aqui](https://github.com/PHPMailer/PHPMailer "Aqui")
- Google Maps API [Aqui](https://cloud.google.com/maps-platform?hl=pt-br "Aqui")
- VSCode 
- Sublime Text 3 
- Xampp

<br />

##### Mais sobre o projeto

Esse foi um projeto que fiz, visando um desafio maior, sem utilizar sistema MVC e frameworks, *(mais a frente vai sair projeto com laravel)* . E utilizando algumas técnicas, com HTML/CSS/JQUERY, responsividade, CrossBrowser Compatibility, Ajax, Onload Function *(carregamento dinâmico, com google maps)* . Painel Administrativo para edição de campos no website. Ressalto que fiz alguns shortcuts no projeto para ficar mais fácil a navegação para os *devs*. Então começe a explorar as funcionalidades e entenda você mesmo!

###### *Relato de bugs*
*O Envio de email, é feito com contas testes de gmail, então pode ser bloqueado a autenticação de envio, assim bloqueando as mensagens de serem enviadas corretamente. Caso aconteça algum problema, sugiro conferir a classe de Email e seguir os passos contido lá dentro, podendo até mesmo você colocar um email sender/receiver e testando a funcionalidade, ou configurando smtp.*
