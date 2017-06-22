require 'minitest/autorun'
require 'minitest/pride'
require './robot.rb'

class TestRobot < MiniTest::Test

  def test_that_foreign_robot_neeing_repairs_sent_to_station_1

    # arrange
    hal = Robot.new
    hal.needs_repairs = true
    hal.foreign_model = true

    # act
    send_to_station = hal.station

    # assert
    assert_equal(send_to_station, 1)

  end

  def test_that_vintage_robot_needing_repairs_sent_to_station_2
    skip
    # arrange

    # act

    # assert
  end

  def test_that_standard_robot_needing_repairs_sent_to_station_3
    skip
    # arrange

    # act

    # assert
  end

  def test_that_robot_in_good_condition_sent_to_station_4
    skip
    # arrange

    # act

    # assert
  end

  def test_prioritize_tasks_with_empty_todo_list_returns_negative_one
    skip
    # arrange

    # act

    # assert
  end

  def test_prioritize_tasks_with_todos_returns_max_todo_value
    skip
    # arrange

    # act

    # assert
  end

  def test_workday_on_day_off_returns_true
    skip
    # arrange

    # act

    # assert
  end

  def test_workday_not_day_off_returns_false
    skip
    # arrange

    # act

    # assert
  end

end
