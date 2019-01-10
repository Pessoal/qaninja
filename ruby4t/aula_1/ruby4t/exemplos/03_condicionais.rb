

# Product Owner
# Barman Toten

# Sugegir o tipo bebida de acordo com a idade informada pelo usuário


# RN1 => Se a idade for maior ou igual a 18 => Sugere uma cerveja
# RN2 => Se a idade for menor que 18, então sugere um suco de frutas
# RN3 => Se a idade for menor ou igual a 14, então exibe a mensagem: "Perdeu, você só pode beber leite com pêra"

puts 'Qual a sua idade?'
idade = STDIN.gets.to_i

if idade >= 18
    puts 'Aceita uma cerveja?'
elsif idade >=15
    puts 'Aceita um suco de frutas?'
else 
    puts 'Perdeu. Você só pode beber leite com Pêra.'
end

