class Atleta
  attr_accessor :nome, :idade

  def initialize(nome, idade)
    @nome = nome
    @idade = idade
  end

  def exercico

  end

  def to_s
    "Atleta: #{@nome}, idade: #{@idade}"
  end
end
