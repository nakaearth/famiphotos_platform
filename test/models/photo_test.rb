require "test_helper"

class PhotoTest < ActiveSupport::TestCase
  def setup
    @user = create(:user)
  end

  def test_save_success_case
    photo = Photo.new(description: 'test test', user: @user)
    value(user).must_be :valid?
  end
end

