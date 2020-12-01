require 'test_helper'

class CreateTaskTest <  ActionDispatch::IntegrationTest
	test "should go to new task form and create task" do
		get new_task_url
		assert_response :success
		
		post create_task_path(@task), params: {task: {name: 'sample category', description: 'sample activity', date:'11/12/2020'}}
		
		follow_redirect!
		assert_response :success
	end
end