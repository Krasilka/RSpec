require './spec/spec_helper'

module Player
  include PageObject

  div :queue_icon, class: 'icon-holder', data_qa: 'icon-queue'
  div :track_in_queue, class: 'flexlist-cell', data_qa: 'track'
  div :empty_queue, class: 'queue-empty-info'
  div :clear_queue_icon, class: 'icon-holder', data_qa: 'icon-delete'
  button :submit_popup, type:'submit'
  h2 :confirm_deletion, id: 'confirmDeleteQueueModalTitle'

  def open_queue
    queue_icon_element.click
  end

  def track_list
    return div(class: 'queue-inner').divs(class: 'flexlist-cell', data_qa: 'track')
  end

  def clear_queue
    sleep 2
    clear_queue_icon_element.click
  end
end
