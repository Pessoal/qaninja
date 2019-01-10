
class Animal
  attr_accessor :nome, :cor, :idade

  # tudo aque aconte primeiro
  def initialize(n)
    self.nome = n
  end

  def come(racao)
    puts "#{nome} está comendo a ração: #{racao}"
  end
end

class Dog < Animal
  def fala
    puts "#{nome}, diz: au au."
  end
end

class Cat < Animal
  def fala
    puts "#{nome}, diz: miau."
  end
end

spike = Dog.new('Spike')
spike.fala
spike.come('Floric')

snoop = Dog.new('Snoop')
snoop.fala
snoop.come('Purina')

tomm = Cat.new('Tomm')
tomm.fala
tomm.come('Wiskas')
