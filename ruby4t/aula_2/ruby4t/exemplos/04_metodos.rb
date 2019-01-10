
# PO => Cliente

# Calculo do nível de IMC

# RN1 = se o cálculo do IMC for maior que 22 => "Mano, sê ta embassado. #PartiuAcademia"
# RN2 = se o cálculo do IMC for menor que 22 => "Mano, sê ta sussa. #PartiuBurguerKing"

# Regra do cálculo Peso multiplicado pela Altura x 2.

puts 'Qual o seu peso?'
peso = STDIN.gets.to_i

puts 'Qual a sua altura?'
altura = STDIN.gets.to_f

# Em Ruby, a ultima instrução do método, sempre é retornada
def calcula_imc(p, a)
    (p / (a*2)).round(2)
end

# puts imc = calcula_imc(peso, altura)

if calcula_imc(peso, altura) > 22
    puts 'Mano, sê ta embassado. #PartiuAcademia'
else
    puts 'Mano, sê ta sussa. #PartiuBurguerKing'
end


