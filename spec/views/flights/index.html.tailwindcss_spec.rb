require 'rails_helper'

RSpec.describe "flights/index", type: :view do
  before(:each) do
    assign(:flights, [
      Flight.create!(),
      Flight.create!()
    ])
  end

  it "renders a list of flights" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
  end
end
