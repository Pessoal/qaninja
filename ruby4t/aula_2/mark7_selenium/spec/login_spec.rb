

require_relative 'pages/login_page'

describe('Login') do
  before(:each) do
    visit 'https://mark7.herokuapp.com'
    @login = LoginPage.new
  end

  describe('Deve logar com sucesso') do
    it('Quando o usuário informa suas credencias') do
      @login.faz_login('eu@papito.io', 'secret')

      expect(page).to have_content 'Fernando'
    end

    after(:each) do
      visit 'https://mark7.herokuapp.com/logout'
      expect(page).to have_content 'Please enter your credentials to login.'
    end
  end

  describe('Exceções') do
    it('quando o usuário digita uma senha inválida') do
      @login.faz_login('eu@papito.io', '123456')

      toast = find('.toast-message')
      expect(toast.text).to eql 'Incorrect password'
      sleep 5
    end

    it('quando o usuário não está cadastrado') do
      @login.faz_login('padre_kevedo@noexkiste.com', '123456')

      toast = find('.toast-message')
      expect(toast.text).to eql 'User not found'
      sleep 5
    end
  end
end
