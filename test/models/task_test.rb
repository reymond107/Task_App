require 'test_helper'

class TaskTest < ActiveSupport::TestCase
	test "task should not save withour name" do
		task = Task.new(name: 'sample name', description: 'sample activity', date:'11/12/2020')
		assert task.save
	end
end
