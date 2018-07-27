require './spec/spec_helper'

class LoginPage
  include PageObject

  DEFAULT_USER ||= {
      user: 'mad_gajka@mail.ru',
      pass: 'Qwerty12345'
  }

  text_field :name, id: 'login-email'
  text_field :pass, id: 'login-password'
  button :submit_login, class: 'btn-with-loader'
  link(:close_popup, class:'trial-popup__close')

  def login(data = {})
    data = DEFAULT_USER.merge(data)
    self.name = data[:user]
    self.pass = data[:pass]
    submit_login
    close_popup
  end

end