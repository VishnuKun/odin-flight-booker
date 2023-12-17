require 'rails_helper'

RSpec.describe "flights/edit", type: :view do
  let(:flight) {
    Flight.create!()
  }

  before(:each) do
    assign(:flight, flight)
  end

  it "renders the edit flight form" do
    render

    assert_select "form[action=?][method=?]", flight_path(flight), "post" do
    end
  end
end
