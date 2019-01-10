
class Conta
  attr_accessor :saldo, :mensagem

  def saca(valor)
    if valor > self.saldo
      self.mensagem = 'Valor para saque indisponível.'
    else
      self.saldo -= valor
      self.mensagem = 'Saque com sucesso.'
    end
  end
end
