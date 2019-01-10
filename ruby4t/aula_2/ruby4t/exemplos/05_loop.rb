

# Objeto HASH do Ruby

# aluno = {
#   nome: 'Carla Crude',
#   email: 'carla@lsjack.com',
#   curso: 'Automação do ZERO',
#   status: true
# }

# puts aluno[:email]

# Arrays

# todo tem um indice de dados, e este indice começa com???? 0

# instrutores = ['','']

# instrutores.push('Fernando')
# instrutores.push('Caio')

# puts instrutores


avengers = [
    {
        nome: 'Brune Banner',
        hero: 'Hulk',
        email: 'bruce@marvel.com'
    },
    {
        nome: 'Steve Rogers',
        hero: 'Cap',
        email: 'rogers@marvel.com'
    },
    {
        nome: 'Tony Stark',
        hero: 'Iron Man',
        email: 'tony@stark.com'
    }
]

new_avengers = [
    {
        nome: 'Peter Parker',
        hero: 'Spiderman',
        email: 'peter@marvel.com'
    }
]

all_avengers = avengers.concat(new_avengers)

# each => foreach

all_avengers.each do |a|
    # if a[:hero] == 'Spiderman'
    #     puts a
    # end
    puts a
end