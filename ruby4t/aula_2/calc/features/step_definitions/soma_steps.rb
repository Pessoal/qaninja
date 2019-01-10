Quando("faço a soma de {int} + {int}") do |valor1, valor2|
    @total = valor1 + valor2
end
  
Então("o resultado deve ser {int}") do |resultado|
    expect(@total).to eql resultado
end