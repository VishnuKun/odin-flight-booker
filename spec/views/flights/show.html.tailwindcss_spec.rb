require 'rails_helper'

RSpec.describe "flights/show", type: :view do
  before(:each) do
    assign(:flight, Flight.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
