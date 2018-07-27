require './spec/spec_helper'

class WelcomePage
  include PageObject

  page_url 'https://juke.com/'

  link :login, href: '/login'
  span :close, class: 'cd-ribbon__icon'

  def navigate_to_login
    close_element.click
    login
  end

end