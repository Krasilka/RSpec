require './spec/spec_helper'

class AlbumPage
  include PageObject
  include Player

  div(:tracks, class: 'flexlist-row')

  def tracks_in_album
    return divs(class: 'flexlist-row')
  end

  def play_album
    sleep 2
    div(class:'banner-content-top__button-holder').div(class:'play-button').click
  end

end