require 'test_helper'

class MorningSlotsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @morning_slot = morning_slots(:one)
  end

  test "should get index" do
    get morning_slots_url
    assert_response :success
  end

  test "should get new" do
    get new_morning_slot_url
    assert_response :success
  end

  test "should create morning_slot" do
    assert_difference('MorningSlot.count') do
      post morning_slots_url, params: { morning_slot: { name: @morning_slot.name } }
    end

    assert_redirected_to morning_slot_url(MorningSlot.last)
  end

  test "should show morning_slot" do
    get morning_slot_url(@morning_slot)
    assert_response :success
  end

  test "should get edit" do
    get edit_morning_slot_url(@morning_slot)
    assert_response :success
  end

  test "should update morning_slot" do
    patch morning_slot_url(@morning_slot), params: { morning_slot: { name: @morning_slot.name } }
    assert_redirected_to morning_slot_url(@morning_slot)
  end

  test "should destroy morning_slot" do
    assert_difference('MorningSlot.count', -1) do
      delete morning_slot_url(@morning_slot)
    end

    assert_redirected_to morning_slots_url
  end
end
