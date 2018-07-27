require './spec/spec_helper'

class HomePage
  include PageObject

  def open_album_from_banner
    sleep 2
    div(class:'banner-content-top-text').h1(class: 'ng-binding').click
  end

end
