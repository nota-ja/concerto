require 'test_helper'
require 'rails/performance_test_help'

class BrowsingTest < ActionDispatch::IntegrationTest
  def test_homepage
    get '/'
    assert_equal 200, status
  end
end
