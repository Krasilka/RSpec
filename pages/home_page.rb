require './spec/spec_helper'

class HomePage
  include PageObject

  link :charts, href: '/de/charts'
  # div :album_banner, class: 'banner', data_qa_type: 'album'
  # element :banner, xpath:"//a[contains(@href,'/de/album/')/@href"


  def go_to_charts
    charts_element.click
  end

  def open_album_from_banner
    sleep 2
    div(class:'banner-content-top-text').h1(class: 'ng-binding').click
  end

end
