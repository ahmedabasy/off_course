require 'test_helper'

class AssignmentManagemetsControllerTest < ActionController::TestCase
  setup do
    @assignment_managemet = assignment_managemets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:assignment_managemets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create assignment_managemet" do
    assert_difference('AssignmentManagemet.count') do
      post :create, assignment_managemet: { deadline: @assignment_managemet.deadline, name: @assignment_managemet.name, score: @assignment_managemet.score }
    end

    assert_redirected_to assignment_managemet_path(assigns(:assignment_managemet))
  end

  test "should show assignment_managemet" do
    get :show, id: @assignment_managemet
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @assignment_managemet
    assert_response :success
  end

  test "should update assignment_managemet" do
    patch :update, id: @assignment_managemet, assignment_managemet: { deadline: @assignment_managemet.deadline, name: @assignment_managemet.name, score: @assignment_managemet.score }
    assert_redirected_to assignment_managemet_path(assigns(:assignment_managemet))
  end

  test "should destroy assignment_managemet" do
    assert_difference('AssignmentManagemet.count', -1) do
      delete :destroy, id: @assignment_managemet
    end

    assert_redirected_to assignment_managemets_path
  end
end
