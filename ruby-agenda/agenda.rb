load "atleta.rb"
load "atleta_profissional.rb"

def ler_valor
  gets.chomp
end

def criar_atleta
  atleta = {}
  puts "Qual e o nome do atleta"
  nome = ler_valor
  puts "Qual e a idade do atleta"
  idade = ler_valor



  puts "e profissional? 1-sim 2-nao"
  prof = ler_valor

  if prof == '1'
    puts "Qual o nome do treinador?"
    treinador = ler_valor
    atleta = AtletaProfissional.new(nome, idade, treinador)
  else
    atleta = Atleta.new(nome, idade)
  end
  atleta
end

puts "Bem vindo a Agenda"
puts "Gostaria de cadastrar umm atleta?"
puts "1- sim"
puts "2- nao"
op = ler_valor

atletas = []

while op == '1'
  atletas << criar_atleta
  puts "Quer cadastrar outro?"
  op = ler_valor
end

atletas.each do |a|
  puts a
end
