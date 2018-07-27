require './spec/spec_helper'
require_relative '../pages/home_page'
require_relative '../pages/login_page'
require_relative '../pages/welcome_page'
require_relative '../pages/player_container'
require_relative '../pages/album_page'


describe 'Testing player feature' do

  before :all do
    visit(WelcomePage).navigate_to_login
    on(LoginPage).login
  end

  describe 'Queue' do

    before :all do
      on(HomePage).open_album_from_banner
        if on(AlbumPage).tracks_in_album.count > 3
          warn('NOTE!Less than 3 tracks in album!')
        end
      on(AlbumPage).play_album
      @current_page.open_queue
    end

    context 'when playback starts' do

      it 'should have tracks added' do
        expect(@current_page.track_list).not_to be_empty
      end
    end

    context 'when tap delete icon to clear queue' do

      before :all do
        @current_page.clear_queue
        @current_page.submit_popup
        on(AlbumPage).open_queue
      end

      it 'should be empty' do
        expect(@current_page.track_list).to be_empty
      end

      it 'should display "empty queue" message' do
        expect(@current_page.empty_queue_element.present?).to be_truthy
      end
    end
  end
end