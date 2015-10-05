require 'test_helper'

class RecordsControllerTest < ActionDispatch::IntegrationTest
# class RecordsControllerTest < ActionController::TestCase
  test "the truth" do
    assert true
  end

  test "#index" do
    get "/"
    assert_response 302
    follow_redirect!
    # get "/records"
    assert_response 200
    assert_equal Record.count, JSON.parse(response.body).count
  end

  test "fixture works" do
    record = records(:one)
    get "/records/#{record.id}", nil, headers

    response_body = JSON.parse(response.body)
    assert_equal record.title, response_body['title']
  end

  test "destroy : delete a record" do
    record = records(:one)
    assert_difference "Record.count", -1 do
      delete "/records/#{record.id}"

      assert_response 204
    end
  end

  test "create : add a record" do
    assert_difference "Record.count", 1 do
      record_hash = {title: "Hello World", date: "2015-06-26", amount: 19.00}
      post "/records", record: record_hash
    end
  end

  test "update : keep a record up to date" do
    record = records(:one)
    assert_no_difference "Record.count" do
      record_hash = {title: "Hello World", date: "2015-06-26", amount: 19.00}
      put "/records/#{record.id}", record: record_hash
    end
  end

end
