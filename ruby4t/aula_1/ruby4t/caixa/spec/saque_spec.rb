

# Sendo um cliente correntista do banco
# Posso sacar dinheiro em caixas eletrônicos
# Para que eu possa poder comprar em lugares, que não aceitam cartão

# usuário deverá ter um conta correte
# ele solicita o saque no caixa,
# o sistema verifica se ele tem saldo disponível
# se sim, faz o débito da conta corrente
# exibe uma mensagem "Saque com sucesso."


require_relative '../app/conta'


describe('Saque no caixa Eletronico') do

    it('Deve realizar um saque com sucesso') do
        conta = Conta.new
        conta.saldo = 500

        conta.saca(100)

        expect(conta.saldo).to eql 400
        expect(conta.mensagem).to eql "Saque com sucesso."
    end

    it('Quando o valor do saque é superior ao saldo disponível') do
        conta = Conta.new
        conta.saldo = 500

        conta.saca(600)
        expect(conta.saldo).to eql 500
        expect(conta.mensagem).to eql "Valor para saque indisponível."
    end

end


