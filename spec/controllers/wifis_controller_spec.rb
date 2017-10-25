require 'rails_helper'
require 'spec_helper'

describe 'GET#search' do
  let(:params) {{address: "成田市三里塚字御料牧場1-1", distance: -4, limit: 0}}
  it "distance request is default" do
    get :search, params: params

    expect(params[:distance]).to eq(0.5)
  end

  it "limit request is default" do
    get :search, params: params

    expect(params[:limit]).to eq(5)
  end
end
