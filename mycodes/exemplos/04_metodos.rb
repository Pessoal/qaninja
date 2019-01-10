
# PO - Cliente

# # Calculo do nível do IMC

# RN1 - Se o calculo do IMC for maior que 22 exibe mensagem : 'Mano você está embaçado, partiu academia'
# RN2 - Se o calculo do IMC for menor que 22 exibe mensagem : 'Mano você está sussa, partiu buguerking'

# Regra do Calculo - Peso multiplicado pela altura vezes 2


 puts 'QUal o seu peso?'
 peso = STDIN.gets.to_i
 
 puts 'Qual a sua altura'
 altura = STDIN.gets.to_f

 def calcula_imc(p, a)
    imc = p/(a*2)
    return imc.round(2)
 end
    imc = calcula_imc(p, a)

#  imc = peso / (altura * 2)
#  puts imc.round(2)

#  puts imc = (peso / (altura * 2)).round(2)

valor_arrendondado = imc.round(2)

if valor_arrendondado < 22
    puts 'Mano você está sussa, partiu buguerking!' 
else  
    puts 'Mano você está embaçado, partiu academia!'
end

