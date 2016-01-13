class AtletaProfissional < Atleta
  attr_accessor :treinador
  attr_writer :treinador

  def initialize(nome, idade, treinador)
    super(nome, idade)
    @treinador = treinador
  end

  def to_s
    super + ", treinador: #{@treinador}"
  end
end
