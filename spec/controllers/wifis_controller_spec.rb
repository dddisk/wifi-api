require 'rails_helper'


RSpec.describe WifisController, type: :controller do

  let(:params) {{address: "成田市三里塚字御料牧場1-1", distance: 0, limit: 0}}
  it "distance request is default" do
    get :search, params: params

    expect(params[:distance]).to eq(0.5)
  end

  it "limit request is default" do
    get :search, params: params
    expect(response).to be_success
    json = JSON.parse(response.body)

    expect(json.size).to eq(5)
  end
end
