# frozen_string_literal: true
require "rails_helper"

RSpec.describe "EX1: Buggy test for project creation", type: :request do
  let(:payload) do
    { data: { type: "projects", attributes: { name: "Y", status: "active" } } }
  end

  it "creates and returns the resource" do
    expect {
      post "/v1/projects",
        params: payload.to_json,
        headers: { "CONTENT_TYPE" => "application/vnd.api+json" }
    }.to change { Project.count }.by(1)

    expect(response).to have_http_status(:created)
    body = JSON.parse(response.body)
  expect(body.dig("data", "id")).to be_present
  expect(body.dig("data", "attributes", "name")).to match_array(["Y"])
  expect(body.dig("data", "attributes", "status")).to eq("active")
  end
end
