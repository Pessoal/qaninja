


class LoginPage < SitePrism::Page
    element :input_email, '#login_email'
    element :input_senha, 'input[type=password]'
    element :button_signin, '.btn-accent'

    def faz_login(email, senha)
        self.input_email.set email
        self.input_senha.set senha
        self.button_signin.click
    end
end