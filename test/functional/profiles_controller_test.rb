require 'test_helper'

class ProfilesControllerTest < ActionController::TestCase
  setup do
    @profile = profiles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:profiles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create profile" do
    assert_difference('Profile.count') do
<<<<<<< HEAD
      post :create, profile: { firstname: @profile.firstname, lastname: @profile.lastname, phoneno: @profile.phoneno }
=======
      post :create, profile: { firstname: @profile.firstname, lastname: @profile.lastname, no: @profile.no, phone: @profile.phone }
>>>>>>> fe2516288b2b46312419d7289553e5acec78628c
    end

    assert_redirected_to profile_path(assigns(:profile))
  end

  test "should show profile" do
    get :show, id: @profile
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @profile
    assert_response :success
  end

  test "should update profile" do
<<<<<<< HEAD
    put :update, id: @profile, profile: { firstname: @profile.firstname, lastname: @profile.lastname, phoneno: @profile.phoneno }
=======
    put :update, id: @profile, profile: { firstname: @profile.firstname, lastname: @profile.lastname, no: @profile.no, phone: @profile.phone }
>>>>>>> fe2516288b2b46312419d7289553e5acec78628c
    assert_redirected_to profile_path(assigns(:profile))
  end

  test "should destroy profile" do
    assert_difference('Profile.count', -1) do
      delete :destroy, id: @profile
    end

    assert_redirected_to profiles_path
  end
end
