class AtletaProfissional < Atleta
  attr_reader :treinador

  def initialize(nome, idade, nome_treinador, especialidade_treinador, matricula_treinador)
    super(nome, idade)
    @treinador = Treinador.new(nome_treinador, especialidade_treinador, matricula_treinador)
  end

  def to_s
    super + ", treinador: #{treinador}"
  end
end
