# frozen_string_literal: true
require "rails_helper"

RSpec.describe "EX3: Paginated index", type: :request do
  before do
    count = Project.count
    if count < 15
      (15 - count).times { |i| Project.create!(name: "Auto #{i}", status: "active") }
    end
  end

  it "respects page[number] and page[size] and exposes next link" do
    get "/v1/projects", params: { page: { number: 1, size: 5 } }
    expect(response).to have_http_status(:ok)
    page1 = JSON.parse(response.body)["data"].map { |d| d["id"].to_i }

    get "/v1/projects", params: { page: { number: 2, size: 5 } }
    expect(response).to have_http_status(:ok)
    page2 = JSON.parse(response.body)["data"].map { |d| d["id"].to_i }

    expect(page1).not_to eq(page2)
    expect(response.headers.keys).to include("Link").or include("link")
  end
end
