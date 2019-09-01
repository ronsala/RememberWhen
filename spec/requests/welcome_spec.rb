require 'rails_helper'

RSpec.describe "Welcome request", type: :request do
  it "returns http success" do
    get '/'
    expect(response).to have_http_status(:success)
  end
end