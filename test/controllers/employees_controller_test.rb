require 'test_helper'

class EmployeesControllerTest < ActionController::TestCase
  setup do
    @employee = employees(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:employees)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create employee" do
    assert_difference('Employee.count') do
      post :create, employee: { address: @employee.address, dept: @employee.dept, dob: @employee.dob, email: @employee.email, empcode: @employee.empcode, f_name: @employee.f_name, l_name: @employee.l_name, manager: @employee.manager, notes: @employee.notes, phone: @employee.phone, role: @employee.role, salary: @employee.salary, sex: @employee.sex, start_date: @employee.start_date }
    end

    assert_redirected_to employee_path(assigns(:employee))
  end

  test "should show employee" do
    get :show, id: @employee
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @employee
    assert_response :success
  end

  test "should update employee" do
    patch :update, id: @employee, employee: { address: @employee.address, dept: @employee.dept, dob: @employee.dob, email: @employee.email, empcode: @employee.empcode, f_name: @employee.f_name, l_name: @employee.l_name, manager: @employee.manager, notes: @employee.notes, phone: @employee.phone, role: @employee.role, salary: @employee.salary, sex: @employee.sex, start_date: @employee.start_date }
    assert_redirected_to employee_path(assigns(:employee))
  end

  test "should destroy employee" do
    assert_difference('Employee.count', -1) do
      delete :destroy, id: @employee
    end

    assert_redirected_to employees_path
  end
end
