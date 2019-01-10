require 'selenium-webdriver'

describe('Login') do

    before(:each) do
        @driver = Selenium::WebDriver.for :firefox

        @driver.navigate.to 'https://mark7.herokuapp.com'
        sleep 1
    end
   
    it('login do usuário') do
        nome = @driver.find_element(id: 'login_email')
        nome.send_keys 'eu@papito.io'
        
        senha = @driver.find_element(css: 'input[name=password]')
        senha.send_keys 'secret'
        
        logar = @driver.find_element(class: 'btn-accent')
        logar.click
        sleep 1
        
        menu_usuario = @driver.find_element(class: 'profile-address')
        
        expect(menu_usuario.text).to eql 'Fernando'
    end

    after(:each) do
        @driver.quit
    end

end



