require "rails_helper"

RSpec.describe "Api::V1::Todo", type: :request do
  describe "GET api/v1/todo" do
    subject { get(api_v1_todo_path) }

    it "正常にレスポンスが返る" do
      subject
      res = JSON.parse(response.body)
      expect(res["message"]).to eq "Success Todo Check!"
      expect(response).to have_http_status(:success)
    end
  end
end