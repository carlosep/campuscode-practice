class Exercicio
  attr_accessor :nome, :idade, :exercicios
  def initialize(nome, idade)
    @nome = nome
    @idade = idade
    @exercicios = []
  end

  def registrar_exercicio(descricao, distancia)
    Exercicio.new(descricao, distancia)
  end

  def to_s
    "Nome: #{nome}, Idade: #{idade}"
  end

end
