require 'test_helper'

class ProfilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @profile = profiles(:one)
  end

  test "should get index" do
    get profiles_url
    assert_response :success
  end

  test "should get new" do
    get new_profile_url
    assert_response :success
  end

  test "should create profile" do
    assert_difference('Profile.count') do
      post profiles_url, params: { profile: { address_line_one: @profile.address_line_one, address_line_two: @profile.address_line_two, bra_size: @profile.bra_size, bust_inches: @profile.bust_inches, chest_inches: @profile.chest_inches, city: @profile.city, country: @profile.country, dob: @profile.dob, favourite_era: @profile.favourite_era, first_name: @profile.first_name, hips_inches: @profile.hips_inches, last_name: @profile.last_name, neck_inches: @profile.neck_inches, pants_inseam_inches: @profile.pants_inseam_inches, postcode: @profile.postcode, sex: @profile.sex, shoe_size: @profile.shoe_size, sleeve_length_inches: @profile.sleeve_length_inches, state: @profile.state, user_id: @profile.user_id, waist_inches: @profile.waist_inches } }
    end

    assert_redirected_to profile_url(Profile.last)
  end

  test "should show profile" do
    get profile_url(@profile)
    assert_response :success
  end

  test "should get edit" do
    get edit_profile_url(@profile)
    assert_response :success
  end

  test "should update profile" do
    patch profile_url(@profile), params: { profile: { address_line_one: @profile.address_line_one, address_line_two: @profile.address_line_two, bra_size: @profile.bra_size, bust_inches: @profile.bust_inches, chest_inches: @profile.chest_inches, city: @profile.city, country: @profile.country, dob: @profile.dob, favourite_era: @profile.favourite_era, first_name: @profile.first_name, hips_inches: @profile.hips_inches, last_name: @profile.last_name, neck_inches: @profile.neck_inches, pants_inseam_inches: @profile.pants_inseam_inches, postcode: @profile.postcode, sex: @profile.sex, shoe_size: @profile.shoe_size, sleeve_length_inches: @profile.sleeve_length_inches, state: @profile.state, user_id: @profile.user_id, waist_inches: @profile.waist_inches } }
    assert_redirected_to profile_url(@profile)
  end

  test "should destroy profile" do
    assert_difference('Profile.count', -1) do
      delete profile_url(@profile)
    end

    assert_redirected_to profiles_url
  end
end
