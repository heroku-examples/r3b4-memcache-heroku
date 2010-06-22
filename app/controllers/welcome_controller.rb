class WelcomeController < ActionController::Base
  def index
    @counter = Rails.cache.read('randomstring')
    @counter = @counter ? @counter + 1 : 1
    Rails.cache.write('randomstring', @counter)
  end
end