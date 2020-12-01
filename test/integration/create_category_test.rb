require 'test_helper'

class CreateCategoryTest <  ActionDispatch::IntegrationTest
	test "should go to new category form and create category" do
		get new_category_url
		assert_response :success
		
		post create_category_path(@category), params: { category: {title: 'sample', description:'this is text body'}}
		
		follow_redirect!
		assert_response :success
	end
end