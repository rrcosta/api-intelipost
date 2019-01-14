# Teste Prático Desenvolvedor de integrações

## Cenário:

## O desafio

Imagine um sistema de rastreamento de encomendas. Toda vez que uma encomenda é marcada como entregue dentro deste sistema uma requisição http é disparada para uma url determinada.

Com a intenção de que esta requisição de notificação de entrega seja entendida por outro sistema, neste caso uma plataforma de vendas online, basta configurarmos a url da API deste outro sistema, correto? 

Porém, a comunicação não aconteceu. 

Tendo em vista que o modelo de comunicação disparado pelo sistema de rastreamento é diferente do que a API da plataforma de vendas espera, repare nos modelos de comunicação pré-definidos pelos sistemas:

> Todas as comunicações são feitas via HTTP e tem o seu conteudo em json.

Modelo de comunicação disparado pelo sistema de rastreamento
```
{
  	"order_id":123,
	"event":{
		"status_id":1
		"date":"2018-02-02T10:45:32"
	},
	"package":{
		"package_id":1,
		"package_invoice":{
			"number":"9871236",
			"key":"01234567890123456789012345678901234567891234"
			"date":"2018-02-01T10:45:32" 
		}
	}
}
```

Modelo de comunicação que a plataforma de vendas espera receber
```
[
  {
	"orderId":123,
	"status":"delivered",
	"date":"2018-02-02T10:45:32"
  }
]
```

Note tambem que os status estão em diferentes formatos nos dois sistemas, ou seja, para que a comunicação aconteça, tambem é necessario que estes status sejam traduzidos.

Sistema 1 (Rastreamento de encomendas)

|Status | Descição     
| :---: |:-------------
| 1     | Pedido em transito 
| 2     | Pedido saiu para entrega      
| 3     | Pedido entregue     

Sistema 2 (Plataforma de vendas)

|Status | Descição     
| :--- |:-------------
| in_transit     | Pedido em transito 
| to_be_delivered     | Pedido saiu para entrega      
| delivered     | Pedido entregue


Com base neste cenário:

_1 )_ Codifique algo que permita a comunicação entre estes dois sistemas.
> Quaisquer ferramentas e linguagens podem ser utilizadas no teste, mas nos conte o que te motivou a seguir por este caminho.

> Para simular as requisições do sistema de rastreamento recomendamos o [Postman](https://www.getpostman.com/). E para simular a API da plataforma de vendas recomendamos o [Requestbin](https://requestb.in/)

_2 )_ Caso na sua visão codificar algo para que eles se comuniquem não responde à melhor solução, escreva aqui qual a sua sugestão para que possamos resolver a comunicação entre estes dois sistemas.


## Ambiente de desenvolvimento

### Pre Requirements
* Linux / Mac OSX
* [Git](https://git-scm.com)
* [Ruby 2.6.0](https://www.ruby-lang.org)
* [Rails 5.2.2](https://www.ruby-lang.org)
* [PostgreSQL 10.5](https://www.postgresql.org)
* [Foreman](http://devopslab.com.br/como-instalar-e-configurar-o-the-foreman/)
* [Bundler gem](https://github.com/bundler/bundler)

### Biblioteca de Testes

* [rspec-rails](https://github.com/rspec/rspec-rails)
* [factory_bot_rails](https://github.com/thoughtbot/factory_bot_rails)
* [database_cleaner](https://github.com/DatabaseCleaner/database_cleaner)
* [shoulda-matchers](https://github.com/thoughtbot/shoulda-matchers)
* [rails-controller-testing](https://github.com/rails/rails-controller-testing)
* [faker](https://github.com/stympy/faker)
* [simplecov](https://github.com/colszowka/simplecov)

### Motivos desta stack

Os motivos que escolhi esta stack para resolução do desafio proposto foi que a linguagem ruby é forte e madura o suficiente para atender os requisitos proposto, além do mais de ser uma lingagem de programação mais usada no mundo para soluções web.

A linguagem é conhecida por incorporar as melhores características de Perl, Java, Python, Smalltalk, Eiffel, Ada e Lisp.

### Instalações dos pré-requisitos

* Git

O primeiro passo que deverá efetuar será instalar o Git (https://git-scm.com), caso ainda não o tenha.
Vide estes tutoriais para instalação: 

  https://git-scm.com/book/pt-br/v1/Primeiros-passos-Instalando-Git
  https://www.liquidweb.com/kb/install-git-ubuntu-16-04-lts/


Após a instalação do git, deverá configura-lo (https://git-scm.com/book/pt-br/v2/Começando-Configuração-Inicial-do-Git) e dar clonar (https://git-scm.com/book/pt-br/v2/Git-Basics-Getting-a-Git-Repository) o seguinte repositório: (git@github.com:rrcosta/api-intelipost.git), após clona-lo deverá seguinte os passos abaixo

* Ruby

Para obter a versão 2.6.0 do Ruby, basta abrir um terminal em seu sistema e digitar um dos seguintes comandos:

Para: Mac

Para maiores detalhes vide: http://railsapps.github.io/installrubyonrails-mac.html

```
 brew install ruby
```

Para: Debian, Ubuntu e derivados

```
sudo apt-get install ruby-full 
```

Para: CentOS, Fedora e RHEL

```
sudo yum install ruby
```

Para: Arch Linux, Manjaro, Antergos e derivados

```
sudo pacman -S ruby
```

* Ruby on Rails

Após instalar o ruby (passo acima), deverá instalar o framework Rails, através do comando abaixo

```
gem install rails --version=5.2.2
```

Obs: dependendo das configurações de sua maquina, este processo poderá demoarar, mas não se preoucupe esse é o único passo que poderá demorar um pouco ;)

* PostgreSQL

Para instalação do Postgresql, entre neste tutorial e mande brasa na instação de um dos melhores BD gratuidos para se trabalhar!

https://www.edivaldobrito.com.br/como-instalar-o-postgresql-9-4-no-ubuntu-e-centos/

* Foreman

Para a instação do foreman, sugiro acessar este tutorial bem explicativo

http://devopslab.com.br/como-instalar-e-configurar-o-the-foreman/



### Procedimentos que deverá efetuar para subir o ambiente

### Instalação e execução da aplicação

1. Faça o clone com **git clone git@github.com:rrcosta/api-intelipost.git**

2. Vá ao diretório do projeto e execute

        $ gem install json -v '2.1.0' --source 'https://rubygems.org/'

        $ bundle install

3. Copie o conteúdo do arquivo .env.example para o arquivo .env e altere com as credenciais de seu ambiente local

        $ cp .env.example .env

4. Abra o arquivo .env e coloque os seus dados de acesso do seu banco de dados Postgrsql

5. Faça o setup do banco de dados

        $ bin/rails db:setup

6. Instale o foreman

        $ gem install foreman

7. Inicie a aplicação usando o foreman

        $ foreman start

8. Acesse a aplicação

9. Crie um webhook com a url desejada para enviar o conteudo d

## Testes

Para executar os testes:

1. Crie o banco de dados de teste

        $ bin/rails db:test:prepare

2. Execute os testes

        $ COVERAGE=true bin/rspec

3. Verifique o resultado dos testes no arquivo

        ./coverage/index.html