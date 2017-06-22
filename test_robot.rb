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

    # arrange
    hal = Robot.new
    hal.needs_repairs = true
    hal.vintage_model = true

    # act
    send_to_station = hal.station

    # assert
    assert_equal(send_to_station, 2)

  end

  def test_that_standard_robot_needing_repairs_sent_to_station_3

    # arrange
    hal = Robot.new
    hal.needs_repairs = true

    # act
    send_to_station = hal.station

    # assert
    assert_equal(send_to_station, 3)

  end

  def test_that_robot_in_good_condition_sent_to_station_4

    # arrange
    hal = Robot.new

    # act
    send_to_station = hal.station

    # assert
    assert_equal(send_to_station, 4)

  end

  def test_prioritize_tasks_with_empty_todo_list_returns_negative_one

    # arrange
    hal = Robot.new

    # act
    do_stuff = hal.prioritize_tasks

    # assert
    assert_equal(do_stuff, -1)

  end

  def test_prioritize_tasks_with_todos_returns_max_todo_value

    # arrange
    hal = Robot.new
    hal.todos = [1]

    # act
    do_stuff = hal.prioritize_tasks

    # assert
    assert_equal(do_stuff, 1)

  end

  def test_workday_on_day_off_returns_true

    # arrange
    hal = Robot.new
    today = (hal.day_off == false)

    # act
    working = hal.workday?(today)

    # assert
    assert_equal(working, true)

  end

  def test_workday_not_day_off_returns_false

    # arrange
    hal = Robot.new
    today = (hal.day_off == true)

    # act
    working = hal.workday?(today)

    # assert
    assert_equal(working, true)

  end

end
