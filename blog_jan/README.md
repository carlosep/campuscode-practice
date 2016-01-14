# Notas oficiais do Alan

#### Comandos Executados no dia 13/01/2016

```ruby
rails new blog_jan

cd blog_jan
```
Navegamos por todas as pastas do projeto  
Adicionei a seguinte linha no Gemfile
```ruby
gem 'pry'
```

Rodei o comando na pasta do projeto para instalar a nova gem
```ruby
bundle install
```

Para executar o projeto
```ruby
rails server # ou rails s
```

Criamos um scaffold para post, esse comando cria uma estrutara para post com dois atributos title e body:
```ruby
rails generate scaffold post title:text body:text
```

Analisamos juntos os comandos e arquivos executados pelo scaffold.

Para ver as rotas do projeto:
```ruby
rake routes
```
No browser acessamos as novas rotas:  
<http://localhost:3000/posts>  
<http://localhost:3000/posts/new>

Abrimos o rails console, que é um irb com o projeto rails carregado:
```ruby
rails console
```

E executamos algumas operações **CRUD**:
```ruby
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
```

Para abrir o console do banco de dados definido da aplicação
```ruby
rails dbconsole # ou rails db
```
