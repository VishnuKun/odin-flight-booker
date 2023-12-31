require 'rails_helper'

RSpec.describe "passengers/index", type: :view do
  before(:each) do
    assign(:passengers, [
      Passenger.create!(
        name: "Name",
        email: "Email"
      ),
      Passenger.create!(
        name: "Name",
        email: "Email"
      )
    ])
  end

  it "renders a list of passengers" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Email".to_s), count: 2
  end
end
