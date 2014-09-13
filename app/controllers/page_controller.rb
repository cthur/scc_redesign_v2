class PageController < ApplicationController
  def index
    @events = Event.all
  end

  def mission

  end
end
