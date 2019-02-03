# Projeto Pet's Dreams

Projeto feito com fins avaliativos para o processo seletivo de Analista de Software Jr. da empresa Yapay.

Este projeto utiliza `docker` para seu ambiente de desenvolvimento.

# Instalando docker e docker-compose
 Para utilizar o ambiente de desenvolvimento é necessário instalar o `docker` e o `docker-compose` em sua máquina

* [Instalar Docker](https://docs.docker.com/install/linux/docker-ce/ubuntu/#install-docker-ce)
* [Instalar Docker-Compose](https://docs.docker.com/compose/install/#install-compose)

# Utilizando o Docker
 Após clonar o projeto basta acessar a pasta `docker` que se encontra na raiz do projeto e rodar o seguinte comando:
 
   `docker-compose up -d`    
   
Após a execução do comando acima, seu ambiente estará pronto.
* Lembrete: A execução do comando pode variar de acordo com a velocidade da sua conexão com a internet.

Os seguintes containers serão disponibilizados:

* petshop_app - Container principal
* petshop_database - Container do Mysql
* petshop_myadmin - Container do SGBD
   
# Executando o projeto dentro do docker
   acesse o ambiente de desenvolvimento com o seguinte comando:
   
    `dokcer exec -it petshop_app bash`
* Instale as dependências da aplicação `bundle install`
* Rode o comando para criação dos bancos de dados `bundle exec rails db:create`
* Rode a migrations do projeto `bundle exec rails db:migrate`
* Rode as seeds do sistema com `bundle exec rails db:seed`
* Rode o servidor `bundle exec puma -p 3000`
* Abra seu navegador em `http://localhost:3000`

# Configurando interceptação de email
O envio de emails está sendo interceptado pelo mailtrap, para configurar o seu mailtrap basta acessar os arquivos 
development.rb e production.rb e substituir as configurações presentes do mailtrap pelas suas credências.

# Acessando a área de administrador
Para acessar a área do administrador basta ir até o rodapé da página incial e clicar no botão `área do administrador`
você será redicionado para tela de login. utlize o seguinte usuário para logar:

* email: admin@admin
* senha: mudar123

Tecnologias Utilizadas :
* Ruby 2.4.0
* Rails 5.2.1
* Devise ~> 4.5
* Paperclip ~> 6.1
* Bootstrap 4
* Docker e Docker-compose
* MySQL 5.6
* PhpmyAdmin

