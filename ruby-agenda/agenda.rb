load "atleta.rb"
load "atleta_profissional.rb"

def ler_valor
  gets.chomp
end

def menu
  menu = {}
  puts "Gostaria de adicionar um novo atleta a Agenda™?"
  puts "1- sim"
  puts "2- nao"
  menu[:cadastrar] = ler_valor
  if menu[:cadastrar] == '1'
    puts "Qual e o nome do atleta"
    menu[:nome] = ler_valor
    puts "Qual e a idade de #{menu[:nome]}"
    menu[:idade] = ler_valor

    puts "É profissional? 1-sim 2-nao"
    menu[:pro] = ler_valor

    if menu[:pro] == '1'
      puts "Qual o nome do treinador?"
      menu[:treinador] = ler_valor
    end
  else
    puts "--Cadastro encerrado--"
  end
  menu
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

puts "|-------------Bem vindo a Agenda™-------------|"

atletas = []

loop do
  menu_op = menu
  break if menu_op[:cadastrar] != '1'
  atletas << criar_atleta(menu_op)
end

listar_atletas(atletas)


