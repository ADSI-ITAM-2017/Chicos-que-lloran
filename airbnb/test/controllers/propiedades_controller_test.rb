require 'test_helper'

class PropiedadesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get propiedades_index_url
    assert_response :success
  end

  test "should get add" do
    get propiedades_add_url
    assert_response :success
  end

  test "should get show" do
    get propiedades_show_url
    assert_response :success
  end

end
