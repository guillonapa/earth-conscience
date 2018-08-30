require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "the truth" do
    assert true
  end

  test "getting the home page" do
    get root_path
    assert_response(:success)

  end
end
