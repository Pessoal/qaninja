

# Before do
#   puts 'Tudo aqui acontece antes do cenário'
# end

# After do
#   puts 'Tudo aqui acontece depois do cenário'
# end

Before('@auth') do
#     steps %(
#       Dado que estou na página principal
#       Quando faço login com "eu@papito.io" e "secret"
#       Então sou autenticado
#   )
  @login = LoginPage.new
  @login.load
  @login.with("eu@papito.io", "secret")
end

After('@logout') do
    @tasks.nav.sair
end