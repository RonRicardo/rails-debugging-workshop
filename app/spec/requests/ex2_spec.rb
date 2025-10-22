# frozen_string_literal: true
require "rails_helper"

RSpec.describe "EX2: Create project via JSON:API", type: :request do
  let(:payload) do
    { data: { type: "projects", attributes: { name: "X", owner_id: 2 } } }
  end

  it "creates and returns the resource when nested JSON:API params are permitted" do
    expect {
      post "/v1/projects",
        params: payload.to_json,
        headers: { "CONTENT_TYPE" => "application/vnd.api+json" }
    }.to change { Project.count }.by(1)

    expect(response).to have_http_status(:created)
    body = JSON.parse(response.body)
    expect(body.dig("data", "id")).to be_present
    expect(body.dig("data", "attributes", "name")).to eq("X")
    expect(body.dig("data", "attributes", "status")).to eq("active")
  end
end
