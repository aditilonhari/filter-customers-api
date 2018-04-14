require 'test_helper'

class CustomerControllerTest < ActionDispatch::IntegrationTest

  def setup 
  	Rails.application.load_seed
  end	

  test "should get unfiltered customer list" do
    get "/api/v1/customers", xhr: true

   	assert_response :success
   	body = JSON.parse(@response.body)
   	assert_not_nil body
   	assert_equal body.count, Customer.all.count
  end

  test "should get filtered customer list according to search text" do

    get "/api/v1/customers", params: {'by_full_name'=>'lonhari'}, xhr: true

   	assert_response :success
   	body = JSON.parse(@response.body)
   	customer_list = JSON.parse(Customer.where("lastname LIKE ?", "lonhari").to_a.to_json)
   	assert_equal body, customer_list

   	assert_equal body[0]['lastname'], 'Lonhari' 
  end

  test "should get empty customer list if no match to search text" do
    get "/api/v1/customers", params: {'by_full_name'=>'random'}, xhr: true

   	assert_response :success
   	assert_empty JSON.parse(@response.body)
   	customer_list = Customer.where("(firstname || lastname) LIKE ?", "random")
   	assert_empty customer_list.to_a
  end

  test "should get filtered customer list with duplicates according to search text" do
  	get "/api/v1/customers", params: {'by_full_name'=>'aditi'}, xhr: true

   	assert_response :success
   	body = JSON.parse(@response.body)
   	customer_list = JSON.parse(Customer.where("firstname LIKE ?", "aditi").to_a.to_json)
   	assert_equal body, customer_list
   	body.each do |obj|
   		assert_equal obj['firstname'], 'Aditi'
   	end
  end

  test "should get filtered customer list according to company name" do
   get "/api/v1/customers", params: {'by_company'=>'Dolby'}, xhr: true

   	assert_response :success
   	body = JSON.parse(@response.body)
   	customer_list = JSON.parse(Customer.where("company_name LIKE ?", "dolby").to_a.to_json)
   	assert_equal body, customer_list
   	assert_equal body[0]['company_name'], 'Dolby'
  end

  test "should get filtered customer list according to search text and company" do
	get "/api/v1/customers", params: {'by_full_name'=>'neerad', 'by_company'=>'dolby'}, xhr: true

   	assert_response :success
   	body = JSON.parse(@response.body)
   	customer_list = JSON.parse(Customer.where("firstname LIKE ? AND company_name LIKE ?", "neerad", "dolby").to_a.to_json)
   	assert_equal body, customer_list
   	assert_equal body[0]['firstname'], 'Neerad'
   	assert_equal body[0]['company_name'], 'Dolby'
  end
end