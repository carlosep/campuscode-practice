load "atleta.rb"
load "atleta_profissional.rb"

##### MÉTODOS #####

def ler_valor
  gets.chomp
end

def menu
  menu = {}
  puts "Gostaria de adicionar um novo atleta à Agenda™?"
  puts "1 - sim"
  puts "2 - não"
  op = ler_valor
  if op == '1'
    puts "Insira o nome do atleta"
    menu[:nome] = ler_valor
    puts "Insira a idade de #{menu[:nome]}"
    menu[:idade] = ler_valor

    puts "#{menu[:nome]} é profissional? 1-sim 2-nao"
    menu[:pro] = ler_valor

    if menu[:pro] == '1'
      puts "Qual o nome do treinador?"
      menu[:treinador] = ler_valor
    end
    menu
  else
    puts "--Cadastro encerrado--"
  end
end

def criar_atleta(dados)
  if dados[:pro] == '1'
    atleta = AtletaProfissional.new(dados[:nome], dados[:idade], dados[:treinador])
  else
    atleta = Atleta.new(dados[:nome], dados[:idade])
  end
  atleta
end

def listar_atletas(atletas)
  atletas.each do |a|
    puts a
  end
end

##### EXECUÇÃO #####


puts "|-------------Bem vindo a Agenda™-------------|"

atletas = []
loop do
  dados = menu
  break if !dados
  atletas << criar_atleta(dados)
end

listar_atletas(atletas)