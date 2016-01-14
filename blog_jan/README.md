== Notas oficiais do Alan

```ruby
rails new blog_jan

cd blog_jan

# navegamos por todas as pastas do projeto

# adicionei a seguinte linha no Gemfile
gem 'pry'

# rodei o comando na pasta do projeto para instalar a nova gem
bundle install

# para executar o projeto
rails server # ou rails s

# criamos um scaffold para post
# esse comando cria uma estrutara para post com dois atributos title e body
rails generate scaffold post title:text body:text

# Analisamos juntos os comandos e arquivos executados pelo scaffold

# para ver as rotas do projeto
rake routes

# no browser acessamos as novas rotas
http://localhost:3000/posts
http://localhost:3000/posts/new

# abrimos o rails console, que é um irb com o projeto rails carregado
rails console

# E executamos algumas operações CRUD
Post.all
post = Post.create(title:"Um post", body: "Conteudo")
Post.all
post = Post.find(1) # encontra um post com o id 1
Post.first
Post.last
post.title = "novo titulo"
post.save

Post.update(body:"novo conteudo")

post.destroy
Post.all

post1 = Post.create(title:"Um post 1", body: "Conteudo")
post2 = Post.create(title:"Um post 2", body: "Conteudo")
post3 = Post.create(title:"Um post 3", body: "Conteudo")

Post.all

post1.title_changed?
post1.title = "Novo title 1"
post1.title_changed?
post1.save
post1.title_changed?

#para abrir o console do banco de dados definido da aplicação
rails dbconsole # ou rails db
```
