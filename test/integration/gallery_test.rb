require 'test_helper'

class GalleryTest < ActionDispatch::IntegrationTest
  test "should display tournaments and images" do
    get gallery_url
    assert_response :success
    assert_select 'h2', 'Tournaments Gallery'
    assert_select '.grid-item', minimum: 1
  end
end