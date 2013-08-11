require 'test_helper'

class EmployeeCommitmentsControllerTest < ActionController::TestCase
  setup do
    @employee_commitment = employee_commitments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:employee_commitments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create employee_commitment" do
    assert_difference('EmployeeCommitment.count') do
      post :create, employee_commitment: {  }
    end

    assert_redirected_to employee_commitment_path(assigns(:employee_commitment))
  end

  test "should show employee_commitment" do
    get :show, id: @employee_commitment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @employee_commitment
    assert_response :success
  end

  test "should update employee_commitment" do
    put :update, id: @employee_commitment, employee_commitment: {  }
    assert_redirected_to employee_commitment_path(assigns(:employee_commitment))
  end

  test "should destroy employee_commitment" do
    assert_difference('EmployeeCommitment.count', -1) do
      delete :destroy, id: @employee_commitment
    end

    assert_redirected_to employee_commitments_path
  end
end
