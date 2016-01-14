class Treinador
  attr_accessor :nome, :matricula, :especialidade

  def initialize(nome, matricula, especialidade)
    @nome = nome
    @matricula = matricula
    @especialidade = especialidade
  end

  def to_s
    "Treinador: #{nome}, Matricula: #{matricula}"
  end
end
