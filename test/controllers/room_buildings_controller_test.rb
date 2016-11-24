require 'test_helper'

class RoomBuildingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @room_building = room_buildings(:one)
  end

  test "should get index" do
    get room_buildings_url
    assert_response :success
  end

  test "should get new" do
    get new_room_building_url
    assert_response :success
  end

  test "should create room_building" do
    assert_difference('RoomBuilding.count') do
      post room_buildings_url, params: { room_building: { attribute: @room_building.attribute, building_id: @room_building.building_id, floor: @room_building.floor, room_id: @room_building.room_id } }
    end

    assert_redirected_to room_building_url(RoomBuilding.last)
  end

  test "should show room_building" do
    get room_building_url(@room_building)
    assert_response :success
  end

  test "should get edit" do
    get edit_room_building_url(@room_building)
    assert_response :success
  end

  test "should update room_building" do
    patch room_building_url(@room_building), params: { room_building: { attribute: @room_building.attribute, building_id: @room_building.building_id, floor: @room_building.floor, room_id: @room_building.room_id } }
    assert_redirected_to room_building_url(@room_building)
  end

  test "should destroy room_building" do
    assert_difference('RoomBuilding.count', -1) do
      delete room_building_url(@room_building)
    end

    assert_redirected_to room_buildings_url
  end
end
