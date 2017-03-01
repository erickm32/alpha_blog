require 'test_helper'

class CategoriesControllerTest < ActionController::TestCase

  def setup
    @category = Category.create(name: "sports")
  end

  test 'should get category index' do
    get :index
    assert_response :success
  end

  test 'should get category new' do
    get :new
    assert_response :success
  end

  test 'should get category show' do
    get :show, params: { id: @category.id }
    assert_response :success
  end
end
